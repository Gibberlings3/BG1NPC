
APPEND ~%tutu_var%ALORA~

IF WEIGHT #-2 ~NumTimesTalkedTo(0) AreaCheck("%Gullykin%")~ THEN BEGIN AlJoin
SAY @0
++ @1 DO ~SetGlobal("P#TalkedToAlora","GLOBAL",1)~ + ALJONE1.1
++ @2 DO ~SetGlobal("P#TalkedToAlora","GLOBAL",1)~ + ALJONE1.2
++ @3 DO ~SetGlobal("P#TalkedToAlora","GLOBAL",1)~ + ALJONE1.3
++ @4 DO ~SetGlobal("P#TalkedToAlora","GLOBAL",1)~ + ALJONE1.4
END

IF ~~ ALJONE1.1
SAY @5
  IF ~~ THEN REPLY @6 + ALJONE1.5
  IF ~~ THEN REPLY @7 + ALJONE1.6
  IF ~~ THEN REPLY @8 + ALJONE1.2
END

IF ~~ THEN BEGIN ALJONE1.2
  SAY @9
  IF ~~ THEN DO ~EscapeArea() DestroySelf()~ EXIT
END

IF ~~ ALJONE1.3
  SAY @10
  IF ~~ THEN REPLY @6 + ALJONE1.5
  IF ~~ THEN REPLY @7 + ALJONE1.6
  IF ~~ THEN REPLY @8 + ALJONE1.2
END

IF ~~ ALJONE1.4
  SAY @11
IF ~~ THEN REPLY @6 + ALJONE1.5
  IF ~~ THEN REPLY @7 + ALJONE1.6
  IF ~~ THEN REPLY @8 + ALJONE1.2
END

IF ~~ THEN BEGIN ALJONE1.5
  SAY @12
  IF ~~ THEN DO ~SetGlobal("P#TalkedToAlora","GLOBAL",2) SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN ALJONE1.6
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ALJONE1.7
  SAY @14
  IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~NumTimesTalkedToGT(0) AreaCheck("%Gullykin%")~ THEN BEGIN AlJoin1
SAY @15
  IF ~~ THEN REPLY @6 + ALJONE1.5
  IF ~~ THEN REPLY @7 + ALJONE1.7
  IF ~~ THEN REPLY @8 + ALJONE1.2
END
END