-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\project_detect\FilterCoef_block1.vhd
-- Created: 2021-02-13 15:14:38
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: FilterCoef_block1
-- Source Path: project_detect/Pulse Detector/Discrete FIR Filter HDL Optimized/FilterBank/FilterCoef
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Pulse_Detector_pkg.ALL;

ENTITY FilterCoef_block1 IS
  PORT( CoefOutI                          :   OUT   vector_of_std_logic_vector19(0 TO 63)  -- sfix19_En23 [64]
        );
END FilterCoef_block1;


ARCHITECTURE rtl OF FilterCoef_block1 IS

  -- Signals
  SIGNAL CoefData                         : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_1                       : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_2                       : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_3                       : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_4                       : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_5                       : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_6                       : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_7                       : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_8                       : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_9                       : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_10                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_11                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_12                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_13                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_14                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_15                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_16                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_17                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_18                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_19                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_20                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_21                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_22                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_23                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_24                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_25                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_26                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_27                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_28                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_29                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_30                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_31                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_32                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_33                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_34                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_35                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_36                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_37                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_38                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_39                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_40                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_41                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_42                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_43                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_44                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_45                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_46                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_47                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_48                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_49                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_50                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_51                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_52                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_53                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_54                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_55                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_56                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_57                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_58                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_59                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_60                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_61                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_62                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefData_63                      : signed(18 DOWNTO 0);  -- sfix19_En23
  SIGNAL CoefOutI_tmp                     : vector_of_signed19(0 TO 63);  -- sfix19_En23 [64]

BEGIN
  -- CoefReg_1
  CoefData <= to_signed(16#1E604#, 19);

  -- CoefReg_2
  CoefData_1 <= to_signed(16#01329#, 19);

  -- CoefReg_3
  CoefData_2 <= to_signed(-16#1FFBD#, 19);

  -- CoefReg_4
  CoefData_3 <= to_signed(16#1FFFC#, 19);

  -- CoefReg_5
  CoefData_4 <= to_signed(-16#1F916#, 19);

  -- CoefReg_6
  CoefData_5 <= to_signed(16#1055F#, 19);

  -- CoefReg_7
  CoefData_6 <= to_signed(-16#1AFA1#, 19);

  -- CoefReg_8
  CoefData_7 <= to_signed(16#08020#, 19);

  -- CoefReg_9
  CoefData_8 <= to_signed(-16#00543#, 19);

  -- CoefReg_10
  CoefData_9 <= to_signed(-16#15C21#, 19);

  -- CoefReg_11
  CoefData_10 <= to_signed(-16#1B4BD#, 19);

  -- CoefReg_12
  CoefData_11 <= to_signed(16#1A7A4#, 19);

  -- CoefReg_13
  CoefData_12 <= to_signed(16#1CEDD#, 19);

  -- CoefReg_14
  CoefData_13 <= to_signed(-16#1F92C#, 19);

  -- CoefReg_15
  CoefData_14 <= to_signed(16#1FFC7#, 19);

  -- CoefReg_16
  CoefData_15 <= to_signed(16#1EF67#, 19);

  -- CoefReg_17
  CoefData_16 <= to_signed(16#19722#, 19);

  -- CoefReg_18
  CoefData_17 <= to_signed(-16#0ABA9#, 19);

  -- CoefReg_19
  CoefData_18 <= to_signed(-16#020E8#, 19);

  -- CoefReg_20
  CoefData_19 <= to_signed(-16#1D840#, 19);

  -- CoefReg_21
  CoefData_20 <= to_signed(16#1EB7E#, 19);

  -- CoefReg_22
  CoefData_21 <= to_signed(16#1FD92#, 19);

  -- CoefReg_23
  CoefData_22 <= to_signed(-16#15AD1#, 19);

  -- CoefReg_24
  CoefData_23 <= to_signed(-16#0C03B#, 19);

  -- CoefReg_25
  CoefData_24 <= to_signed(-16#06DF3#, 19);

  -- CoefReg_26
  CoefData_25 <= to_signed(16#09D8A#, 19);

  -- CoefReg_27
  CoefData_26 <= to_signed(-16#1D32B#, 19);

  -- CoefReg_28
  CoefData_27 <= to_signed(16#1E18B#, 19);

  -- CoefReg_29
  CoefData_28 <= to_signed(16#1CA6D#, 19);

  -- CoefReg_30
  CoefData_29 <= to_signed(-16#1256F#, 19);

  -- CoefReg_31
  CoefData_30 <= to_signed(-16#09275#, 19);

  -- CoefReg_32
  CoefData_31 <= to_signed(-16#1F8B1#, 19);

  -- CoefReg_33
  CoefData_32 <= to_signed(-16#065B9#, 19);

  -- CoefReg_34
  CoefData_33 <= to_signed(16#1EC99#, 19);

  -- CoefReg_35
  CoefData_34 <= to_signed(-16#1C27F#, 19);

  -- CoefReg_36
  CoefData_35 <= to_signed(16#1A854#, 19);

  -- CoefReg_37
  CoefData_36 <= to_signed(-16#140CF#, 19);

  -- CoefReg_38
  CoefData_37 <= to_signed(16#1FF86#, 19);

  -- CoefReg_39
  CoefData_38 <= to_signed(16#1FF65#, 19);

  -- CoefReg_40
  CoefData_39 <= to_signed(16#1CD86#, 19);

  -- CoefReg_41
  CoefData_40 <= to_signed(16#0CE4F#, 19);

  -- CoefReg_42
  CoefData_41 <= to_signed(16#19FDB#, 19);

  -- CoefReg_43
  CoefData_42 <= to_signed(-16#071EC#, 19);

  -- CoefReg_44
  CoefData_43 <= to_signed(16#1A8CD#, 19);

  -- CoefReg_45
  CoefData_44 <= to_signed(16#080E9#, 19);

  -- CoefReg_46
  CoefData_45 <= to_signed(16#1EE1A#, 19);

  -- CoefReg_47
  CoefData_46 <= to_signed(16#10297#, 19);

  -- CoefReg_48
  CoefData_47 <= to_signed(-16#0F1AD#, 19);

  -- CoefReg_49
  CoefData_48 <= to_signed(-16#18E58#, 19);

  -- CoefReg_50
  CoefData_49 <= to_signed(16#1E6A9#, 19);

  -- CoefReg_51
  CoefData_50 <= to_signed(-16#02EFB#, 19);

  -- CoefReg_52
  CoefData_51 <= to_signed(16#08823#, 19);

  -- CoefReg_53
  CoefData_52 <= to_signed(16#05E11#, 19);

  -- CoefReg_54
  CoefData_53 <= to_signed(-16#1AC22#, 19);

  -- CoefReg_55
  CoefData_54 <= to_signed(16#0700A#, 19);

  -- CoefReg_56
  CoefData_55 <= to_signed(16#08715#, 19);

  -- CoefReg_57
  CoefData_56 <= to_signed(16#094A5#, 19);

  -- CoefReg_58
  CoefData_57 <= to_signed(-16#1F7D0#, 19);

  -- CoefReg_59
  CoefData_58 <= to_signed(-16#12682#, 19);

  -- CoefReg_60
  CoefData_59 <= to_signed(16#17A63#, 19);

  -- CoefReg_61
  CoefData_60 <= to_signed(16#1091D#, 19);

  -- CoefReg_62
  CoefData_61 <= to_signed(-16#16E88#, 19);

  -- CoefReg_63
  CoefData_62 <= to_signed(16#11DAD#, 19);

  -- CoefReg_64
  CoefData_63 <= to_signed(16#1D63E#, 19);

  CoefOutI_tmp(0) <= CoefData;
  CoefOutI_tmp(1) <= CoefData_1;
  CoefOutI_tmp(2) <= CoefData_2;
  CoefOutI_tmp(3) <= CoefData_3;
  CoefOutI_tmp(4) <= CoefData_4;
  CoefOutI_tmp(5) <= CoefData_5;
  CoefOutI_tmp(6) <= CoefData_6;
  CoefOutI_tmp(7) <= CoefData_7;
  CoefOutI_tmp(8) <= CoefData_8;
  CoefOutI_tmp(9) <= CoefData_9;
  CoefOutI_tmp(10) <= CoefData_10;
  CoefOutI_tmp(11) <= CoefData_11;
  CoefOutI_tmp(12) <= CoefData_12;
  CoefOutI_tmp(13) <= CoefData_13;
  CoefOutI_tmp(14) <= CoefData_14;
  CoefOutI_tmp(15) <= CoefData_15;
  CoefOutI_tmp(16) <= CoefData_16;
  CoefOutI_tmp(17) <= CoefData_17;
  CoefOutI_tmp(18) <= CoefData_18;
  CoefOutI_tmp(19) <= CoefData_19;
  CoefOutI_tmp(20) <= CoefData_20;
  CoefOutI_tmp(21) <= CoefData_21;
  CoefOutI_tmp(22) <= CoefData_22;
  CoefOutI_tmp(23) <= CoefData_23;
  CoefOutI_tmp(24) <= CoefData_24;
  CoefOutI_tmp(25) <= CoefData_25;
  CoefOutI_tmp(26) <= CoefData_26;
  CoefOutI_tmp(27) <= CoefData_27;
  CoefOutI_tmp(28) <= CoefData_28;
  CoefOutI_tmp(29) <= CoefData_29;
  CoefOutI_tmp(30) <= CoefData_30;
  CoefOutI_tmp(31) <= CoefData_31;
  CoefOutI_tmp(32) <= CoefData_32;
  CoefOutI_tmp(33) <= CoefData_33;
  CoefOutI_tmp(34) <= CoefData_34;
  CoefOutI_tmp(35) <= CoefData_35;
  CoefOutI_tmp(36) <= CoefData_36;
  CoefOutI_tmp(37) <= CoefData_37;
  CoefOutI_tmp(38) <= CoefData_38;
  CoefOutI_tmp(39) <= CoefData_39;
  CoefOutI_tmp(40) <= CoefData_40;
  CoefOutI_tmp(41) <= CoefData_41;
  CoefOutI_tmp(42) <= CoefData_42;
  CoefOutI_tmp(43) <= CoefData_43;
  CoefOutI_tmp(44) <= CoefData_44;
  CoefOutI_tmp(45) <= CoefData_45;
  CoefOutI_tmp(46) <= CoefData_46;
  CoefOutI_tmp(47) <= CoefData_47;
  CoefOutI_tmp(48) <= CoefData_48;
  CoefOutI_tmp(49) <= CoefData_49;
  CoefOutI_tmp(50) <= CoefData_50;
  CoefOutI_tmp(51) <= CoefData_51;
  CoefOutI_tmp(52) <= CoefData_52;
  CoefOutI_tmp(53) <= CoefData_53;
  CoefOutI_tmp(54) <= CoefData_54;
  CoefOutI_tmp(55) <= CoefData_55;
  CoefOutI_tmp(56) <= CoefData_56;
  CoefOutI_tmp(57) <= CoefData_57;
  CoefOutI_tmp(58) <= CoefData_58;
  CoefOutI_tmp(59) <= CoefData_59;
  CoefOutI_tmp(60) <= CoefData_60;
  CoefOutI_tmp(61) <= CoefData_61;
  CoefOutI_tmp(62) <= CoefData_62;
  CoefOutI_tmp(63) <= CoefData_63;

  outputgen: FOR k IN 0 TO 63 GENERATE
    CoefOutI(k) <= std_logic_vector(CoefOutI_tmp(k));
  END GENERATE;

END rtl;
