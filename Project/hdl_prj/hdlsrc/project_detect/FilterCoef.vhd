-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\project_detect\FilterCoef.vhd
-- Created: 2021-02-13 15:14:38
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: FilterCoef
-- Source Path: project_detect/Pulse Detector/Discrete FIR Filter HDL Optimized/FilterBank/FilterCoef
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Pulse_Detector_pkg.ALL;

ENTITY FilterCoef IS
  PORT( CoefOutP                          :   OUT   vector_of_std_logic_vector19(0 TO 63)  -- sfix19_En23 [64]
        );
END FilterCoef;


ARCHITECTURE rtl OF FilterCoef IS

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
  SIGNAL CoefOutP_tmp                     : vector_of_signed19(0 TO 63);  -- sfix19_En23 [64]

BEGIN
  -- CoefReg_1
  CoefData <= to_signed(16#144FA#, 19);

  -- CoefReg_2
  CoefData_1 <= to_signed(-16#1EC7B#, 19);

  -- CoefReg_3
  CoefData_2 <= to_signed(-16#21020#, 19);

  -- CoefReg_4
  CoefData_3 <= to_signed(16#2040F#, 19);

  -- CoefReg_5
  CoefData_4 <= to_signed(-16#1A538#, 19);

  -- CoefReg_6
  CoefData_5 <= to_signed(-16#0B2E4#, 19);

  -- CoefReg_7
  CoefData_6 <= to_signed(-16#2C305#, 19);

  -- CoefReg_8
  CoefData_7 <= to_signed(16#26FD6#, 19);

  -- CoefReg_9
  CoefData_8 <= to_signed(-16#2053C#, 19);

  -- CoefReg_10
  CoefData_9 <= to_signed(16#01B4E#, 19);

  -- CoefReg_11
  CoefData_10 <= to_signed(-16#0A987#, 19);

  -- CoefReg_12
  CoefData_11 <= to_signed(16#0881D#, 19);

  -- CoefReg_13
  CoefData_12 <= to_signed(16#0F400#, 19);

  -- CoefReg_14
  CoefData_13 <= to_signed(-16#24C86#, 19);

  -- CoefReg_15
  CoefData_14 <= to_signed(16#20EDA#, 19);

  -- CoefReg_16
  CoefData_15 <= to_signed(16#16E18#, 19);

  -- CoefReg_17
  CoefData_16 <= to_signed(16#060AC#, 19);

  -- CoefReg_18
  CoefData_17 <= to_signed(-16#28E07#, 19);

  -- CoefReg_19
  CoefData_18 <= to_signed(-16#21FD9#, 19);

  -- CoefReg_20
  CoefData_19 <= to_signed(-16#11274#, 19);

  -- CoefReg_21
  CoefData_20 <= to_signed(16#27AF4#, 19);

  -- CoefReg_22
  CoefData_21 <= to_signed(16#22F69#, 19);

  -- CoefReg_23
  CoefData_22 <= to_signed(-16#2D376#, 19);

  -- CoefReg_24
  CoefData_23 <= to_signed(-16#29AC6#, 19);

  -- CoefReg_25
  CoefData_24 <= to_signed(16#1861B#, 19);

  -- CoefReg_26
  CoefData_25 <= to_signed(16#284B3#, 19);

  -- CoefReg_27
  CoefData_26 <= to_signed(-16#2A4B0#, 19);

  -- CoefReg_28
  CoefData_27 <= to_signed(16#13397#, 19);

  -- CoefReg_29
  CoefData_28 <= to_signed(16#2AE70#, 19);

  -- CoefReg_30
  CoefData_29 <= to_signed(16#07E24#, 19);

  -- CoefReg_31
  CoefData_30 <= to_signed(16#15826#, 19);

  -- CoefReg_32
  CoefData_31 <= to_signed(-16#24EE4#, 19);

  -- CoefReg_33
  CoefData_32 <= to_signed(16#19012#, 19);

  -- CoefReg_34
  CoefData_33 <= to_signed(16#160FD#, 19);

  -- CoefReg_35
  CoefData_34 <= to_signed(-16#0CF31#, 19);

  -- CoefReg_36
  CoefData_35 <= to_signed(16#089D0#, 19);

  -- CoefReg_37
  CoefData_36 <= to_signed(-16#2CFD7#, 19);

  -- CoefReg_38
  CoefData_37 <= to_signed(16#1E970#, 19);

  -- CoefReg_39
  CoefData_38 <= to_signed(16#21849#, 19);

  -- CoefReg_40
  CoefData_39 <= to_signed(16#0EFDA#, 19);

  -- CoefReg_41
  CoefData_40 <= to_signed(16#2A2E7#, 19);

  -- CoefReg_42
  CoefData_41 <= to_signed(16#2CA88#, 19);

  -- CoefReg_43
  CoefData_42 <= to_signed(16#1813E#, 19);

  -- CoefReg_44
  CoefData_43 <= to_signed(16#08AFD#, 19);

  -- CoefReg_45
  CoefData_44 <= to_signed(16#2706B#, 19);

  -- CoefReg_46
  CoefData_45 <= to_signed(16#2744C#, 19);

  -- CoefReg_47
  CoefData_46 <= to_signed(16#2BC7D#, 19);

  -- CoefReg_48
  CoefData_47 <= to_signed(-16#2B50C#, 19);

  -- CoefReg_49
  CoefData_48 <= to_signed(-16#04CAE#, 19);

  -- CoefReg_50
  CoefData_49 <= to_signed(16#285BC#, 19);

  -- CoefReg_51
  CoefData_50 <= to_signed(-16#22CD2#, 19);

  -- CoefReg_52
  CoefData_51 <= to_signed(16#275B5#, 19);

  -- CoefReg_53
  CoefData_52 <= to_signed(16#2555A#, 19);

  -- CoefReg_54
  CoefData_53 <= to_signed(-16#09356#, 19);

  -- CoefReg_55
  CoefData_54 <= to_signed(16#263A1#, 19);

  -- CoefReg_56
  CoefData_55 <= to_signed(16#274F1#, 19);

  -- CoefReg_57
  CoefData_56 <= to_signed(-16#1554E#, 19);

  -- CoefReg_58
  CoefData_57 <= to_signed(-16#25300#, 19);

  -- CoefReg_59
  CoefData_58 <= to_signed(16#07C4F#, 19);

  -- CoefReg_60
  CoefData_59 <= to_signed(16#02178#, 19);

  -- CoefReg_61
  CoefData_60 <= to_signed(16#2BF21#, 19);

  -- CoefReg_62
  CoefData_61 <= to_signed(-16#0090A#, 19);

  -- CoefReg_63
  CoefData_62 <= to_signed(16#2C691#, 19);

  -- CoefReg_64
  CoefData_63 <= to_signed(16#2A0C4#, 19);

  CoefOutP_tmp(0) <= CoefData;
  CoefOutP_tmp(1) <= CoefData_1;
  CoefOutP_tmp(2) <= CoefData_2;
  CoefOutP_tmp(3) <= CoefData_3;
  CoefOutP_tmp(4) <= CoefData_4;
  CoefOutP_tmp(5) <= CoefData_5;
  CoefOutP_tmp(6) <= CoefData_6;
  CoefOutP_tmp(7) <= CoefData_7;
  CoefOutP_tmp(8) <= CoefData_8;
  CoefOutP_tmp(9) <= CoefData_9;
  CoefOutP_tmp(10) <= CoefData_10;
  CoefOutP_tmp(11) <= CoefData_11;
  CoefOutP_tmp(12) <= CoefData_12;
  CoefOutP_tmp(13) <= CoefData_13;
  CoefOutP_tmp(14) <= CoefData_14;
  CoefOutP_tmp(15) <= CoefData_15;
  CoefOutP_tmp(16) <= CoefData_16;
  CoefOutP_tmp(17) <= CoefData_17;
  CoefOutP_tmp(18) <= CoefData_18;
  CoefOutP_tmp(19) <= CoefData_19;
  CoefOutP_tmp(20) <= CoefData_20;
  CoefOutP_tmp(21) <= CoefData_21;
  CoefOutP_tmp(22) <= CoefData_22;
  CoefOutP_tmp(23) <= CoefData_23;
  CoefOutP_tmp(24) <= CoefData_24;
  CoefOutP_tmp(25) <= CoefData_25;
  CoefOutP_tmp(26) <= CoefData_26;
  CoefOutP_tmp(27) <= CoefData_27;
  CoefOutP_tmp(28) <= CoefData_28;
  CoefOutP_tmp(29) <= CoefData_29;
  CoefOutP_tmp(30) <= CoefData_30;
  CoefOutP_tmp(31) <= CoefData_31;
  CoefOutP_tmp(32) <= CoefData_32;
  CoefOutP_tmp(33) <= CoefData_33;
  CoefOutP_tmp(34) <= CoefData_34;
  CoefOutP_tmp(35) <= CoefData_35;
  CoefOutP_tmp(36) <= CoefData_36;
  CoefOutP_tmp(37) <= CoefData_37;
  CoefOutP_tmp(38) <= CoefData_38;
  CoefOutP_tmp(39) <= CoefData_39;
  CoefOutP_tmp(40) <= CoefData_40;
  CoefOutP_tmp(41) <= CoefData_41;
  CoefOutP_tmp(42) <= CoefData_42;
  CoefOutP_tmp(43) <= CoefData_43;
  CoefOutP_tmp(44) <= CoefData_44;
  CoefOutP_tmp(45) <= CoefData_45;
  CoefOutP_tmp(46) <= CoefData_46;
  CoefOutP_tmp(47) <= CoefData_47;
  CoefOutP_tmp(48) <= CoefData_48;
  CoefOutP_tmp(49) <= CoefData_49;
  CoefOutP_tmp(50) <= CoefData_50;
  CoefOutP_tmp(51) <= CoefData_51;
  CoefOutP_tmp(52) <= CoefData_52;
  CoefOutP_tmp(53) <= CoefData_53;
  CoefOutP_tmp(54) <= CoefData_54;
  CoefOutP_tmp(55) <= CoefData_55;
  CoefOutP_tmp(56) <= CoefData_56;
  CoefOutP_tmp(57) <= CoefData_57;
  CoefOutP_tmp(58) <= CoefData_58;
  CoefOutP_tmp(59) <= CoefData_59;
  CoefOutP_tmp(60) <= CoefData_60;
  CoefOutP_tmp(61) <= CoefData_61;
  CoefOutP_tmp(62) <= CoefData_62;
  CoefOutP_tmp(63) <= CoefData_63;

  outputgen: FOR k IN 0 TO 63 GENERATE
    CoefOutP(k) <= std_logic_vector(CoefOutP_tmp(k));
  END GENERATE;

END rtl;
