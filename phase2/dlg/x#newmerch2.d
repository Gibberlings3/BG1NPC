BEGIN ~NEWMERCH2~

IF WEIGHT #2 ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("%tutu_var%sto4901",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN JOURNAL @4 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN EXIT
END
