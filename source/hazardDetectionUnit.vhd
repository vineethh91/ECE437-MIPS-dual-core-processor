library ieee;
use ieee.std_logic_1164.all;

entity hazardDetectionUnit is
  port(
      EX_Rt : in std_logic_vector(4 downto 0);
      ID_Rs : in std_logic_vector(4 downto 0);
      ID_Rt : in std_logic_vector(4 downto 0);
      EX_memRead : in std_logic;
      
      EX_LLSCflag : in std_logic;
      EX_memWrite : in std_logic;
      ID_memWrite : in std_logic;
         
      EX_instruction : in std_logic_vector(31 downto 0);
      ID_instruction : in std_logic_vector(31 downto 0);
         
      IFID_writeEnable : out std_logic;
      IDEX_writeEnable : out std_logic;
      EXMEM_writeEnable : out std_logic;
      MEMWB_writeEnable : out std_logic;     -- to the pipeline registers

      pcWriteEnable : out std_logic;         -- go straight to the pcWriteEnableControl block, add code there to handle this case
      disableControlSignals : out std_logic  -- add code in controller.vhd to zero everything out if this is high
    );

end hazardDetectionUnit;

architecture arch_hazardDetectionUnit of hazardDetectionUnit is
begin
--  IFID_writeEnable <= '0' when ((EX_memRead = '1') and ((EX_Rt = ID_Rs) or (EX_Rt = ID_Rt))) 
--                      --else '0' when ((EX_memWrite = '1') and (EX_LLSCflag = '1') and (ID_memWrite = '1') and (EX_Rt = ID_Rt))
--                      else '1';
  IDEX_writeEnable <= '1';--'0' when ((EX_memRead = '1') and ((EX_Rt = ID_Rs) or (EX_Rt = ID_Rt))) else '1';
  EXMEM_writeEnable <= '1';
  MEMWB_writeEnable <= '1';

  
--  pcWriteEnable <= '0' when ((EX_memRead = '1') and ((EX_Rt = ID_Rs) or (EX_Rt = ID_Rt))) 
--                  -- else '0' when ((EX_LLSCflag = '1') and (ID_memWrite = '1') and (EX_Rt = ID_Rt))
--                   else '1';
--  
--  disableControlSignals <= '1' when ((EX_memRead = '1') and ((EX_Rt = ID_Rs) or (EX_Rt = ID_Rt)))  -- inject NOP in case theres a LW followed by a use
--                        --   else '1' when ((EX_memWrite = '1') and (EX_LLSCflag = '1') and (ID_memWrite = '1') and (EX_Rt = ID_Rt)) -- inject NOP in case theres a SC followed by a SW
--                           else '0'; 
  hazardProcess: process(EX_Rt, ID_Rs, ID_Rt, EX_memRead, EX_LLSCflag, EX_memWrite, ID_memWrite)
  begin
    if ((EX_memRead = '1') and ((EX_Rt = ID_Rs) or (EX_Rt = ID_Rt))) then
      IFID_writeEnable <= '0';
      pcWriteEnable <= '0';
      disableControlSignals <= '1';
    elsif((EX_memWrite = '1') and (EX_LLSCflag = '1') and ((EX_Rt = ID_Rt) or (EX_Rt = ID_Rs))) then-- and (EX_instruction /= ID_instruction)) then
      IFID_writeEnable <= '0';
      pcWriteEnable <= '0';
      disableControlSignals <= '1';
    else
      IFID_writeEnable <= '1';
      pcWriteEnable <= '1';
      disableControlSignals <= '0';
    end if;
    
  end process;

end arch_hazardDetectionUnit;