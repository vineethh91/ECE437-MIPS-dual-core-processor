onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/CLK
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/ramWen
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/ramState
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/ramRen
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/ramQ
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/ramData
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/ramAddr
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/nReset
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/halt
add wave -noupdate /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHECTRL/state
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_ramiMemRead
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_ramdMemWrite
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_ramdMemRead
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_ramWen
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_ramState
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_ramRen
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_ramQ
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_ramData
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_ramAddr
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core1_halt
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_ramiMemRead
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_ramdMemWrite
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_ramdMemRead
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_ramWen
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_ramState
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_ramRen
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_ramQ
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_ramData
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_ramAddr
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/core0_halt
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/arbiterMemWrite
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/arbiterMemRead
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/arbiterMemDataWrite
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/arbiterMemAddr
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/CLK
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramiMemRead
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramdMemWrite
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramdMemRead
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramWen
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramState
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramRen
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramQ
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramData
add wave -noupdate -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramAddr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/pipelineMEMWBWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/pipelineIFIDWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/pipelineIDEXWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/pipelineEXMEMWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/nReset
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/memoryDumpFinishedSignal
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/masterHaltSignal
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/iCacheArbiter_aiMemWait
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/iCacheArbiter_aiMemRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/iCacheArbiter_aiMemData
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/iCacheArbiter_aiMemAddr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_MEMWBWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_IFIDWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_IDEXnReset
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_IDEXWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_EXMEMWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetectionPCWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetectionMux21to21Enable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/halt
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemWait
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemDataWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemDataRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemAddr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_wren
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_rden
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_q
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_memstate
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_latency_override
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_iMemRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_data
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_dMemWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_dMemRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_address
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterPCEnableSignal
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_sltuFlagMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_slt_u_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_sign_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_shamt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_regWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_regDst
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_readData
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_pc_write_enable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_nextPC
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_negativeFlag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_memWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_memToRegMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_memToReg
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_memRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_lw_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_lui_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_luiShifted
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_luiFlagMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_jr_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_jal_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_jalFlagRegisterWriteLocationOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_jalFlagMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_j_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_halt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_extendedAluNegativeFlag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_extOp
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_branch
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_bne_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_WB
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_M
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_Data2
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_ALUSrc
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_ALURes
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_ALUCtr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MuxDEnableSignal
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MuxCEnableSignal
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MuxBEnableSignal
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MuxAEnableSignal
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMWBWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_zeroFlagMuxed
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_slt_u_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_sign_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_shamt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_regWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_regDst
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_readData
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_pc_write_enable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_nextPC
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_negativeFlag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_memWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_memToReg
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_memRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_lw_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_lui_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_luiShifted
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_llsc_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_jumpAddr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_jr_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_jal_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_jalFlagMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_j_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_instruction
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_halt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_extOp
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_dMemWait
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_branchFlagZeroFlagAnded
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_branchAddr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_branch
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_bne_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_WB
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_M
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_Data2
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_Data1
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_ALUSrc
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_ALURes
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_ALUCtr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_pcWriteEnableControlEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_pcWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_pcSrcMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_nextPC
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_jrFlagMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_jjalOrResult
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_jjalMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_instruction
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_iMemWait
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_iMemRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_currProgramCounter
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFID_nReset
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFIDWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_slt_u_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_sign_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_shamt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_regWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_regDst
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_pc_write_enable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_memWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_memToReg
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_memRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_lw_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_lui_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_llsc_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_jr_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_jal_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_j_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_halt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_extOp
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_branch
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_bne_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_ALUSrc
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_ALUCtr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_slt_u_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_sign_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_shamt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_regWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_regDst
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_pc_write_enable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_nextPC
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_memWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_memToReg
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_memRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_lw_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_lui_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_luiShifted
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_llsc_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_jumpAddr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_jr_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_jal_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_j_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_instruction
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_imm16PCExtendedShiftedBy2
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_imm16PCExtended
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_halt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_extOp
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_currProgramCounter
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_branchAddr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_branch
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_bne_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_WB
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_M
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_EX
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_Data2
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_Data1
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_ALUSrc
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_ALUCtr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDEX_nReset
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDEXWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_zero_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_zeroFlagInverted
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_zeroAndInvertedZeroMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_sltuFlagMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_slt_u_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_sign_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_shamt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_shamtExtended
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_regWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_regDstMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_regDst
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_pc_write_enable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_nextPC
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_negative_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_memWrite
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_memToReg
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_memRead
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_lw_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_lui_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_luiShifted
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_luiFlagMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_llsc_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_jumpAddr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_jr_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_jal_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_jalFlagMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_j_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_instruction
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_imm16_signEx
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_halt_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_extendedAluNegativeFlag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_extOp
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_branchAddr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_branch
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_bne_flag
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_WB
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ShamtFlagMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Mux_B
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Mux_A
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_M
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_InputBThreeToOneMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_InputAThreeToOneMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_EX
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Data2ThreeToOneMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Data2
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Data1ThreeToOneMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Data1
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ALUSrcMuxOutput
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ALUSrc
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ALURes
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ALUDataSrc
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ALUCtr
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXMEMWriteEnable
add wave -noupdate -expand -group core0Signals -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/CLK
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16700 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 272
configure wave -valuecolwidth 152
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {15461 ns} {21175 ns}
