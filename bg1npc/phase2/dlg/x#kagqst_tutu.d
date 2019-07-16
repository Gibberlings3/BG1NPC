/* Replacement Kagain's Quest */
/* cleaning out old quest */
REPLACE_STATE_TRIGGER ~%KAGAIN_JOINED%~ 0 ~False()~

ADD_TRANS_ACTION ~%tutu_var%KAGAIN~ BEGIN 0 END BEGIN END ~SetGlobal("KagainCaravan","GLOBAL",20)~

ADD_TRANS_ACTION ~%tutu_var%KAGAIN~ BEGIN 7 END BEGIN END ~SetGlobal("KagainCaravan","GLOBAL",20) SetGlobal("X#KagainCaravan","GLOBAL",1)~

/* making sure the quest can't happen if Eddard is already dead */
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
    IF ~~ THEN REPLY @34 DO ~EraseJournalEntry(@48) SetGlobal("X#KagainCaravan","GLOBAL",5) JoinParty()~ UNSOLVED_JOURNAL @35 EXIT
  END

  /* If the party did not recover Eddard's fibula, quest is over */
  IF ~~ THEN BEGIN X#KagBandResolvAlone2
    SAY @52
    IF ~~ THEN REPLY @56 SOLVED_JOURNAL @54 GOTO X#KAQUDISMISS
    IF ~~ THEN REPLY @34 DO ~EraseJournalEntry(@48) SetGlobal("X#KagainCaravan","GLOBAL",5) JoinParty()~ SOLVED_JOURNAL @54 EXIT
  END

  IF ~~ THEN BEGIN X#KAQUDISMISS
    SAY @37
    IF ~~ THEN DO ~EraseJournalEntry(@48) SetGlobal("X#KagainCaravan","GLOBAL",5)~ EXIT
  END
END // APPEND ~%tutu_var%KAGAIN~

APPEND ~%KAGAIN_JOINED%~
  /* Kagain prompts party to find caravan and tells them where to find it */
  IF WEIGHT #-2 ~%BGT_VAR% Global("X#KagainCaravan","GLOBAL",2)~ THEN BEGIN X#KagainQuestMoveAlong
    SAY @38
    = @39
    IF ~~ THEN DO ~SetGlobal("X#KagainCaravan","GLOBAL",3)~ EXIT
  END

  /* Kagain finds Eddard Silvershield's body */
  IF WEIGHT #-2 ~%BGT_VAR% Global("X#KagainCaravan","GLOBAL",4)~ THEN BEGIN X#KagainQuestResolved
    SAY @40
    IF ~~ THEN REPLY @41 DO ~SetGlobal("X#KagainCaravan","GLOBAL",5)~ GOTO X#KAQUDISMISSParty
    IF ~~ THEN REPLY @42 DO ~SetGlobal("X#KagainCaravan","GLOBAL",5)~ GOTO X#KAQUREWARDParty
  END

  IF ~~ THEN BEGIN X#KAQUDISMISSParty
    SAY @43
    IF ~~ THEN DO ~ChangeAIScript("",DEFAULT) SetGlobal("%KICKED_OUT%","LOCALS",1) SetLeavePartyDialogFile() EraseJournalEntry(@48) LeaveParty()~ UNSOLVED_JOURNAL @35 EXIT
  END

  IF ~~ THEN BEGIN X#KAQUREWARDParty
    SAY @45
    IF ~NumInPartyGT(5)~ THEN DO ~EraseJournalEntry(@48) GiveGoldForce(75)~ UNSOLVED_JOURNAL @35 EXIT
    IF ~NumInParty(5)~ THEN DO ~EraseJournalEntry(@48) GiveGoldForce(60)~ UNSOLVED_JOURNAL @35 EXIT
    IF ~NumInParty(4)~ THEN DO ~EraseJournalEntry(@48) GiveGoldForce(45)~ UNSOLVED_JOURNAL @35 EXIT
    IF ~NumInParty(3)~ THEN DO ~EraseJournalEntry(@48) GiveGoldForce(30)~ UNSOLVED_JOURNAL @35 EXIT
    IF ~NumInPartyLT(3)~ THEN DO ~EraseJournalEntry(@48) GiveGoldForce(15)~ UNSOLVED_JOURNAL @35 EXIT
  END
END // APPEND ~%KAGAIN_JOINED%~


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
  SetGlobal("X#KagainCaravan","GLOBAL",3)
  Shout(ASSIST)
  Enemy()~
EXIT


// Dialogue with Lady Silvershield
EXTEND_BOTTOM ~%tutu_var%BRILLA~ 0
  IF ~PartyHasItem("X#SILSH")~ THEN REPLY @7 GOTO X#BrillaEddardDeath
END

CHAIN ~%tutu_var%BRILLA~ X#BrillaEddardDeath
  @8
  // Blocking on T1M2DeadEddy for cross-mod compatibility with Thimblerig.
  == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("T1M2DeadEddy","GLOBAL",2)~ THEN @9
  == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) OR(2) GlobalGT("T1M2DeadEddy","GLOBAL",1) GlobalGT("X#SkieSeesEddard","GLOBAL",0)~ THEN @58
  // == ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("T1M2DeadEddy","GLOBAL",2)~ THEN @10
  == ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @11
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
  IF ~~ THEN DO ~SetGlobal("X#KagainCaravan","GLOBAL",6) AddexperienceParty(3000) EraseJournalEntry(@35) EraseJournalEntry(@48) EraseJournalEntry(@54) ActionOverride("brilla",TakePartyItem("X#SILSH"))  ActionOverride("brilla",DestroyItem("X#SILSH"))~ SOLVED_JOURNAL @49
EXIT


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
