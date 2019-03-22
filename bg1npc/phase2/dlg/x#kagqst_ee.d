/* Expanded Kagain's Quest for BGEEv2.5+*/

/* Aborting quest if the party has already found Eddard Silvershield's body */
EXTEND_BOTTOM ~%tutu_var%KAGAIN~ 2
  IF ~Global("X#CaravanBanditEncounter","GLOBAL",2)~ THEN REPLY @0 GOTO X#KagQuestDerail1
END

ADD_TRANS_TRIGGER ~%tutu_var%KAGAIN~ 7 ~!Global("X#CaravanBanditEncounter","GLOBAL",2)~ DO 0

EXTEND_BOTTOM ~%tutu_var%KAGAIN~ 7
  IF ~Global("X#CaravanBanditEncounter","GLOBAL",2) PartyHasItem("X#SILSH")~ THEN REPLY @29 GOTO X#KagBandResolvAlone
  IF ~Global("X#CaravanBanditEncounter","GLOBAL",2) PartyHasItem("X#SILSH")~ THEN REPLY @26 GOTO X#KagBandResolvAlone
  IF ~Global("X#CaravanBanditEncounter","GLOBAL",2) PartyHasItem("X#SILSH")~ THEN REPLY @30 GOTO X#KagBandResolvAlone
  IF ~Global("X#CaravanBanditEncounter","GLOBAL",2) !PartyHasItem("X#SILSH")~ THEN REPLY @50 GOTO X#KagBandResolvAlone2
  IF ~Global("X#CaravanBanditEncounter","GLOBAL",2) !PartyHasItem("X#SILSH")~ THEN REPLY @51 GOTO X#KagBandResolvAlone2
END

APPEND ~%tutu_var%KAGAIN~
  IF ~~ THEN BEGIN X#KagQuestDerail1
  SAY @24
  IF ~PartyHasItem("X#SILSH")~ THEN REPLY @25 GOTO X#KagBandResolvAlone
  IF ~PartyHasItem("X#SILSH")~ THEN REPLY @26 GOTO X#KagBandResolvAlone
  IF ~PartyHasItem("X#SILSH")~ THEN REPLY @27 GOTO X#KagBandResolvAlone
  IF ~!PartyHasItem("X#SILSH")~ THEN REPLY @55 GOTO X#KagBandResolvAlone2
  IF ~!PartyHasItem("X#SILSH")~ THEN REPLY @51 GOTO X#KagBandResolvAlone2
  END

  /* If the party recovered Eddard's fibula, can return fibula to Silvershields */
  IF ~~ THEN BEGIN X#KagBandResolvAlone
  SAY @31
  IF ~~ THEN REPLY @56 UNSOLVED_JOURNAL @35 GOTO X#KAQUDISMISS
  IF ~~ THEN REPLY @34 DO ~EraseJournalEntry(@48) SetGlobal("X#KagainCaravan","GLOBAL",5) SetGlobal("bd_entboy_removal","GLOBAL",1) SetGlobal("KagainCaravan","GLOBAL",4) JoinParty()~ UNSOLVED_JOURNAL @35 EXIT
  END

  /* If the party did not recover Eddard's fibula, quest is over */
  IF ~~ THEN BEGIN X#KagBandResolvAlone2
  SAY @52
  IF ~~ THEN REPLY @56 SOLVED_JOURNAL @54 GOTO X#KAQUDISMISS
  IF ~~ THEN REPLY @34 DO ~EraseJournalEntry(@48) SetGlobal("X#KagainCaravan","GLOBAL",5) SetGlobal("bd_entboy_removal","GLOBAL",1) SetGlobal("KagainCaravan","GLOBAL",4) JoinParty()~ SOLVED_JOURNAL @54 EXIT
  END

  IF ~~ THEN BEGIN X#KAQUDISMISS
  SAY @37
  IF ~~ THEN DO ~EraseJournalEntry(@48) SetGlobal("X#KagainCaravan","GLOBAL",5) SetGlobal("bd_entboy_removal","GLOBAL",1) SetGlobal("KagainCaravan","GLOBAL",4)~ EXIT
  END
END // APPEND ~%tutu_var%KAGAIN~

// Kagain tells party where to find caravan
I_C_T ~%KAGAIN_JOINED%~ 4 X#KagainQuestMoveAlong
== ~%KAGAIN_JOINED%~ IF ~IsValidForPartyDialogue("kagain")~ THEN @39
END

// Caravan Bandit Dialogue
BEGIN ~X#KABAND~

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#CaravanBanditEncounter","GLOBAL",1)~ THEN ~X#KABAND~ X#KABANDstart
  @1
  == ~%KAGAIN_JOINED%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @2
  == ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @3
  == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @4
  == ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @5
  == ~X#KABAND~ @6
  DO ~SetGlobal("X#CaravanBanditEncounter","GLOBAL",2)
  Shout(ASSIST)
  Enemy()~
EXIT

// Set X#KagainCaravan variable when Kagain finds Eddard's body
ADD_TRANS_ACTION ~%KAGAIN_JOINED%~ BEGIN 0 END BEGIN END ~SetGlobal("X#KagainCaravan","GLOBAL",5)~

ADD_TRANS_ACTION ~%KAGAIN_JOINED%~ BEGIN 0 END BEGIN 0 END ~SetGlobal("KagainCaravan","GLOBAL",4)~

// Change journal entry to unsolved for continuation of quest
ALTER_TRANS ~%KAGAIN_JOINED%~  // file name
  BEGIN 1 END // state number (can be more than one)
  BEGIN END // transition number (can be more than one)
  BEGIN // list of changes, see below for flags
    "UNSOLVED_JOURNAL" ~@35~
END

ALTER_TRANS ~%KAGAIN_JOINED%~  // file name
  BEGIN 0 END // state number (can be more than one)
  BEGIN 0 1 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 END // transition number (can be more than one)
  BEGIN // list of changes, see below for flags
    "UNSOLVED_JOURNAL" ~@35~
END

// Set X#SkieSeesEddard variable if Skie is present when Eddard's body is found
ADD_TRANS_ACTION ~%KAGAIN_JOINED%~ BEGIN 1 END BEGIN 1 END ~SetGlobal("X#SkieSeesEddard","GLOBAL",2)~

ADD_TRANS_ACTION ~%KAGAIN_JOINED%~ BEGIN 0 END BEGIN 22 23 24 25 26 27 28 29 END ~SetGlobal("X#SkieSeesEddard","GLOBAL",2)~

APPEND ~%SKIE_JOINED%~
IF WEIGHT #-2 ~Global("X#SkieSeesEddard","GLOBAL",1)~ THEN BEGIN X#SkieEddardNoKag
  SAY @57
  IF ~~ THEN DO ~SetGlobal("X#SkieSeesEddard","GLOBAL",2)~ EXIT
  END
END


// Dialogue with Lady Silvershield
EXTEND_TOP ~%tutu_var%BRILLA~ 0 #7
IF ~PartyHasItem("X#SILSH") !Global("X#KagainCaravan","GLOBAL",6)~ THEN REPLY @7 GOTO X#BrillaEddardDeath
END

ADD_TRANS_TRIGGER ~%tutu_var%BRILLA~ 8 ~OR(2) !PartyHasItem("X#SILSH") Global("X#KagainCaravan","GLOBAL",6)~ DO 0

EXTEND_TOP ~%tutu_var%BRILLA~ 8 #1
IF ~PartyHasItem("X#SILSH") !Global("X#KagainCaravan","GLOBAL",6)~ THEN REPLY @7 GOTO X#BrillaEddardDeath
END


APPEND ~%tutu_var%BRILLA~
  IF ~~ THEN BEGIN X#BrillaEddardDeath
    SAY @8
    IF ~OR(4) !InParty("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID) Global("X#SkieBrillaGuards","GLOBAL",1)~ THEN DO ~SetGlobal("X#KagainCaravan","GLOBAL",6) AddexperienceParty(3000) EraseJournalEntry(@35) EraseJournalEntry(@48) EraseJournalEntry(@54) ActionOverride("brilla",TakePartyItem("X#SILSH"))  ActionOverride("brilla",DestroyItem("X#SILSH"))~ SOLVED_JOURNAL @49 EXIT
    IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) Global("X#SkieBrillaGuards","GLOBAL",0) OR(2) GlobalGT("T1M2DeadEddy","GLOBAL",1) GlobalGT("X#SkieSeesEddard","GLOBAL",0)~ THEN DO ~SetGlobal("X#KagainCaravan","GLOBAL",6) AddexperienceParty(3000) EraseJournalEntry(@35) EraseJournalEntry(@48) EraseJournalEntry(@54) ActionOverride("brilla",TakePartyItem("X#SILSH"))  ActionOverride("brilla",DestroyItem("X#SILSH"))~ SOLVED_JOURNAL @49 EXTERN ~%SKIE_JOINED%~ X#BrillaEddardDeathSkieSee
    IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) Global("X#SkieBrillaGuards","GLOBAL",0) GlobalLT("T1M2DeadEddy","GLOBAL",2) Global("X#SkieSeesEddard","GLOBAL",0)~ THEN DO ~SetGlobal("X#KagainCaravan","GLOBAL",6) AddexperienceParty(3000) EraseJournalEntry(@35) EraseJournalEntry(@48) EraseJournalEntry(@54) ActionOverride("brilla",TakePartyItem("X#SILSH"))  ActionOverride("brilla",DestroyItem("X#SILSH"))~ SOLVED_JOURNAL @49 EXTERN ~%SKIE_JOINED%~ X#BrillaEddardDeathSkieNotSee
  END
END

APPEND ~%SKIE_JOINED%~
  IF ~~ THEN BEGIN X#BrillaEddardDeathSkieNotSee
    SAY @9
    IF ~~ THEN DO ~SetGlobal("X#SkieBrillaGuards","GLOBAL",1)~ EXTERN ~%tutu_var%BRILLA~ %SkieBrillaGuards%
  END

  IF ~~ THEN BEGIN X#BrillaEddardDeathSkieSee
    SAY @58
    IF ~~ THEN DO ~SetGlobal("X#SkieBrillaGuards","GLOBAL",1)~ EXTERN ~%tutu_var%BRILLA~ %SkieBrillaGuards%
  END
END


/* == ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @11
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @12
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @13
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @14
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @15
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @16
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @17
= @18
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @19
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @20
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @21
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @22
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @23
END
IF ~~ THEN DO ~SetGlobal("X#KagainCaravan","GLOBAL",6) AddexperienceParty(3000) EraseJournalEntry(@35) EraseJournalEntry(@48) EraseJournalEntry(@54) ActionOverride("brilla",TakePartyItem("X#SILSH"))  ActionOverride("brilla",DestroyItem("X#SILSH"))~ SOLVED_JOURNAL @49 EXIT */

// Add transtion for Silvershield house guard if party has Eddard's fibula
EXTEND_BOTTOM ~%tutu_var%HOUSG3~ %housg3state0%
IF ~PartyHasItem("X#SILSH")~ THEN REPLY @46 GOTO X#SilverGuardPass
END

APPEND ~%tutu_var%HOUSG3~
IF ~~ THEN BEGIN X#SilverGuardPass
SAY @47
IF ~~ THEN EXIT
END
END

// Freindly responses from house guard and servant if the party has returned Eddard's fibula
REPLACE_STATE_TRIGGER ~%tutu_var%HOUSG3~ %housg3state5%
~OR(4) StateCheck(Myself,STATE_CHARMED) IsGabber("SKIE") IfValidForPartyDialog("SKIE") Global("X#KagainCaravan","GLOBAL",6)~

SET_WEIGHT ~%tutu_var%HOUSG3~ %housg3state5% #-1

REPLACE_STATE_TRIGGER ~%tutu_var%SERVA2~ 11
~OR(4) StateCheck(Myself,STATE_CHARMED) IsGabber("SKIE") IfValidForPartyDialog("SKIE") Global("X#KagainCaravan","GLOBAL",6)~

SET_WEIGHT ~%tutu_var%SERVA2~ 11 #-1
