APPEND ~%AJANTIS_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceDream1","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN ajantis_dream1
SAY @0
++ @1 + dream1_01
++ @2 + dream1_01
++ @3 + dream1_03
++ @4 + dream1_08
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceDream1","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN ajantis_dream1_love
SAY @5 
++ @1 + dream1_02
++ @2 + dream1_02
++ @6 + dream1_07
++ @3 + dream1_04
++ @4 + dream1_08
END

IF ~~ THEN dream1_01
SAY @7
++ @8 + dream1_06
++ @9 + dream1_05
++ @10 + dream1_05
END

IF ~~ THEN dream1_02
SAY @11
++ @12 + dream1_06
++ @9 + dream1_05
++ @10 + dream1_05
END

IF ~~ THEN dream1_03
SAY @13
++ @12 + dream1_06
++ @9 + dream1_05
++ @10 + dream1_05
END

IF ~~ THEN dream1_04
SAY @14
++ @12 + dream1_06
++ @9 + dream1_05
++ @10 + dream1_05
END

IF ~~ THEN dream1_05
SAY @15
IF ~Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN GOTO dream1_09
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN GOTO dream1_10
END

IF ~~ THEN dream1_06
SAY @16
IF ~Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN GOTO dream1_09
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN GOTO dream1_10
END

IF ~~ THEN dream1_07
SAY @17
++ @1 + dream1_02
++ @2 + dream1_02
++ @18 + dream1_04
++ @4 + dream1_05
END

IF ~~ THEN dream1_08
SAY @19
= @20
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDream1","GLOBAL",2)~ EXIT
END

IF ~~ THEN dream1_09
SAY @21
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDream1","GLOBAL",2)~ EXIT
END

IF ~~ THEN dream1_10
SAY @22
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDream1","GLOBAL",2)~ EXIT
END


IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceDream2","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN ajantis_dream2
SAY @23
++ @24 + dream2_01
++ @25 + dream2_02
++ @26 DO ~SetGlobal("X#AjantisRomanceDream2","GLOBAL",2)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceDream2","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN ajantis_dream2_love
SAY @27
++ @24 + dream2_01
++ @25 + dream2_02
++ @26 DO ~SetGlobal("X#AjantisRomanceDream2","GLOBAL",2)~ EXIT
END

IF ~~ THEN dream2_01
SAY @28
++ @29 + dream2_03
++ @30 + dream2_04
END

IF ~~ THEN dream2_02
SAY @31
++ @32 + dream2_01
++ @33 + dream2_04
END

IF ~~ THEN dream2_03
SAY @34
= @35
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDream2","GLOBAL",2)~ EXIT
END

IF ~~ THEN dream2_04
SAY @36
= @37
IF ~Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN GOTO dream2_05
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN GOTO dream2_06
END

IF ~~ THEN dream2_05
SAY @38
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDream2","GLOBAL",2)~ EXIT
END

IF ~~ THEN dream2_06
SAY @39
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDream2","GLOBAL",2)~ EXIT
END


IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceDream4","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN ajantis_dream4
SAY @40
++ @41 + dream4_01
++ @42 + dream4_03
++ @43 + dream4_02
++ @44 + dream4_05
END 

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceDream4","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN ajantis_dream4_love
SAY @45
++ @41 + dream4_01
++ @46 + dream4_10
++ @42 + dream4_03
++ @43 + dream4_02
++ @44 + dream4_05
END 

IF ~~ THEN dream4_01
SAY @47
++ @48 + dream4_03
++ @49 + dream4_02
++ @50 + dream4_09
END 

IF ~~ THEN dream4_02
SAY @51
++ @42 + dream4_03
++ @52 + dream4_09
END

IF ~~ THEN dream4_03
SAY @53
IF ~~ THEN DO ~SetGlobal("X#AjantisRomForeboding","GLOBAL",1)~ + dream4_06
END

IF ~~ THEN dream4_04
SAY @54
IF ~Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("X#AjantisRomanceDream4","GLOBAL",2)~ EXIT
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + dream4_12
END

IF ~~ THEN dream4_05
SAY @55
++ @56 + dream4_03
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @57 + dream4_07
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @58 + dream4_08
END

IF ~~ THEN dream4_06
SAY @59
++ @60 + dream4_04
++ @61 + dream4_04
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @62 EXIT
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @63 + dream4_12
END

IF ~~ THEN dream4_07
SAY @64
IF ~~ THEN GOTO dream4_12
END 

IF ~~ THEN dream4_08
SAY @65
= @66
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDream4","GLOBAL",2)~ EXIT
END

IF ~~ THEN dream4_09
SAY @67
++ @42 + dream4_03
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @57 + dream4_07
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @58 + dream4_08
END

IF ~~ THEN dream4_10
SAY @68
++ @41 + dream4_01
++ @42 + dream4_03
++ @43 + dream4_02
++ @44 + dream4_05
END 

IF ~~ THEN dream4_11
SAY @69
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDream4","GLOBAL",2)~ EXIT
END

IF ~~ THEN dream4_12
SAY @70
++ @71 + dream4_11
++ @72 DO ~SetGlobal("X#AjantisRomanceDream4","GLOBAL",2)~ EXIT
END

END