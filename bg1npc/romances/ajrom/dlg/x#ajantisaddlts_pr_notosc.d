ADD_STATE_TRIGGER ~%AJANTIS_POST%~ 0 ~OR(3) !Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",0) Global("X#AjantisRomanceActive","GLOBAL",3)~

APPEND ~%AJANTIS_POST%~

IF ~%BGT_VAR% Global("%KICKED_OUT%","LOCALS",1) Global("X#AjantisRomanceMatch","GLOBAL",1) OR(2) Global("X#AjantisRomanceActive","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN return_romance
SAY @27
IF ~~ THEN REPLY @28 GOTO return_romance_01
IF ~~ THEN REPLY @29 GOTO 1
END

IF ~~ THEN return_romance_01
SAY @30
IF ~~ THEN EXIT
END

END

APPEND ~%AJANTIS_JOINED%~

/* from LT 24: only for rep>= 16. If rep < 16 at LT 22, Ajantis gives hint. */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceNeedMoreRep","GLOBAL",1)~ THEN rep_too_low
SAY @0
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNeedMoreRep","GLOBAL",2)~ EXIT 
END

/* for RomanceActive = 2: if rep < 16 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceLostRep","GLOBAL",1)~ THEN lost_rep
SAY @1 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceLostRep","GLOBAL",2)~ EXIT 
END


/* if PC made unfriendly decisions */
/* GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceTooManyBD","GLOBAL",1)~ THEN too_many_baddecisions
SAY @2
IF ~!Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("X#AjantisRomanceTooManyBD","GLOBAL",2)~ EXIT
IF ~Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceTooManyBD","GLOBAL",2)~ EXIT
END

/* GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",7) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceTooManyBD","GLOBAL",3)~ THEN too_many_baddecisions2
SAY @3
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceTooManyBD","GLOBAL",4) LeaveParty() Enemy() SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~ SOLVED_JOURNAL @4 EXIT
END


/* if PC didn't talk about Gorion in first LT */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceNoGorion","GLOBAL",3)~ THEN gorion
SAY @5
++ @6 + gorion_01
++ @7 + gorion_02
++ @8 + gorion_03
++ @9 + gorion_04
++ @10 + gorion_07
++ @11 + gorion_09
++ @12 + gorion_08
END

IF ~~ THEN gorion_01
SAY @13
IF ~~ THEN + gorion_06
END

IF ~~ THEN gorion_02
SAY @14
++ @15 + gorion_06
++ @16 + gorion_05
++ @17 + gorion_05
END

IF ~~ THEN gorion_03
SAY @18
IF ~~ THEN + gorion_06
END

IF ~~ THEN gorion_04
SAY @19
IF ~~ THEN + gorion_06
END

IF ~~ THEN gorion_05
SAY @20
IF ~~ THEN + gorion_06
END

IF ~~ THEN gorion_06
SAY @21
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNoGorion","GLOBAL",4)~ EXIT
END

IF ~~ THEN gorion_07
SAY @22
++ @6 + gorion_01
++ @7 + gorion_02
++ @8 + gorion_03
++ @23 + gorion_04
++ @11 + gorion_09
++ @24 + gorion_08
END

IF ~~ THEN gorion_08
SAY @25
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceNoGorion","GLOBAL",4)~ EXIT
END

IF ~~ THEN gorion_09
SAY @26
IF ~~ THEN + gorion_06
END

END
