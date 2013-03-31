-- CC template
library ieee;
use ieee.std_logic_1164.all;

entity coherencyController is 
  port (
    clk             : in std_logic;
    nReset          : in std_logic;
    			-- coherence controller
      c0_dCacheRead		: in  std_logic;
	  	 c0_dCacheWrite	:	in std_logic;
      c0_dCacheAddr		: in  std_logic_vector (31 downto 0);
	  	 c0_dCacheDataWrite	: in	std_logic_vector (31 downto 0);

      -- snoop signals
	  	 c0_cocoSnoopFlag : out std_logic;
	  	 c0_cocoSnoopAddr : out std_logic_vector(31 downto 0);
	  	 c0_cocoFinishedSnooping : in std_logic;
	  	 c0_cocoSnoopHit  : in std_logic;
	  	 c0_cocoSnoopData : in std_logic_vector(31 downto 0);

      -- MSI protocol     
	  	 c0_invalidateAddr : out std_logic_vector(31 downto 0);
	  	 c0_invalidateAddrFlag : out std_logic;

    			-- coherence controller
      c1_dCacheRead		: in  std_logic;
	  	 c1_dCacheWrite	:	in std_logic;
      c1_dCacheAddr		: in  std_logic_vector (31 downto 0);
	  	 c1_dCacheDataWrite	: in	std_logic_vector (31 downto 0);

      -- snoop signals
	  	 c1_cocoSnoopFlag : out std_logic;
	  	 c1_cocoSnoopAddr : out std_logic_vector(31 downto 0);
	  	 c1_cocoFinishedSnooping : in std_logic;
	  	 c1_cocoSnoopHit  : in std_logic;
	  	 c1_cocoSnoopData : in std_logic_vector(31 downto 0);

      -- MSI protocol     
	  	 c1_invalidateAddr : out std_logic_vector(31 downto 0);
	  	 c1_invalidateAddrFlag : out std_logic;
  
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
  type state_type is (IDLE, CORE0_ARBITER_READ, CORE0_ARBITER_WRITE, CORE1_ARBITER_READ, CORE1_ARBITER_WRITE, CORE0_ACCESS, CORE1_ACCESS);
  signal state, nextState, prevState, nextPrevState : state_type;
begin

cController_state: process(CLK, nReset)
begin
	if (nReset = '0') then
    state <= IDLE;
    prevState <= CORE1_ACCESS;
  elsif falling_edge(CLK) then
    state <= nextState;
    prevState <= nextPrevState;
	end if;
end process cController_state;

cController_ns: process(CLK, nReset, state, prevState, c0ramAddr, c0ramData, c0ramWen, c0ramRen, c0ramdMemRead, c0ramdMemWrite, c0ramiMemRead, c1ramAddr, c1ramData, c1ramWen, c1ramRen, c1ramdMemRead, c1ramdMemWrite, c1ramiMemRead)
begin
  nextState <= state;
  nextPrevState <= prevState;
  case state is
    when IDLE =>
      if((c0ramdMemRead = '1') and (prevState = CORE1_ACCESS))then
        nextState <= CORE0_ARBITER_READ;
      elsif((c0ramdMemWrite = '1') and (prevState = CORE1_ACCESS))then
        nextState <= CORE0_ARBITER_WRITE;
      elsif((c1ramdMemRead = '1') and (prevState = CORE0_ACCESS))then
        nextState <= CORE1_ARBITER_READ;
      elsif((c1ramdMemWrite = '1') and (prevState = CORE0_ACCESS))then
        nextState <= CORE1_ARBITER_WRITE;
      elsif((c0ramiMemRead = '1') and (prevState = CORE1_ACCESS))then
        nextState <= CORE0_ARBITER_READ;
      elsif((c1ramiMemRead = '1') and (prevState = CORE0_ACCESS))then
        nextState <= CORE1_ARBITER_READ;
      else
        if(prevState <= CORE0_ACCESS) then
          nextPrevState <= CORE1_ACCESS;
        else
          nextPrevState <= CORE0_ACCESS;
        end if;
      end if;
      
    when CORE0_ARBITER_READ =>
      nextPrevState <= CORE0_ACCESS;
      if((arb_MemState = "10") or (arb_MemState = "00")) then --  because during dumping memstate goes to 00 which is IDLE
        nextState <= IDLE;
      end if;
      
    when CORE0_ARBITER_WRITE =>
      nextPrevState <= CORE0_ACCESS;
      if(arb_MemState = "10") then
        nextState <= IDLE;
      end if;
      
    when CORE1_ARBITER_READ =>
      nextPrevState <= CORE1_ACCESS;
      if((arb_MemState = "10") or (arb_MemState = "00")) then --  because during dumping memstate goes to 00 which is IDLE
        nextState <= IDLE;
      end if;
    
    when CORE1_ARBITER_WRITE =>
      nextPrevState <= CORE1_ACCESS;
      if((arb_MemState = "10") or (arb_MemState = "00")) then --  because during dumping memstate goes to 00 which is IDLE
        nextState <= IDLE;
      end if;
            
    when OTHERS => 
      nextState <= IDLE;
  end case;  
end process cController_ns;

   -- Arbiter signals
    arb_MemRead <= '1' when (((state = IDLE) and (prevState = CORE1_ACCESS) and ((c0ramdMemRead = '1') or (c0ramiMemRead = '1')))  or ((state = CORE0_ARBITER_READ) and ((c0ramdMemRead = '1') or (c0ramiMemRead = '1'))))
                    else '1' when (((state = IDLE) and (prevState = CORE0_ACCESS) and ((c1ramdMemRead = '1') or (c1ramiMemRead = '1')))  or ((state = CORE1_ARBITER_READ) and ((c1ramdMemRead = '1') or (c1ramiMemRead = '1'))))
                    else '0';
                      
    arb_MemWrite <= '1' when (((state = IDLE) and (prevState = CORE1_ACCESS) and (c0ramdMemWrite = '1')) or ((state = CORE0_ARBITER_WRITE) and (c0ramdMemWrite = '1')))
                     else '1' when (((state = IDLE) and (prevState = CORE0_ACCESS) and (c1ramdMemWrite = '1')) or ((state = CORE1_ARBITER_WRITE) and (c1ramdMemWrite = '1')))
                     else '0';
                     
    arb_MemAddr <= c0ramAddr when (((state = IDLE) and (prevState = CORE1_ACCESS) and ((c0ramdMemRead = '1') or (c0ramdMemWrite = '1'))) or (state = CORE0_ARBITER_READ) or (state = CORE0_ARBITER_WRITE)) 
                    else c1ramAddr when (((state = IDLE) and (prevState = CORE0_ACCESS) and ((c1ramdMemRead = '1') or (c1ramdMemWrite = '1'))) or (state = CORE1_ARBITER_READ) or (state = CORE1_ARBITER_WRITE)) 
                    else c0ramAddr when (c0ramiMemRead = '1')
                    else c1ramAddr when (c1ramiMemRead = '1')
                    else x"BAD3";
                      
    arb_MemDataWrite <= c0ramData when (((state = IDLE) and (prevState = CORE1_ACCESS) and (c0ramdMemWrite = '1')) or (state = CORE0_ARBITER_READ) or (state = CORE0_ARBITER_WRITE))
                         else c1ramData when  (((state = IDLE) and (prevState = CORE0_ACCESS) and (c1ramdMemWrite = '1')) or (state = CORE1_ARBITER_READ) or (state = CORE1_ARBITER_WRITE))
                         else x"BAD4BAD4";
    
    -- signals to both dcaches
    c0ramQ <= arb_MemDataRead;
    c1ramQ <= arb_MemDataRead;
    c0ramState <= arb_MemState when ((state = CORE0_ARBITER_READ) or (state = CORE0_ARBITER_WRITE)) else "01";
    c1ramState <= arb_MemState when ((state = CORE1_ARBITER_READ) or (state = CORE1_ARBITER_WRITE)) else "01";
    
    --dMemSnoopAddrC1 <= x"00000000";
    --dMemSnoopAddrC2 <= x"00000000";

end arch_coherencyController;
