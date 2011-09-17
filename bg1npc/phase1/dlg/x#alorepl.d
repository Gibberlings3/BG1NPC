BEGIN ~%tutu_var%ALORA~

IF ~%BGT_VAR% StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN X#AloraCharmed
 SAY @19
 IF ~~ THEN EXIT
END

IF ~%BGT_VAR% Global("P#AloraLoots","GLOBAL",1)~ THEN BEGIN X#Alora7
 SAY @13
 IF ~~ THEN REPLY @14 DO ~SetGlobal("P#AloraLoots","GLOBAL",2)~ GOTO X#Alora9
 IF ~~ THEN REPLY @15 DO ~SetGlobal("P#AloraLoots","GLOBAL",2)~ GOTO X#Alora8
 IF ~~ THEN REPLY @16 DO ~SetGlobal("P#AloraLoots","GLOBAL",2)~ GOTO X#Alora5
END

IF ~%BGT_VAR% NumTimesTalkedTo(0)!AreaCheck("%Gullykin%")~ THEN BEGIN X#MeetAlora
 SAY @0
 IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN GOTO X#AloraUpper
 IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER) ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN GOTO X#AloraMiddle
 IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN GOTO X#AloraLower
END

IF ~~ THEN BEGIN X#AloraUpper
 SAY @1
 IF ~~ THEN REPLY @2 GOTO X#Alora6
 IF ~~ THEN REPLY @3 GOTO X#Alora5
 IF ~~ THEN REPLY @4 GOTO X#Alora11
END

IF ~~ THEN BEGIN X#AloraMiddle
 SAY @5
 IF ~~ THEN REPLY @6 GOTO X#Alora6
 IF ~~ THEN REPLY @3 GOTO X#Alora5
 IF ~~ THEN REPLY @4 GOTO X#Alora11
END

IF ~~ THEN BEGIN X#AloraLower
 SAY @7
 IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~%BGT_VAR% NumTimesTalkedTo(1) ReactionLT(LastTalkedToBy,NEUTRAL_LOWER) !AreaCheck("%Gullykin%")~ THEN BEGIN X#AloraNotHappy
 SAY @8
 IF ~~ THEN EXIT
END

IF WEIGHT #5 ~%BGT_VAR% NumTimesTalkedTo(1) ReactionGT(LastTalkedToBy,NEUTRAL_UPPER) !AreaCheck("%Gullykin%")~ THEN BEGIN X#AloraOK
 SAY @9
 IF ~~ THEN REPLY @10 GOTO X#Alora6
 IF ~~ THEN REPLY @3 GOTO X#Alora5
 IF ~~ THEN REPLY @4 GOTO X#Alora11
END

IF ~~ THEN BEGIN X#Alora5
 SAY @11
 IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN X#Alora6
 SAY @12
 IF ~~ THEN DO ~DialogInterrupt(FALSE) SetGlobal("P#AloraLoots","GLOBAL",1) MoveToPoint([769.849]) DialogInterrupt(TRUE)~ EXIT
END

IF ~~ THEN BEGIN X#Alora8
 SAY @17
 IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN X#Alora9
 SAY @18
 IF ~~ THEN DO ~JoinParty()~ EXIT
END


IF ~~ THEN BEGIN X#Alora11
 SAY @20
 IF ~~ THEN DO ~CreateCreature("FLAM",[802.905],3) CreateCreature("FLAM",[850.886],3) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN X#Alora12
 SAY @21
 IF ~~ THEN DO ~CreateCreature("FLAM",[802.905],3) CreateCreature("FLAM",[850.886],3) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN X#Alora13
 SAY @22
 IF ~~ THEN DO ~ActionOverride("alora",SetLeavePartyDialogFile()) ActionOverride("alora",ChangeAIScript("",DEFAULT)) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN X#Alora14
 SAY @23
 IF ~~ THEN DO ~ActionOverride("alora",SetLeavePartyDialogFile()) ActionOverride("alora",ChangeAIScript("",DEFAULT)) LeaveParty()~ EXIT
END