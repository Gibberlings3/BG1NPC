/* Yeslick and Rieltar */
EXTEND_BOTTOM ~%tutu_var%RIELTA~ 0 #1
  IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ EXTERN ~%tutu_var%YESLIJ~ YWMR1
END

/* Yeslick, When meeting Rieltar */
CHAIN ~%YESLICK_JOINED%~ YWMR1
@3
== ~%tutu_var%RIELTA~ @4
== ~%YESLICK_JOINED%~ @5 DO ~SetGlobal("X#YWMRFTFT","GLOBAL",1)~
END
++ @6 DO ~SetGlobal("Criminal","GLOBAL",1)~ EXTERN ~%tutu_var%YESLIJ~ YWMR2B20
++ @7 DO ~SetGlobal("Criminal","GLOBAL",1)~ EXTERN ~%tutu_var%YESLIJ~ YWMR2B5

CHAIN ~%YESLICK_JOINED%~ YWMR2B20
@8
= @9
= @10
== ~%tutu_var%RIELTA~ @11
== ~%YESLICK_JOINED%~ @12
EXIT

APPEND ~%YESLICK_JOINED%~
  /* Rieltar goes hostile */
  IF ~~ YWMR2B5
  SAY @72
  IF ~~ THEN DO ~SetGlobal("X#YRACTH","GLOBAL",1)~ EXIT
  END

  /* If Yeslick and the party fight Rieltar and win */
  IF WEIGHT #-2 ~%BGT_VAR% Global("X#YRACTH","GLOBAL",3)~ YATPFRAW1
  SAY @78
  ++ @79 DO ~SetGlobal("X#YRACTH","GLOBAL",4)~ + YATPFRAW2
  ++ @80 DO ~SetGlobal("X#YRACTH","GLOBAL",4)~ + YATPFRAW3
  ++ @81 DO ~SetGlobal("X#YRACTH","GLOBAL",4)~ + YATPFRAW4
  END

  IF ~~ YATPFRAW2
  SAY @82
  IF ~~ THEN EXIT
  END

  IF ~~ YATPFRAW3
  SAY @83
  IF ~~ THEN EXIT
  END

  IF ~~ YATPFRAW4
  SAY @84
  IF ~~ THEN EXIT
  END
END
