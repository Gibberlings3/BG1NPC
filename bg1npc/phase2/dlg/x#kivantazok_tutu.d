/* Kivan-Tazok Interactions for Tutu/BGT/BGEE v<2.5 */

/* Kivan, First Entry to Bandit Camp - if no cutscene */
APPEND ~%KIVAN_JOINED%~
  IF WEIGHT #-2 ~%BGT_VAR% Global("X#KFEBC","GLOBAL",1)~ THEN BEGIN KFEBC1
  SAY @1
  ++ @2 DO ~SetGlobal("X#KFEBC","GLOBAL",2)~ + KFEBCP
  ++ @3 DO ~SetGlobal("X#KFEBC","GLOBAL",2)~ + KFEBCP
  ++ @4 DO ~SetGlobal("X#KFEBC","GLOBAL",2)~ + KFEBCNP
  END

  IF ~~ KFEBCP // Prayer
  SAY @5
  IF ~~ EXIT
  END

  IF ~~ KFEBCNP // No Prayer
  SAY @6
  IF ~~ EXIT
  END
END

/* Kivan interjects on dialogue with Tazok */
EXTEND_BOTTOM ~%tutu_var%TAZOK%eet_var%~ 0 3 17 33
  IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN EXTERN ~%KIVAN_JOINED%~ X#KivanTazok1
END

CHAIN ~%KIVAN_JOINED%~ X#KivanTazok1
  @7
  == ~%tutu_var%TAZOK%eet_var%~ @8
  == ~%KIVAN_JOINED%~ @9
  == ~%tutu_var%TAZOK%eet_var%~ @10
  END
  IF ~~ THEN DO ~SetGlobal("JoinedBandits","GLOBAL",5) EndCutSceneMode() Enemy()~ JOURNAL @101
EXIT

/* Tazok Loses Fight - Prisoner Branch */
APPEND ~%tutu_var%TAZOK%eet_var%~
  IF WEIGHT #-1 ~%BGT_VAR% !Global("JoinedBandits","GLOBAL",2) HPPercentLT(Myself,50) Global("FoughtTazok","GLOBAL",0)~ THEN X#KivanTazok2
  SAY @11
  IF ~~ THEN DO ~SetGlobal("BeatTazok","GLOBAL",1)
  SetGlobal("FoughtTazok","GLOBAL",1)
  SetGlobal("JoinedBandits","GLOBAL",0)
  ActionOverride("banditcr",Enemy())
  ActionOverride("teven",Enemy())
  ActionOverride("raiken",Enemy())
  ActionOverride("Tazok",EscapeArea())~ JOURNAL @102 EXIT
  IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN EXTERN ~%KIVAN_JOINED%~ X#KivanTazokFlee
  END
END

/* Kivan Reaction to Tazok Fleeing */
CHAIN ~%KIVAN_JOINED%~ X#KivanTazokFlee
  @12
  == ~%tutu_var%TAZOK%eet_var%~ @13
  END
  IF ~~ THEN DO ~SetGlobal("BeatTazok","GLOBAL",1)
  SetGlobal("FoughtTazok","GLOBAL",1)
  SetGlobal("JoinedBandits","GLOBAL",0)
  ActionOverride("banditcr",Enemy())
  ActionOverride("teven",Enemy())
  ActionOverride("raiken",Enemy())
  ActionOverride("Tazok",EscapeArea())~ JOURNAL @103
EXIT

/* Add state triggers to TAZOK 8 & 13 */
ADD_STATE_TRIGGER ~%tutu_var%TAZOK%eet_var%~ 8 ~Global("JoinedBandits","GLOBAL",2)~
ADD_STATE_TRIGGER ~%tutu_var%TAZOK%eet_var%~ 13 ~Global("JoinedBandits","GLOBAL",2)~


/* Kivan-Tazok Interactions at final fight */
BEGIN ~%tutu_var%TAZOK2~

ADD_TRANS_ACTION %tutu_var%SAREVO BEGIN 15 16 18 19 20 21 END BEGIN END
~SetGlobal("X#KivanSarevokTazok","GLOBAL",1)~

CHAIN IF WEIGHT #-1 ~Global("X#KivanFinalFight","GLOBAL",1)~ THEN ~%KIVAN_JOINED%~ X#KivanTazokLiving
  @14
  DO ~SetGlobal("X#KivanFinalFight","GLOBAL",2)~
  == ~%tutu_var%TAZOK2~ @15
  == ~%KIVAN_JOINED%~ @16
EXIT
