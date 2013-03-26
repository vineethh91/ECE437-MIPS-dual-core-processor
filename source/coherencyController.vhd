-- CC template
library ieee;
use ieee.std_logic_1164.all;

entity coherencyController is 
  port (
    clk             : in std_logic;
    nReset          : in std_logic;
    
    -- Arbiter signals
    arb_MemRead      : out std_logic;
    arb_MemWrite     : out std_logic;
    arb_MemAddr      : out std_logic_vector (15 downto 0);
    arb_MemDataRead  : in std_logic_vector (31 downto 0);
    arb_MemDataWrite : out std_logic_vector (31 downto 0);
    arb_MemState  : in std_logic_vector (1 downto 0);
    
    -- Core0 signals
    c0ramAddr : in std_logic_vector(15 downto 0);
    c0ramData : in std_logic_vector(31 downto 0);
    c0ramWen  : in std_logic;
    c0ramRen  : in std_logic;
    c0ramdMemRead : in std_logic;
    c0ramdMemWrite : in std_logic;
    c0ramiMemRead : in std_logic;
    c0ramQ    : out  std_logic_vector(31 downto 0);
    c0ramState : out std_logic_vector(1 downto 0);

    -- Core1 signals
    c1ramAddr : in std_logic_vector(15 downto 0);
    c1ramData : in std_logic_vector(31 downto 0);
    c1ramWen  : in std_logic;
    c1ramRen  : in std_logic;
    c1ramdMemRead : in std_logic;
    c1ramdMemWrite : in std_logic;
    c1ramiMemRead : in std_logic;
    c1ramQ    : out  std_logic_vector(31 downto 0);
    c1ramState : out std_logic_vector(1 downto 0)
  );
 end coherencyController;

architecture arch_coherencyController of coherencyController is
  type state_type is (IDLE, CORE0_ARBITER_READ, CORE0_ARBITER_WRITE, CORE1_ARBITER_ACCESS);
  signal state, nextState : state_type;
begin

cController_state: process(CLK, nReset)
begin
	if (nReset = '0') then
    state <= IDLE;
	elsif falling_edge(CLK) then
    state <= nextState;
	end if;
end process cController_state;

cController_ns: process(CLK, nReset, c0ramAddr, c0ramData, c0ramWen, c0ramRen, c0ramdMemRead, c0ramdMemWrite, c0ramiMemRead, c1ramAddr, c1ramData, c1ramWen, c1ramRen, c1ramdMemRead, c1ramdMemWrite, c1ramiMemRead)
begin
  nextState <= state;
  
  case state is
    when IDLE =>
      if(c0ramdMemRead = '1') then
        nextState <= CORE0_ARBITER_READ;
      elsif(c0ramdMemWrite = '1') then
        nextState <= CORE0_ARBITER_WRITE;
      elsif((c1ramdMemRead = '1') or (c1ramdMemWrite = '1')) then
        nextState <= CORE1_ARBITER_ACCESS;
      elsif(c0ramiMemRead = '1') then
        nextState <= CORE0_ARBITER_READ;
      elsif(c1ramiMemRead = '1') then
        nextState <= CORE1_ARBITER_ACCESS;
      end if;
      
    when CORE0_ARBITER_READ =>
      if((arb_MemState = "10") or (arb_MemState = "00")) then
        nextState <= IDLE;
      end if;
      
    when CORE0_ARBITER_WRITE =>
      if(arb_MemState = "10") then
        nextState <= IDLE;
      end if;
      
    when CORE1_ARBITER_ACCESS =>
      if(arb_MemState = "10") then
        nextState <= IDLE;
      end if;
            
    when OTHERS => 
      nextState <= IDLE;
  end case;  
end process cController_ns;

   -- Arbiter signals
    arb_MemRead <= '1' when (((state = IDLE) and ((c0ramdMemRead = '1') or (c0ramiMemRead = '1')))  or ((state = CORE0_ARBITER_READ) and ((c0ramdMemRead = '1') or (c0ramiMemRead = '1'))))
                    else '1' when (((state = IDLE) and ((c1ramdMemRead = '1') or (c1ramiMemRead = '1')))  or ((state = CORE1_ARBITER_ACCESS) and ((c1ramdMemRead = '1') or (c1ramiMemRead = '1'))))
                    else '0';
                      
    arb_MemWrite <= '1' when (((state = IDLE) and (c0ramdMemWrite = '1')) or ((state = CORE0_ARBITER_WRITE) and (c0ramdMemWrite = '1')))
                     else '1' when (((state = IDLE) and (c1ramdMemWrite = '1')) or ((state = CORE1_ARBITER_ACCESS) and (c0ramdMemWrite = '1')))
                     else '0';
                     
    arb_MemAddr <= c0ramAddr when (((state = IDLE) and ((c0ramdMemRead = '1') or (c0ramdMemWrite = '1'))) or (state = CORE0_ARBITER_READ) or (state = CORE0_ARBITER_WRITE)) 
                    else c1ramAddr when (((state = IDLE) and ((c1ramdMemRead = '1') or (c1ramdMemWrite = '1'))) or (state = CORE1_ARBITER_ACCESS))
                    else c0ramAddr when (c0ramiMemRead = '1')
                    else c1ramAddr when (c1ramiMemRead = '1')
                    else x"BAD3";
                      
    arb_MemDataWrite <= c0ramData when (((state = IDLE) and (c0ramdMemWrite = '1')) or (state = CORE0_ARBITER_READ) or (state = CORE0_ARBITER_WRITE))
                         else c1ramData when  (((state = IDLE) and (c1ramdMemWrite = '1')) or (state = CORE1_ARBITER_ACCESS))
                         else x"BAD4BAD4";
    
   -- signals to both dcaches
    --c0ramdMemWait <= arb_MemWait;
    --c1ramdMemWait <= arb_MemWait;
    c0ramQ <= arb_MemDataRead;
    c1ramQ <= arb_MemDataRead;
    c0ramState <= arb_MemState;
    c1ramState <= arb_MemState;
    
    --dMemSnoopAddrC1 <= x"00000000";
    --dMemSnoopAddrC2 <= x"00000000";

end arch_coherencyController;
