library ieee;
use ieee.std_logic_1164.all;

entity processorArbiter is
  port(
    clk : in std_logic;
    rst_n : in std_logic;
  
     --- Core 0 iCache
    c0_aiMemWait : out  std_logic;                       -- arbitrator side
    c0_aiMemRead : in std_logic;                       -- arbitrator side
    c0_aiMemAddr : in std_logic_vector (31 downto 0);  -- arbitrator side
    c0_aiMemData : out  std_logic_vector (31 downto 0);   -- arbitrator side

     --- Core 1 iCache
    c1_aiMemWait : out  std_logic;                       -- arbitrator side
    c1_aiMemRead : in std_logic;                       -- arbitrator side
    c1_aiMemAddr : in std_logic_vector (31 downto 0);  -- arbitrator side
    c1_aiMemData : out  std_logic_vector (31 downto 0);   -- arbitrator side

    --- dCache coherencyController signals
    cController_adMemRead      : in std_logic;                       -- arbitrator side
    cController_adMemWrite     : in std_logic;                       -- arbitrator side
    cController_adMemWait      : out std_logic;                       -- arbitrator side
    cController_adMemAddr      : in std_logic_vector (31 downto 0);  -- arbitrator side
    cController_adMemDataRead  : out  std_logic_vector (31 downto 0);  -- arbitrator side
    cController_adMemDataWrite : in std_logic_vector (31 downto 0);   -- arbitrator side
    
    --- RAM signals
                address         : out std_logic_vector (15 DOWNTO 0);
                data            : out std_logic_vector (31 DOWNTO 0);
                wren            : out std_logic ;
                rden            : out std_logic ;
                latency_override: out std_logic ; 
                q               : in std_logic_vector (31 DOWNTO 0);
                memstate        : in std_logic_vector (1 DOWNTO 0)

    );

end processorArbiter;

architecture arch_processorArbiter of processorArbiter is
  type state_type is (IDLE, FETCH_INSTRUCTION_BUSY, FETCH_INSTRUCTION_ACCESS, LOAD_WORD_BUSY, LOAD_WORD_ACCESS, STORE_WORD_BUSY, STORE_WORD_ACCESS);
  signal state, nextState : state_type;
begin
  
  
arbiter_state: process(CLK, rst_n, c0_aiMemRead, c0_aiMemAddr, c1_aiMemRead, c1_aiMemAddr, cController_adMemRead, cController_adMemWrite, cController_adMemAddr, cController_adMemDataWrite)
begin
	if (rst_n = '0') then
    state <= IDLE;
	elsif rising_edge(CLK) then
    nextState <= state;
    
    case state is
      when IDLE =>
            if(cController_adMemRead = '1') then
              state <= LOAD_WORD_BUSY;
              nextState <= LOAD_WORD_BUSY;
            elsif(cController_adMemWrite = '1') then
              state <= STORE_WORD_BUSY;
              nextState <= STORE_WORD_BUSY;
            elsif(c0_aiMemRead = '1') then
              state <= FETCH_INSTRUCTION_BUSY;
              nextState <= FETCH_INSTRUCTION_BUSY;
            elsif(c1_aiMemRead = '1') then
              state <= FETCH_INSTRUCTION_BUSY;
              nextState <= FETCH_INSTRUCTION_BUSY;

            end if;
            
        when LOAD_WORD_BUSY =>
          if(memstate = "10") then
            state <= IDLE;
          end if;
                    
        when STORE_WORD_BUSY =>
          if(memstate = "10") then
            state <= IDLE;
          end if;

        when FETCH_INSTRUCTION_BUSY =>

          if(memstate = "10") then
            state <= IDLE;

          end if;
          
      when OTHERS =>
        state <= IDLE;
        
    end case;   
  end if;
end process;

    c0_aiMemData <= q when (state = FETCH_INSTRUCTION_BUSY) else x"00000000";
    c0_aiMemWait <= '0' when ( (state = FETCH_INSTRUCTION_BUSY) and memstate = "10")  else '1' when ((state = LOAD_WORD_BUSY) or (state = STORE_WORD_BUSY)) else '0' when ((c0_aiMemRead = '0') and (c1_aiMemRead = '0')) else '1' when ((state = IDLE) or ((state = FETCH_INSTRUCTION_BUSY) and memstate /= "10")) else '0';
      
    c1_aiMemData <= q when (state = FETCH_INSTRUCTION_BUSY) else x"00000000";
    c1_aiMemWait <= '0' when ( (state = FETCH_INSTRUCTION_BUSY) and memstate = "10")  else '1' when ((state = LOAD_WORD_BUSY) or (state = STORE_WORD_BUSY)) else '0' when ((c0_aiMemRead = '0') and (c1_aiMemRead = '0')) else '1' when ((state = IDLE) or ((state = FETCH_INSTRUCTION_BUSY) and memstate /= "10")) else '0';
    
    cController_adMemWait <= '1' when (((state = IDLE) and ((cController_adMemRead = '1') or (cController_adMemWrite = '1'))) or (state = FETCH_INSTRUCTION_BUSY) or ( (state = LOAD_WORD_BUSY) and (memstate /= "10")) or ( (state = STORE_WORD_BUSY) and (memstate /= "10") ) ) else '0';
    cController_adMemDataRead <= q when (state = LOAD_WORD_BUSY) else x"00000000";
      
    address <= cController_adMemAddr(15 downto 0) when (((state = IDLE) and ((cController_adMemRead = '1') or (cController_adMemWrite = '1'))) or (state = LOAD_WORD_BUSY) or (state = STORE_WORD_BUSY)) 
               else c0_aiMemAddr(15 downto 0) when (((state = IDLE) and (c0_aiMemRead = '1')) or ((state = FETCH_INSTRUCTION_BUSY) and (c0_aiMemRead = '1')))   
               else c1_aiMemAddr(15 downto 0);
    
    data <= cController_adMemDataWrite;
    
    wren <= '1' when ((state = STORE_WORD_BUSY) or ((state = IDLE) and (cController_adMemWrite = '1'))) else '0';
    
    rden <= '1' when ((state = FETCH_INSTRUCTION_BUSY) or (state = LOAD_WORD_BUSY) or ((state = IDLE) and ((cController_adMemRead = '1') or (c0_aiMemRead = '1') or (c1_aiMemRead = '1')))) else '0';
    
    latency_override <= '0';

end arch_processorArbiter;
