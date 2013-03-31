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
  generic ( coreResetPC : std_logic_vector(31 downto 0) := x"00000000" );
		port ( 
			-- clock signal
			CLK							:		in	std_logic;
			-- reset for processor
			nReset					:		in	std_logic;
			-- halt for processor
			halt						:		out	std_logic;
			
			-- coherence controller
      dCacheRead		: out  std_logic;
   	  dCacheWrite	:	out std_logic;
      dCacheAddr		: out  std_logic_vector (31 downto 0);
      dCacheDataWrite	: out	std_logic_vector (31 downto 0);

      -- snoop signals
      cocoSnoopFlag : in std_logic;
      cocoSnoopAddr : in std_logic_vector(31 downto 0);
      cocoFinishedSnooping : out std_logic;
      cocoSnoopHit  : out std_logic;
      cocoSnoopData : out std_logic_vector(31 downto 0);

      -- MSI protocol     
      invalidateAddr : in std_logic_vector(31 downto 0);
      invalidateAddrFlag : in std_logic;
        
      -- invalidate link register -- goes from one core to another
      outInvalidateLinkRegister : out std_logic;
      outInvalidateLinkRegisterAddr : out std_logic_vector(31 downto 0);
      inInvalidateLinkRegister : in std_logic;
      inInvalidateLinkRegisterAddr : in std_logic_vector(31 downto 0);

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
  
  ---------- CORE0 COHERENCY SIGNALS -----------------
  			-- coherence controller
  signal core0_dCacheRead		: std_logic;
  signal core0_dCacheWrite	:	std_logic;
  signal core0_dCacheAddr		: std_logic_vector (31 downto 0);
  signal core0_dCacheDataWrite	: std_logic_vector (31 downto 0);

      -- snoop signals
  signal core0_cocoSnoopFlag : std_logic;
  signal core0_cocoSnoopAddr : std_logic_vector(31 downto 0);
  signal core0_cocoFinishedSnooping : std_logic;
  signal core0_cocoSnoopHit  : std_logic;
  signal core0_cocoSnoopData : std_logic_vector(31 downto 0);

      -- MSI protocol     
  signal core0_invalidateAddr : std_logic_vector(31 downto 0);
  signal core0_invalidateAddrFlag : std_logic;
        
      -- invalidate link register -- goes from one core to another
  signal core0_outInvalidateLinkRegister : std_logic;
  signal core0_outInvalidateLinkRegisterAddr : std_logic_vector(31 downto 0);

  ---------- CORE1 COHERENCY SIGNALS -----------------
  			-- coherence controller
  signal core1_dCacheRead		: std_logic;
  signal core1_dCacheWrite	:	std_logic;
  signal core1_dCacheAddr		: std_logic_vector (31 downto 0);
  signal core1_dCacheDataWrite	: std_logic_vector (31 downto 0);

      -- snoop signals
  signal core1_cocoSnoopFlag : std_logic;
  signal core1_cocoSnoopAddr : std_logic_vector(31 downto 0);
  signal core1_cocoFinishedSnooping : std_logic;
  signal core1_cocoSnoopHit  : std_logic;
  signal core1_cocoSnoopData : std_logic_vector(31 downto 0);

      -- MSI protocol     
  signal core1_invalidateAddr : std_logic_vector(31 downto 0);
  signal core1_invalidateAddrFlag : std_logic;
        
      -- invalidate link register -- goes from one core to another
  signal core1_outInvalidateLinkRegister : std_logic;
  signal core1_outInvalidateLinkRegisterAddr : std_logic_vector(31 downto 0);

 begin
   MyAwesomeCore0: core
   generic map( coreResetPC => x"00000000")
		port map( 
			-- clock signal
			CLK,
			-- reset for processor
			nReset,
			-- halt for processor
			core0_halt,
			
			-- coherence controller
      core0_dCacheRead,
      core0_dCacheWrite,
      core0_dCacheAddr,
      core0_dCacheDataWrite,

      -- snoop signals
      core0_cocoSnoopFlag,
      core0_cocoSnoopAddr,
      core0_cocoFinishedSnooping,
      core0_cocoSnoopHit,
      core0_cocoSnoopData,

      -- MSI protocol     
      core0_invalidateAddr,
      core0_invalidateAddrFlag,
        
      -- invalidate link register -- goes from one core to another
      core0_outInvalidateLinkRegister,
      core0_outInvalidateLinkRegisterAddr,
      core1_outInvalidateLinkRegister,
      core1_outInvalidateLinkRegisterAddr,

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
   generic map( coreResetPC => x"00000200")
		port map( 
			-- clock signal
			CLK,
			-- reset for processor
			nReset,
			-- halt for processor
			core1_halt,
			
			-- coherence controller
      core1_dCacheRead,
      core1_dCacheWrite,
      core1_dCacheAddr,
      core1_dCacheDataWrite,

      -- snoop signals
      core1_cocoSnoopFlag,
      core1_cocoSnoopAddr,
      core1_cocoFinishedSnooping,
      core1_cocoSnoopHit,
      core1_cocoSnoopData,

      -- MSI protocol     
      core1_invalidateAddr,
      core1_invalidateAddrFlag,
        
      -- invalidate link register -- goes from one core to another
      core1_outInvalidateLinkRegister,
      core1_outInvalidateLinkRegisterAddr,
      core0_outInvalidateLinkRegister,
      core0_outInvalidateLinkRegisterAddr,
         	  
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
    
        			-- coherence controller
      core0_dCacheRead,
	  	 core0_dCacheWrite,
      core0_dCacheAddr,
	  	 core0_dCacheDataWrite,

      -- snoop signals
	  	 core0_cocoSnoopFlag,
	  	 core0_cocoSnoopAddr,
	  	 core0_cocoFinishedSnooping,
	  	 core0_cocoSnoopHit,
	  	 core0_cocoSnoopData,

      -- MSI protocol     
	  	 core0_invalidateAddr,
	  	 core0_invalidateAddrFlag,

    			-- coherence controller
      core1_dCacheRead,
	  	 core1_dCacheWrite,
      core1_dCacheAddr,
	  	 core1_dCacheDataWrite,

      -- snoop signals
	  	 core1_cocoSnoopFlag,
	  	 core1_cocoSnoopAddr,
	  	 core1_cocoFinishedSnooping,
	  	 core1_cocoSnoopHit,
	  	 core1_cocoSnoopData,

      -- MSI protocol     
	  	 core1_invalidateAddr,
	  	 core1_invalidateAddrFlag,

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
   
    ramAddr     <= arbiterMemAddr;
    ramData     <= arbiterMemDataWrite;
    ramWen      <= arbiterMemWrite;
    ramRen      <= arbiterMemRead;
 
--    core0_ramQ <= ramQ;        
--    core0_ramState <= ramState;
      
    halt <= core0_halt and core1_halt;
end architecture;
