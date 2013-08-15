BEGIN X#LAKEP1

APPEND X#LAKEP1

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Sam0
SAY @0
= @1
IF ~~ THEN EXIT
END


IF ~NumTimesTalkedTo(1)~ THEN BEGIN Sam1
SAY @2
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN Sam2
SAY @3
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(3)~ THEN BEGIN Sam3
SAY @4
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(4)~ THEN BEGIN Sam4
SAY @5
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(5)~ THEN BEGIN Sam5
SAY @6
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(5)~ THEN BEGIN Sam6
SAY @7
IF ~~ THEN DO ~SetGlobal("X#TalkedLP1","GLOBAL",1)~ EXIT
END

END

BEGIN X#LAKEP2

APPEND X#LAKEP2

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Rob0
SAY @8
= @9
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN Rob1
SAY @10
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN Rob2
SAY @11
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(3)~ THEN BEGIN Rob3
SAY @12
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(4)~ THEN BEGIN Rob4
SAY @13
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(5)~ THEN BEGIN Rob5
SAY @14
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(6)~ THEN BEGIN Rob6
SAY @15
IF ~~ THEN DO ~SetGlobal("X#TalkedLP2","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(6)~ THEN BEGIN Rob7
SAY @15
IF ~~ THEN EXIT
END

END

BEGIN X#LAKEP3

APPEND X#LAKEP3

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Willy0
SAY @16
= @17
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN Willy1
SAY @18
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN Willy2
SAY @19
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(3)~ THEN BEGIN Willy3
SAY @20
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(4)~ THEN BEGIN Willy4
SAY @21
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(5)~ THEN BEGIN Willy5
SAY @22
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(6)~ THEN BEGIN Willy6
SAY @23
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(7)~ THEN BEGIN Willy7
SAY @24
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(8)~ THEN BEGIN Willy8
SAY @25
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(8) Global("X#TalkedLP1","GLOBAL",1) Global("X#TalkedLP2","GLOBAL",1) Global("X#TalkedLP3","GLOBAL",0)~ THEN BEGIN Willy9
SAY @26
IF ~RandomNum(3,1)~ THEN DO ~GiveItemCreate("MISC3O",Player1,1,0,0) SetGlobal("X#TalkedLP3","GLOBAL",1)~ EXIT
IF ~RandomNum(3,2)~ THEN DO ~GiveItemCreate("MISC3N",Player1,1,0,0) SetGlobal("X#TalkedLP3","GLOBAL",1)~ EXIT
IF ~RandomNum(3,3)~ THEN DO ~GiveItemCreate("MISC3M",Player1,1,0,0) SetGlobal("X#TalkedLP3","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(8) OR(2) Global("X#TalkedLP1","GLOBAL",0) Global("X#TalkedLP2","GLOBAL",0)~ THEN BEGIN Willy10
SAY @27
IF ~~ THEN EXIT
END

IF ~Global("X#TalkedLP3","GLOBAL",1)~ THEN BEGIN Willy11
SAY @28
IF ~~ THEN EXIT
END

END





