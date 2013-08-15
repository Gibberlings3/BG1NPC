APPEND ~%AJANTIS_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceIniFlirt","GLOBAL",2)~ THEN carrying
SAY @0 
++ @1 + carrying_01
+ ~CheckStatGT(Player1,17,STR)~ + @2 + carrying_02
++ @3 + carrying_03
++ @4 + carrying_04
++ @5 + carrying_05
END

IF ~~ THEN carrying_01
SAY @6
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",3) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ EXIT
END

IF ~~ THEN carrying_02
SAY @7 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",3) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ EXIT
END

IF ~~ THEN carrying_03
SAY @8
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",3) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ EXIT
END

IF ~~ THEN carrying_04
SAY @9
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",3) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ EXIT
END

IF ~~ THEN carrying_05
SAY @10
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",3) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ EXIT
END



IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceIniFlirt","GLOBAL",4)~ THEN lovetalk_sunset1
SAY @11 
= @12
++ @13 DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",5) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ + sunset1_01
++ @14 DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",5) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ + sunset1_03
++ @15 DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",5) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ + sunset1_02
++ @16 DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",5) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ + sunset1_06
END

IF ~~ THEN sunset1_01
SAY @17 
IF ~~ THEN EXIT 
END

IF ~~ THEN sunset1_02
SAY @18
IF ~~ THEN EXIT 
END

IF ~~ THEN sunset1_03
SAY @19 
++ @20 + sunset1_04
++ @21 + sunset1_05
END

IF ~~ THEN sunset1_04
SAY @22
IF ~~ THEN EXIT 
END

IF ~~ THEN sunset1_05
SAY @23
IF ~~ THEN EXIT 
END

IF ~~ THEN sunset1_06
SAY @24
IF ~~ THEN EXIT 
END


IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceIniFlirt","GLOBAL",6)~ THEN bedroll
SAY @25
= @26
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceIniFlirt","GLOBAL",7)  RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ EXIT
END


/* Former LT 15 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceSunsetFlirt","GLOBAL",1)~ THEN lovetalk_sunset
SAY @27
++ @28 DO ~SetGlobal("X#AjantisRomanceSunsetFlirt","GLOBAL",2) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ + sunset_01
++ @29 DO ~SetGlobal("X#AjantisRomanceSunsetFlirt","GLOBAL",2) RealSetGlobalTimer("X#AjantisRomanceIniFlirtTimer","GLOBAL",AJROM_TIMER)~ + sunset_01
END

IF ~~ THEN sunset_01
SAY @30
++ @31 + sunset_02
++ @32 + sunset_03
++ @33 + sunset_04
END

IF ~~ THEN sunset_02
SAY @34
IF ~~ THEN EXIT
END

IF ~~ THEN sunset_03
SAY @35
= @36
IF ~~ THEN EXIT
END

IF ~~ THEN sunset_04
SAY @37
IF ~~ THEN EXIT
END

/* AjantisRomanceActive = 2 */

/* flirt kiss, thanks Domi :) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceFlirtKiss","GLOBAL",1)~ THEN kiss 
SAY @38
++ @39 + kiss_01
++ @40 + kiss_02
END

IF ~~ THEN kiss_01
SAY @41
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceFlirtKiss","GLOBAL",2)~ EXIT
END

IF ~~ THEN kiss_02
SAY @42
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceFlirtKiss","GLOBAL",2)~ EXIT
END



/* flirt locket, enables PC flirt options */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceFlirtFavor","GLOBAL",1)~ THEN PC_favor
SAY @43 
++ @44 + PC_favor_01
++ @45 + PC_favor_01
++ @46 + PC_favor_02
END

IF ~~ THEN PC_favor_01
SAY @47 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceHairLocket","GLOBAL",1) SetGlobal("X#AjantisRomanceFlirtFavor","GLOBAL",2)~ EXIT
END 

IF ~~ THEN PC_favor_02
SAY @48
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceFlirtFavor","GLOBAL",2)~ EXIT
END 

END
