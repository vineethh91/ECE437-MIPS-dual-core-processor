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
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/clk
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/nReset
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/arb_MemRead
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/arb_MemWrite
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/arb_MemAddr
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/arb_MemDataRead
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/arb_MemDataWrite
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/arb_MemState
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c0ramAddr
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c0ramData
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c0ramWen
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c0ramRen
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c0ramdMemRead
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c0ramdMemWrite
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c0ramiMemRead
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c0ramQ
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c0ramState
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c1ramAddr
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c1ramData
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c1ramWen
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c1ramRen
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c1ramdMemRead
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c1ramdMemWrite
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c1ramiMemRead
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c1ramQ
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/c1ramState
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/state
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/nextState
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/prevState
add wave -noupdate -group cController -radix hexadecimal /tb_cpu/DUT/theCPU/cControllerBlock/nextPrevState
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/CLK
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/nReset
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/halt
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramData
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramWen
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramRen
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramdMemRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramdMemWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramiMemRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramQ
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/ramState
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_pcSrcMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_instruction
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_jjalOrResult
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_jjalMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_jrFlagMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_currProgramCounter
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_pcWriteEnableControlEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_pcWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_iMemRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_iMemWait
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFSignal_nextPC
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFIDWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IFID_nReset
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_regDst
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_extOp
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_branch
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_memRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_memToReg
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_ALUCtr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_memWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_ALUSrc
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_regWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_j_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_jal_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_jr_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_lui_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_slt_u_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_pc_write_enable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_bne_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_lw_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_halt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_shamt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_sign_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_instruction
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_Data1
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_Data2
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_luiShifted
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_nextPC
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_branchAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_jumpAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_currProgramCounter
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_imm16PCExtendedShiftedBy2
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_imm16PCExtended
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_regDst
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_extOp
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_branch
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_memRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_memToReg
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_ALUCtr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_memWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_ALUSrc
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_regWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_j_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_jal_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_jr_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_lui_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_slt_u_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_pc_write_enable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_bne_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_lw_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_halt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_shamt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_sign_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDSignal_llsc_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDoutSignal_llsc_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDEXWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/IDEX_nReset
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_regDst
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_extOp
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_branch
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_memRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_memToReg
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ALUCtr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_memWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ALUSrc
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_regWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_j_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_jal_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_jr_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_lui_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_slt_u_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_pc_write_enable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_bne_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_lw_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_halt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_shamt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_sign_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_llsc_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_instruction
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Data1
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Data2
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_luiShifted
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_nextPC
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_branchAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_jumpAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_imm16_signEx
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ShamtFlagMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_shamtExtended
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_negative_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_zero_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_regDstMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_jalFlagMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_InputAThreeToOneMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_InputBThreeToOneMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ALUSrcMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_ALURes
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_zeroAndInvertedZeroMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_zeroFlagInverted
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_luiFlagMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_extendedAluNegativeFlag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_sltuFlagMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Data2ThreeToOneMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXSignal_Data1ThreeToOneMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/EXMEMWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_regDst
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_extOp
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_branch
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_memRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_memToReg
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_ALUCtr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_memWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_ALUSrc
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_regWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_j_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_jal_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_jr_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_lui_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_slt_u_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_pc_write_enable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_bne_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_lw_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_halt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_shamt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_sign_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_llsc_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_instruction
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_Data1
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_Data2
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_luiShifted
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_nextPC
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_branchAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_jumpAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_branchFlagZeroFlagAnded
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_ALURes
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_zeroFlagMuxed
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_negativeFlag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_readData
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_jalFlagMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMSignal_dMemWait
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MEMWBWriteEnable
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/CLK
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHECTRL/state
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHECTRL/linkRegister
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHECTRL/linkRegisterMatch
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHECTRL/LLSC_flag
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/CLK
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/nReset
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/WrEn
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/Tag
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/Index
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/WordOffset
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/InputWord
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/InputWordOffset
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/MEM_memWrite
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/OutputWord
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/currentTag
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/Dirty
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/Valid
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/Hit
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/validArray
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/dirtyArray
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/tagArray
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal -childformat {{/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(0) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(1) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(2) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(3) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(4) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(5) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(6) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(7) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(8) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(9) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(10) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(11) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(12) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(13) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(14) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(15) -radix hexadecimal}} -subitemconfig {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(0) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(1) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(2) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(3) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(4) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(5) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(6) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(7) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(8) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(9) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(10) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(11) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(12) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(13) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(14) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray(15) {-height 16 -radix hexadecimal}} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/setArray
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/indexInteger
add wave -noupdate -expand -group core0 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY0/nextSetArray
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/CLK
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/nReset
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/WrEn
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal -childformat {{/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(24) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(23) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(22) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(21) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(20) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(19) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(18) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(17) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(16) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(15) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(14) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(13) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(12) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(11) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(10) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(9) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(8) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(7) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(6) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(5) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(4) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(3) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(2) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(1) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(0) -radix hexadecimal}} -subitemconfig {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(24) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(23) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(22) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(21) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(20) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(19) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(18) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(17) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(16) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(15) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(14) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(13) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(12) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(11) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(10) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(9) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(8) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(7) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(6) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(5) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(4) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(3) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(2) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(1) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag(0) {-height 16 -radix hexadecimal}} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Tag
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Index
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/WordOffset
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/InputWord
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/InputWordOffset
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/MEM_memWrite
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/OutputWord
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal -childformat {{/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(24) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(23) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(22) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(21) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(20) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(19) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(18) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(17) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(16) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(15) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(14) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(13) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(12) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(11) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(10) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(9) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(8) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(7) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(6) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(5) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(4) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(3) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(2) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(1) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(0) -radix hexadecimal}} -subitemconfig {/tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(24) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(23) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(22) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(21) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(20) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(19) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(18) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(17) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(16) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(15) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(14) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(13) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(12) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(11) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(10) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(9) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(8) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(7) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(6) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(5) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(4) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(3) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(2) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(1) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag(0) {-height 16 -radix hexadecimal}} /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/currentTag
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Dirty
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Valid
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/Hit
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/validArray
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/dirtyArray
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/tagArray
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/setArray
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/indexInteger
add wave -noupdate -expand -group core0 -expand -group dcache -expand -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/DCACHERAM_WAY1/nextSetArray
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/nReset
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/Halt
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/donePooping
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/MEMStage_LLSC_flag
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/dMemRead
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/dMemWrite
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/dMemWait
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/dMemAddr
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/dMemDataRead
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/dMemDataWrite
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/adMemRead
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/adMemWrite
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/adMemWait
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/adMemAddr
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/adMemDataWrite
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/adMemDataRead
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY0_tValid
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY0_tWrEn
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY0_tHit
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY0_tDirty
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY1_tValid
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY1_tWrEn
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY1_tHit
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY1_tDirty
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/hit
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY0_readWord
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY1_readWord
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY0currentTag
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/WAY1currentTag
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/storeWordOffset
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/dcache_WordToStore
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/cacheIndex
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/cacheWordOffset
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/hitCounterWriteEnable
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/newHitForHitCounter
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/hitCounterCount
add wave -noupdate -expand -group core0 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dcacheBlock/hitCounterAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_regDst
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_extOp
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_branch
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_memRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_memToReg
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_ALUCtr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_memWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_ALUSrc
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_regWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_j_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_jal_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_jr_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_lui_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_slt_u_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_pc_write_enable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_bne_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_lw_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_halt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_shamt_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_sign_flag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_luiShifted
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_nextPC
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_jalFlagMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_memToRegMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_luiFlagMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_extendedAluNegativeFlag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_sltuFlagMuxOutput
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_negativeFlag
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_ALURes
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_readData
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/WBSignal_jalFlagRegisterWriteLocationOutput
add wave -noupdate -expand -group core0 -radix hexadecimal -childformat {{/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(1) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(2) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(3) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(4) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(5) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(6) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(7) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(8) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(9) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(10) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(11) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(12) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(13) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(14) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(15) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(16) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(17) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(18) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(19) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(20) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(21) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(22) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(23) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(24) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(25) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(26) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(27) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(28) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(29) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(30) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(31) -radix hexadecimal}} -expand -subitemconfig {/tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(1) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(2) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(3) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(4) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(5) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(6) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(7) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(8) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(9) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(10) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(11) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(12) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(13) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(14) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(15) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(16) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(17) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(18) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(19) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(20) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(21) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(22) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(23) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(24) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(25) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(26) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(27) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(28) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(29) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(30) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg(31) {-height 16 -radix hexadecimal}} /tb_cpu/DUT/theCPU/MyAwesomeCore0/registerFileBlock/reg
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/iCacheArbiter_aiMemWait
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/iCacheArbiter_aiMemRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/iCacheArbiter_aiMemAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/iCacheArbiter_aiMemData
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemWait
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemAddr
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemDataRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/dCacheArbiter_adMemDataWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/memoryDumpFinishedSignal
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_address
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_data
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_wren
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_rden
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_latency_override
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_q
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_memstate
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_dMemRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_dMemWrite
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterRamSignal_iMemRead
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/pipelineIFIDWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/pipelineIDEXWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/pipelineEXMEMWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/pipelineMEMWBWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/arbiterPCEnableSignal
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/masterHaltSignal
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MuxAEnableSignal
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MuxBEnableSignal
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MuxCEnableSignal
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/MuxDEnableSignal
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_IFIDWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_IDEXWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_EXMEMWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_MEMWBWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetection_IDEXnReset
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetectionPCWriteEnable
add wave -noupdate -expand -group core0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore0/hazardDetectionMux21to21Enable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/CLK
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/nReset
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/halt
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/ramAddr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/ramData
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/ramWen
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/ramRen
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/ramdMemRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/ramdMemWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/ramiMemRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/ramQ
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/ramState
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_pcSrcMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_instruction
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_jjalOrResult
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_jjalMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_jrFlagMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_currProgramCounter
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_pcWriteEnableControlEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_pcWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_iMemRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_iMemWait
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFSignal_nextPC
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFIDWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IFID_nReset
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_regDst
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_extOp
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_branch
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_memRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_memToReg
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_ALUCtr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_memWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_ALUSrc
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_regWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_j_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_jal_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_jr_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_lui_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_slt_u_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_pc_write_enable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_bne_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_lw_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_halt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_shamt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_sign_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_instruction
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_Data1
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_Data2
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_luiShifted
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_nextPC
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_branchAddr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_jumpAddr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_currProgramCounter
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_imm16PCExtendedShiftedBy2
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_imm16PCExtended
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_regDst
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_extOp
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_branch
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_memRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_memToReg
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_ALUCtr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_memWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_ALUSrc
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_regWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_j_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_jal_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_jr_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_lui_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_slt_u_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_pc_write_enable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_bne_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_lw_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_halt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_shamt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_sign_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDSignal_llsc_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDoutSignal_llsc_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDEXWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/IDEX_nReset
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_regDst
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_extOp
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_branch
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_memRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_memToReg
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_ALUCtr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_memWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_ALUSrc
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_regWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_j_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_jal_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_jr_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_lui_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_slt_u_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_pc_write_enable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_bne_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_lw_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_halt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_shamt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_sign_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_llsc_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_instruction
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_Data1
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_Data2
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_luiShifted
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_nextPC
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_branchAddr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_jumpAddr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_imm16_signEx
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_ShamtFlagMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_shamtExtended
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_ALUDataSrc
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_negative_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_zero_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_regDstMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_jalFlagMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_InputAThreeToOneMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_InputBThreeToOneMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_ALUSrcMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_ALURes
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_zeroAndInvertedZeroMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_zeroFlagInverted
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_luiFlagMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_extendedAluNegativeFlag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_sltuFlagMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_Data2ThreeToOneMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXSignal_Data1ThreeToOneMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/EXMEMWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_regDst
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_extOp
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_branch
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_memRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_memToReg
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_ALUCtr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_memWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_ALUSrc
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_regWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_j_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_jal_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_jr_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_lui_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_slt_u_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_pc_write_enable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_bne_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_lw_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_halt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_shamt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_sign_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_llsc_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_instruction
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_Data1
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_Data2
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_luiShifted
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_nextPC
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_branchAddr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_jumpAddr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_branchFlagZeroFlagAnded
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_ALURes
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_WB
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_M
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_zeroFlagMuxed
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_negativeFlag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_readData
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_jalFlagMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMSignal_dMemWait
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MEMWBWriteEnable
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/CLK
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHECTRL/state
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHECTRL/LLSC_flag
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHECTRL/linkRegisterMatch
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHECTRL/linkRegister
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/CLK
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/nReset
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/WrEn
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/Tag
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/Index
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/WordOffset
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/InputWord
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/InputWordOffset
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/MEM_memWrite
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/OutputWord
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/currentTag
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/Dirty
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/Valid
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/Hit
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/validArray
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/dirtyArray
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/tagArray
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/setArray
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/indexInteger
add wave -noupdate -group core1 -expand -group dcache -group WAY0 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY0/nextSetArray
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/CLK
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/nReset
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/WrEn
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/Tag
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/Index
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/WordOffset
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/InputWord
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/InputWordOffset
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/MEM_memWrite
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/OutputWord
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/currentTag
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/Dirty
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/Valid
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/Hit
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/validArray
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/dirtyArray
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/tagArray
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/setArray
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/indexInteger
add wave -noupdate -group core1 -expand -group dcache -group WAY1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/DCACHERAM_WAY1/nextSetArray
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/storeWordOffset
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/newHitForHitCounter
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/nReset
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/linkRegMatch
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/hitCounterWriteEnable
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/hitCounterCount
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/hitCounterAddr
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/hit
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/donePooping
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/dcache_WordToStore
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/dMemWrite
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/dMemWait
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/dMemRead
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/dMemDataWrite
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/dMemDataRead
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/dMemAddr
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/cacheWordOffset
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/cacheIndex
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/adMemWrite
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/adMemWait
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/adMemRead
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/adMemDataWrite
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/adMemDataRead
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/adMemAddr
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY1currentTag
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY1_tWrEn
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY1_tValid
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY1_tHit
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY1_tDirty
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY1_readWord
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY0currentTag
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY0_tWrEn
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY0_tValid
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY0_tHit
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY0_tDirty
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/WAY0_readWord
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/MEMStage_LLSC_flag
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/Halt
add wave -noupdate -group core1 -expand -group dcache -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dcacheBlock/CLK
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_regDst
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_extOp
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_branch
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_memRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_memToReg
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_ALUCtr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_memWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_ALUSrc
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_regWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_j_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_jal_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_jr_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_lui_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_slt_u_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_pc_write_enable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_bne_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_lw_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_halt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_shamt_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_sign_flag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_Data2
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_luiShifted
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_nextPC
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_WB
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_M
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_jalFlagMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_memToRegMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_luiFlagMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_extendedAluNegativeFlag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_sltuFlagMuxOutput
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_negativeFlag
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_ALURes
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_readData
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/WBSignal_jalFlagRegisterWriteLocationOutput
add wave -noupdate -group core1 -radix hexadecimal -childformat {{/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(1) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(2) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(3) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(4) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(5) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(6) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(7) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(8) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(9) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(10) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(11) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(12) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(13) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(14) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(15) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(16) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(17) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(18) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(19) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(20) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(21) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(22) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(23) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(24) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(25) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(26) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(27) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(28) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(29) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(30) -radix hexadecimal} {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(31) -radix hexadecimal}} -expand -subitemconfig {/tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(1) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(2) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(3) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(4) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(5) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(6) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(7) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(8) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(9) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(10) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(11) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(12) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(13) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(14) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(15) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(16) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(17) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(18) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(19) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(20) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(21) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(22) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(23) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(24) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(25) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(26) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(27) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(28) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(29) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(30) {-height 16 -radix hexadecimal} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg(31) {-height 16 -radix hexadecimal}} /tb_cpu/DUT/theCPU/MyAwesomeCore1/registerFileBlock/reg
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/iCacheArbiter_aiMemWait
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/iCacheArbiter_aiMemRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/iCacheArbiter_aiMemAddr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/iCacheArbiter_aiMemData
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dCacheArbiter_adMemRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dCacheArbiter_adMemWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dCacheArbiter_adMemWait
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dCacheArbiter_adMemAddr
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dCacheArbiter_adMemDataRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/dCacheArbiter_adMemDataWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/memoryDumpFinishedSignal
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_address
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_data
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_wren
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_rden
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_latency_override
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_q
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_memstate
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_dMemRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_dMemWrite
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterRamSignal_iMemRead
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/pipelineIFIDWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/pipelineIDEXWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/pipelineEXMEMWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/pipelineMEMWBWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/arbiterPCEnableSignal
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/masterHaltSignal
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MuxAEnableSignal
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MuxBEnableSignal
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MuxCEnableSignal
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/MuxDEnableSignal
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/hazardDetection_IFIDWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/hazardDetection_IDEXWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/hazardDetection_EXMEMWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/hazardDetection_MEMWBWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/hazardDetection_IDEXnReset
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/hazardDetectionPCWriteEnable
add wave -noupdate -group core1 -radix hexadecimal /tb_cpu/DUT/theCPU/MyAwesomeCore1/hazardDetectionMux21to21Enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14045 ns} 1} {{Cursor 2} {9027 ns} 0}
quietly wave cursor active 2
configure wave -namecolwidth 279
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
WaveRestoreZoom {8449 ns} {9643 ns}
