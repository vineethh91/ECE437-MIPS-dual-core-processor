LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity mycpu is
		port ( 
			-- clock signal
			CLK							:		in	std_logic;
			-- reset for processor
			nReset					:		in	std_logic;
			-- halt for processor
			halt						:		out	std_logic;
            ramAddr : out std_logic_vector(15 downto 0);
            ramData : out std_logic_vector(31 downto 0);
            ramWen  : out std_logic;
            ramRen  : out std_logic;
            ramQ    : in  std_logic_vector(31 downto 0);
            ramState : in std_logic_vector(1 downto 0)
		);
end mycpu;

architecture arch_mycpu of mycpu is
  component core
		port ( 
			-- clock signal
			CLK							:		in	std_logic;
			-- reset for processor
			nReset					:		in	std_logic;
			-- halt for processor
			halt						:		out	std_logic;
            ramAddr : out std_logic_vector(15 downto 0);
            ramData : out std_logic_vector(31 downto 0);
            ramWen  : out std_logic;
            ramRen  : out std_logic;
            ramdMemRead : out std_logic;
            ramdMemWrite : out std_logic;
            ramiMemRead : out std_logic;
            ramQ    : in  std_logic_vector(31 downto 0);
            ramState : in std_logic_vector(1 downto 0)
		);
  end component;

  component coherencyController
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
 end component;
 
  --------------- MyAwesomeCore0 signals ------------------------
  signal core0_halt : std_logic;
  signal core0_ramAddr : std_logic_vector(15 downto 0);
  signal core0_ramData : std_logic_vector(31 downto 0);
  signal core0_ramWen  : std_logic;
  signal core0_ramRen  : std_logic;
  signal core0_ramdMemRead : std_logic;
  signal core0_ramdMemWrite : std_logic;
  signal core0_ramiMemRead : std_logic;
  signal core0_ramQ    : std_logic_vector(31 downto 0);
  signal core0_ramState :std_logic_vector(1 downto 0);

  --------------- MyAwesomeCore1 signals ------------------------
  signal core1_halt : std_logic;
  signal core1_ramAddr : std_logic_vector(15 downto 0);
  signal core1_ramData : std_logic_vector(31 downto 0);
  signal core1_ramWen  : std_logic;
  signal core1_ramRen  : std_logic;
  signal core1_ramdMemRead : std_logic;
  signal core1_ramdMemWrite : std_logic;
  signal core1_ramiMemRead : std_logic;
  signal core1_ramQ    : std_logic_vector(31 downto 0);
  signal core1_ramState :std_logic_vector(1 downto 0);

  -------------- Arbiter Signals -------------------------
  signal arbiterMemRead : std_logic;
  signal arbiterMemWrite : std_logic;
  signal arbiterMemAddr: std_logic_vector(15 downto 0);
  signal arbiterMemDataWrite : std_logic_vector(31 downto 0);
  
 begin
   MyAwesomeCore0: core
		port map( 
			-- clock signal
			CLK,
			-- reset for processor
			nReset,
			-- halt for processor
			core0_halt,
      core0_ramAddr,
      core0_ramData,
      core0_ramWen,
      core0_ramRen,
      core0_ramdMemRead,
      core0_ramdMemWrite,
      core0_ramiMemRead,
      core0_ramQ,
      core0_ramState
		);

   MyAwesomeCore1: core
		port map( 
			-- clock signal
			CLK,
			-- reset for processor
			nReset,
			-- halt for processor
			core1_halt,
      core1_ramAddr,
      core1_ramData,
      core1_ramWen,
      core1_ramRen,
      core1_ramdMemRead,
      core1_ramdMemWrite,
      core1_ramiMemRead,
      core1_ramQ,
      core1_ramState
		);  
   cControllerBlock: coherencyController
   port map(
    CLK,
    nReset,
    
    -- Arbiter signals
    arbiterMemRead,
    arbiterMemWrite,
    arbiterMemAddr,
    ramQ,
    arbiterMemDataWrite,
    ramState,
    
    -- Core0 signals
    core0_ramAddr,
    core0_ramData,
    core0_ramWen,
    core0_ramRen,
    core0_ramdMemRead,
    core0_ramdMemWrite,
    core0_ramiMemRead,
    core0_ramQ,
    core0_ramState,

    -- Core1 signals
    x"1234",
    x"12345678",
    '0',
    '0',
    '0',
    '0',
    '0',
    core0_ramQ,
    core0_ramState
   );
   
    ramAddr     <= arbiterMemAddr;
    ramData     <= arbiterMemDataWrite;
    ramWen      <= arbiterMemWrite;
    ramRen      <= arbiterMemRead;
 
    core0_ramQ <= ramQ;        
    core0_ramState <= ramState;
      
    halt <= core0_halt;
end architecture;
