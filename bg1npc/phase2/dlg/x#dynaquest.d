/* Dynaheir Quest */
/* BEGINS FROM FW4200 the end of the Drizzt/Gnolls encounter. After Drizzt is helped, */
/* Drizzt says thanks. He sets a global which allows the rest of the quest to start then this quest starts. */
/* BEGIN X#DYNAQUEST.D */

BEGIN ~X#DGNLE~
BEGIN ~X#DGNLG~
BEGIN ~X#WINSKI~
BEGIN ~X#TANARI~
BEGIN ~X#DRIZZT~

I_C_T ~%tutu_var%DRIZZT~ 10 X#DynaJournal
== ~%tutu_var%DRIZZT~ IF ~~ THEN @0 DO ~AddJournalEntry(@225,INFO)~
== ~%tutu_var%DRIZZT~ @226
END

/* First Meet Dynaheir - is in the party, whether or not party has already met Drizzt */
CHAIN IF WEIGHT #-4 ~%BGT_VAR% Global("X#DYQJournalTalk","GLOBAL",1)~ THEN ~%DYNAHEIR_JOINED%~ X#DYQ01
@1 DO ~SetGlobal("X#DYQJournalTalk","GLOBAL",2)~
END
++ @2 DO ~AddJournalEntry(@223,QUEST)~ EXIT
++ @3 DO ~AddJournalEntry(@223,QUEST)~ EXIT
++ @4 DO ~AddJournalEntry(@223,QUEST)~ EXIT

/* Drizzt starts Dynaheir's Quest */
CHAIN IF WEIGHT #4 ~%BGT_VAR% Global("X#DQDrizztStart","GLOBAL",1)~ THEN ~X#DRIZZT~ X#DynaherQuestBegins
@5
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @6
== ~X#DRIZZT~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @7
== ~X#DRIZZT~ @8 
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ @9
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ @10 
== ~%DYNAHEIR_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ @11
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ @12
== ~X#DRIZZT~ @13
== ~%DYNAHEIR_BANTER%~ @14
== ~X#DRIZZT~ @15
== ~%DYNAHEIR_BANTER%~ @16
END
++ @17 DO ~SetGlobal("X#DynaJournal","GLOBAL",3) SetGlobal("X#DQDrizztStart","GLOBAL",2) GiveItemCreate("X#DYJOR1",Player1,1,1,0)~ GOTO X#DQDZ22
++ @18 DO ~SetGlobal("X#DynaJournal","GLOBAL",3) SetGlobal("X#DQDrizztStart","GLOBAL",2) GiveItemCreate("X#DYJOR1",Player1,1,1,0)~ GOTO X#DQDZ23
++ @19 DO ~SetGlobal("X#DynaJournal","GLOBAL",3) SetGlobal("X#DQDrizztStart","GLOBAL",2) GiveItemCreate("X#DYJOR1",Player1,1,1,0)~ EXTERN ~%DYNAHEIR_BANTER%~ X#DQDZ28

APPEND ~%DYNAHEIR_BANTER%~
IF ~~ X#DQDZ28
SAY @20
++ @21 EXTERN ~X#DRIZZT~ X#DQDZ23
++ @22 EXTERN ~X#DRIZZT~ X#DQDZ22
END
END

APPEND ~X#DRIZZT~
IF ~~ X#DQDZ22
SAY @23
++ @24 + X#DQDZ24
++ @25 + X#DQDZ25
++ @26 + X#DQDZ27
END

IF ~~ X#DQDZ23
SAY @27
++ @24 + X#DQDZ26
++ @25 + X#DQDZ25
++ @28 + X#DQDZ27
END

/* Drizzt searches on his own - X#DztSearch=TWO_DAYS X#DynaJournal=3 // Party has encounter with Good Gnolls next. */
IF ~~ X#DQDZ24
SAY @29
IF ~~ DO ~EraseJournalEntry(@223) EraseJournalEntry(@225) SetGlobalTimer("X#DQGGnollTimer","GLOBAL",20) SetGlobalTimer("X#DztSearch","GLOBAL",TWO_DAYS) SetGlobal("X#DrzztDynaSolo","GLOBAL",1) EscapeArea()~ UNSOLVED_JOURNAL @30 EXIT
END

/* Drizzt helps party search X#DztSearch=ONE_DAY X#DynaJournal=3 // Party has encounter with Good Gnolls next. */
IF ~~ X#DQDZ25
SAY @31
IF ~~ DO ~EraseJournalEntry(@223) EraseJournalEntry(@225) SetGlobalTimer("X#DQGGnollTimer","GLOBAL",20) SetGlobalTimer("X#DztSearch","GLOBAL",ONE_DAY) EscapeArea()~ UNSOLVED_JOURNAL @32 EXIT
END

/* Drizzt searches on his own - X#DztSearch=ONE_DAY X#DynaJournal=3 //Party has encounter with Good Gnolls next. */
IF ~~ X#DQDZ26
SAY @33
IF ~~ DO ~EraseJournalEntry(@223) EraseJournalEntry(@225) SetGlobalTimer("X#DQGGnollTimer","GLOBAL",20) SetGlobalTimer("X#DztSearch","GLOBAL",ONE_DAY) EscapeArea()~ UNSOLVED_JOURNAL @34 EXIT
END
 
/* Drizzt dismissed, Party searches alone - X#DynaJournal=3 no timer set, Drizzt escapes area forever // Party has encounter with Good Gnolls then Evil Gnolls next. */
IF ~~ X#DQDZ27
SAY @35
IF ~~ DO ~EraseJournalEntry(@223) EraseJournalEntry(@225) SetGlobal("X#DyQuPartyAlone","GLOBAL",1) SetGlobalTimer("X#DQGGnollTimer","GLOBAL",20) EscapeArea()~ UNSOLVED_JOURNAL @36 EXIT
END
END

CHAIN IF ~%BGT_VAR% Global("X#DQGoodGnolls","GLOBAL",1)~ THEN ~X#DGNLG~ X#DQFriendlyGnollsStart
@37
== ~%DYNAHEIR_BANTER%~ @38
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @39
== ~%DYNAHEIR_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @40
END
++ @41 DO ~SetGlobal("X#DQGoodGnolls","GLOBAL",2) SetGlobal("X#DynaJournal","GLOBAL",5) SetGlobalTimer("X#DQEGnollTimer","GLOBAL",40)~ EXTERN ~X#DGNLG~ X#DQFGKillingWrong
+ ~CheckStatGT(Player1,15,INT)~ + @42 DO ~SetGlobal("X#DQGoodGnolls","GLOBAL",2) SetGlobal("X#DynaJournal","GLOBAL",5) SetGlobalTimer("X#DQEGnollTimer","GLOBAL",40)~ EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUKnowRasheman
++ @43 DO ~SetGlobal("X#DQGoodGnolls","GLOBAL",2) SetGlobal("X#DynaJournal","GLOBAL",5) SetGlobalTimer("X#DQEGnollTimer","GLOBAL",40)~ EXTERN ~X#DGNLG~ X#DQFGKillingWrong
++ @44 DO ~SetGlobal("X#DQGoodGnolls","GLOBAL",2) SetGlobal("X#DynaJournal","GLOBAL",5) SetGlobalTimer("X#DQEGnollTimer","GLOBAL",40)~ EXTERN ~X#DGNLG~ X#DQFGAskOldOne
++ @45 DO ~SetGlobal("X#DQGoodGnolls","GLOBAL",2) SetGlobal("X#DynaJournal","GLOBAL",5) SetGlobalTimer("X#DQEGnollTimer","GLOBAL",40)~ EXTERN ~X#DGNLG~ X#DQFGLeaveImmediately

CHAIN ~%DYNAHEIR_BANTER%~ X#DYQUKnowRasheman
@46
END
++ @47 EXTERN ~X#DGNLG~ X#DQFGKillingWrong
++ @48 EXTERN ~X#DGNLG~ X#DQFGKillingWrong
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @49 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUNoDanger

CHAIN ~%DYNAHEIR_BANTER%~ X#DYQUNoDanger
@50
== ~X#DGNLG~ @51
== ~X#DGNLG~ @52
== ~%DYNAHEIR_BANTER%~ @53
== ~X#DGNLG~ @54
== ~%DYNAHEIR_BANTER%~ @55
END
++ @56 EXTERN ~X#DGNLG~ X#DQFGAskJournal
++ @57 EXTERN ~X#DGNLG~ X#DQFGAskJournal
++ @58 EXTERN ~X#DGNLG~ X#DQFGAskJournal

CHAIN ~X#DGNLG~ X#DQFGKillingWrong
@59
== ~%DYNAHEIR_BANTER%~ @53
== ~X#DGNLG~ @54
== ~%DYNAHEIR_BANTER%~ @55
END
++ @60 EXTERN ~X#DGNLG~ X#DQFGAskJournal
++ @58 EXTERN ~X#DGNLG~ X#DQFGAskJournal
++ @61 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUEndGoodGnolls

CHAIN ~X#DGNLG~ X#DQFGAskOldOne
@51
== ~%DYNAHEIR_BANTER%~ @62
== ~%DYNAHEIR_BANTER%~ @63
END
++ @64 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUNoDanger
++ @65 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUNoDanger
++ @66 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUNoDanger

CHAIN ~X#DGNLG~ X#DQFGAskJournal
@67
END
++ @68 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUEndGoodGnolls
++ @69 DO ~AddexperienceParty(2000) ActionOverride("X#DGNLG1",EscapeArea()) ActionOverride("X#DGNLG2",EscapeArea()) ActionOverride("X#DGNLG3",EscapeArea()) ActionOverride("X#DGNLG4",EscapeArea())~ EXIT
++ @70 DO ~AddexperienceParty(2000) ActionOverride("X#DGNLG1",EscapeArea()) ActionOverride("X#DGNLG2",EscapeArea()) ActionOverride("X#DGNLG3",EscapeArea()) ActionOverride("X#DGNLG4",EscapeArea())~ EXIT
++ @71 DO ~AddexperienceParty(2000)~ EXTERN ~X#DGNLG~ X#DQFGLeaveImmediately
+ ~Class(Player1,PALADIN)~ + @72 DO ~AddexperienceParty(2000) ActionOverride("X#DGNLG4",EscapeArea()) ActionOverride("X#DGNLG3",EscapeArea()) ActionOverride("X#DGNLG2",EscapeArea()) ActionOverride("X#DGNLG1",EscapeArea())~ EXIT
++ @73 EXTERN ~X#DGNLG~ X#DQFGLeaveImmediately

APPEND ~X#DGNLG~ 
IF ~~ X#DQFGLeaveImmediately
SAY @74
IF ~~ THEN DO ~ActionOverride("X#DGNLG4",EscapeArea()) ActionOverride("X#DGNLG3",EscapeArea()) ActionOverride("X#DGNLG2",EscapeArea()) ActionOverride("X#DGNLG1",EscapeArea())~ EXIT
END
END

APPEND ~%DYNAHEIR_BANTER%~
IF ~~ X#DYQUEndGoodGnolls
SAY @75
++ @76 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUEndLastWord
++ @57 EXTERN ~X#DGNLG~ X#DQFGBookBack
++ @77 EXTERN ~X#DGNLG~ X#DQFGLeaveImmediately
+ ~Class(Player1,PALADIN)~ + @72 DO ~ActionOverride("X#DGNLG4",EscapeArea()) ActionOverride("X#DGNLG3",EscapeArea()) ActionOverride("X#DGNLG2",EscapeArea()) ActionOverride("X#DGNLG1",EscapeArea())~ EXIT
END
IF ~~ X#DYQUEndLastWord
SAY @78
IF ~~ THEN DO ~AddexperienceParty(2000) ActionOverride("X#DGNLG4",EscapeArea()) ActionOverride("X#DGNLG3",EscapeArea()) ActionOverride("X#DGNLG2",EscapeArea()) ActionOverride("X#DGNLG1",EscapeArea())~ EXIT
END

END

CHAIN ~X#DGNLG~ X#DQFGBookBack
@79
== ~%DYNAHEIR_BANTER%~ @80
END
++ @73 EXTERN ~X#DGNLG~ X#DQFGLeaveImmediately
++ @81 DO ~AddexperienceParty(2000) ActionOverride("X#DGNLG1",EscapeArea()) ActionOverride("X#DGNLG2",EscapeArea()) ActionOverride("X#DGNLG3",EscapeArea()) ActionOverride("X#DGNLG4",EscapeArea())~ EXIT
++ @76 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUEndLastWord

APPEND ~X#DGNLE~
IF ~%BGT_VAR% Global("X#DyQuPartyAlone","GLOBAL",3)~ THEN BEGIN DYQUGnollsAttack
SAY @82
IF ~~ THEN DO ~SetGlobal("X#DyQuPartyAlone","GLOBAL",4) ActionOverride("X#DGNLE1",Enemy()) ActionOverride("X#DGNLE2",Enemy()) ActionOverride("X#DGNLE3",Enemy()) ActionOverride("X#DGNLE4",Enemy())~
EXIT
END
END

/* When killed Gnolls, got the journal in inventory */
APPEND ~%DYNAHEIR_JOINED%~
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYGnollsKilled","GLOBAL",1)~ THEN BEGIN X#DYQU50
SAY @83
IF ~OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~ DO ~EraseJournalEntry(@223) EraseJournalEntry(@225) EraseJournalEntry(@30) EraseJournalEntry(@32) EraseJournalEntry(@34) EraseJournalEntry(@36) SetGlobal("X#DYGnollsKilled","GLOBAL",2) SetGlobal("X#DynaJournal","GLOBAL",8) SetGlobalTimer("X#DJRomanceAbduction","GLOBAL",TWO_DAYS) GiveItemCreate("SCRL9H",Player1,1,1,0) TakePartyItem("X#DYJOR1") DestroyItem("X#DYJOR1")~ SOLVED_JOURNAL @224 EXIT
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ DO ~EraseJournalEntry(@223) EraseJournalEntry(@225) EraseJournalEntry(@30) EraseJournalEntry(@32) EraseJournalEntry(@34) EraseJournalEntry(@36) SetGlobal("X#DYGnollsKilled","GLOBAL",2) SetGlobal("X#DynaJournal","GLOBAL",8) SetGlobalTimer("X#DJRomanceAbduction","GLOBAL",TWO_DAYS) SetGlobalTimer("X#DJTOED","GLOBAL",ONE_DAY) GiveItemCreate("SCRL9H",Player1,1,1,0) TakePartyItem("X#DYJOR1") DestroyItem("X#DYJOR1")~ EXTERN ~%EDWIN_BANTER%~ X#DYQU51
END
END

APPEND ~%EDWIN_BANTER%~
IF ~~ X#DYQU51
SAY @84
++ @85 GOTO X#DYQUED4
++ @86 GOTO X#DYQUED5
++ @87 GOTO X#DYQUED6
+ ~Gender(Player1,MALE)~ + @88 GOTO X#DYQUED78
+ ~Gender(Player1,FEMALE)~ + @89 GOTO X#DYQUED78
END

IF ~~ X#DYQUED4
SAY @90
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ X#DYQUEDEnd
END

IF ~~ X#DYQUED5
SAY @91
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ X#DYQUEDEnd
END

IF ~~ X#DYQUED6
SAY @92
++ @93 + X#DYQUED9
++ @94 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQUED10
++ @95 + X#DYQUED11
END

IF ~~ X#DYQUED78
SAY @96
IF ~~ EXTERN ~%DYNAHEIR_JOINED%~ X#DYQUEDEnd
END
END

CHAIN ~%EDWIN_BANTER%~ X#DYQUED9
@97
== ~%DYNAHEIR_BANTER%~ @98 EXTERN ~%DYNAHEIR_JOINED%~ X#DYQUEDEnd

APPEND ~%DYNAHEIR_BANTER%~
IF ~~ X#DYQUED10
SAY @99 
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ X#DYQUEDEnd
END
END

CHAIN ~%EDWIN_BANTER%~ X#DYQUED11
@100
== ~%DYNAHEIR_BANTER%~ @101
== ~%EDWIN_BANTER%~ @102
== ~%DYNAHEIR_BANTER%~ @103 EXTERN ~%DYNAHEIR_JOINED%~ X#DYQUEDEnd

CHAIN ~%DYNAHEIR_JOINED%~ X#DYQUEDEnd
@104
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @105
== ~%EDWIN_BANTER%~ @106
END
++ @107 SOLVED_JOURNAL @224 EXIT
++ @108 SOLVED_JOURNAL @224 EXIT
++ @109 SOLVED_JOURNAL @224 EXIT
++ @110 SOLVED_JOURNAL @224 EXIT

/* Return to Drizzt */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DrzztReappears","GLOBAL",1)~ THEN ~X#DRIZZT~ DyQuestDrizztFinal
@111
= @112
= @113
END
IF ~OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#DrzztReappears","GLOBAL",2) SetGlobal("X#DynaJournal","GLOBAL",8) SetGlobalTimer("X#DJRomanceAbduction","GLOBAL",TWO_DAYS) SetGlobalTimer("X#DJTOED","GLOBAL",ONE_DAY) TakePartyItem("X#DYJOR1") DestroyItem("X#DYJOR1")~ EXTERN ~%DYNAHEIR_JOINED%~ X#DYQU31SOLVE
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#DrzztReappears","GLOBAL",2) SetGlobalTimer("X#DJRomanceAbduction","GLOBAL",TWO_DAYS) SetGlobalTimer("X#DJTOED","GLOBAL",ONE_DAY) TakePartyItem("X#DYJOR1") DestroyItem("X#DYJOR1")~ EXTERN ~%EDWIN_BANTER%~ X#EdwinTriesForJournal

CHAIN ~%DYNAHEIR_JOINED%~ X#DYQU31SOLVE
@114
== ~X#DRIZZT~ @115
END
IF ~~ THEN DO ~EraseJournalEntry(@223) EraseJournalEntry(@225) EraseJournalEntry(@30) EraseJournalEntry(@32) EraseJournalEntry(@34) EraseJournalEntry(@36) GiveItemCreate("X#DYJOR2",Player1,1,1,0) SetGlobal("X#DynaJournal","GLOBAL",8) ActionOverride("x#drizzt",EscapeArea())~ SOLVED_JOURNAL @224 EXIT //Player 1 has X#DynaJournal=8, X#DYJOR2.ITM, X#DJRomanceAbduction=TWO_DAYS


CHAIN ~%EDWIN_BANTER%~ X#EdwinTriesForJournal
@116
END
++ @117 EXTERN ~%EDWIN_BANTER%~ X#DYQU311
++ @118 EXTERN ~%EDWIN_BANTER%~ X#DYQU312
++ @119 EXTERN ~%EDWIN_BANTER%~ X#DYQU314

APPEND ~%EDWIN_BANTER%~
IF ~~ X#DYQU311
SAY @120
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ X#DYQU31SOLVE
END

IF ~~ X#DYQU312
SAY @84
++ @85 + X#DYQU314
++ @86 + X#DYQU315
++ @87 + X#DYQU316
+ ~Gender(Player1,MALE)~ + @88 + X#DYQU3178
+ ~Gender(Player1,FEMALE)~ + @89 + X#DYQU3178
END

IF ~~ X#DYQU314
SAY @90
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ X#DYQU31SOLVE
END

IF ~~ X#DYQU315
SAY @91 
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ X#DYQU31SOLVE 
END

IF ~~ X#DYQU316
SAY @92
++ @93 + X#DYQU319
++ @94 EXTERN ~%DYNAHEIR_BANTER%~ X#DYQU3110
++ @95 + X#DYQU3111
END

IF ~~ X#DYQU3178
SAY @96
IF ~~ EXTERN ~%DYNAHEIR_JOINED%~ X#DYQU31SOLVE
END
END

CHAIN ~%EDWIN_BANTER%~ X#DYQU319
@97
== ~%DYNAHEIR_BANTER%~ @98 DO ~SetGlobalTimer("X#DJTOED","GLOBAL",ONE_DAY) SetGlobal("X#DJTOED1","GLOBAL",1)~
END
IF ~~ EXTERN ~%DYNAHEIR_JOINED%~ X#DYQU31SOLVE

APPEND ~%DYNAHEIR_BANTER%~
IF ~~ X#DYQU3110
SAY @99 
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ X#DYQU31SOLVE
END
END

CHAIN ~%EDWIN_BANTER%~ X#DYQU3111
@100
== ~%DYNAHEIR_BANTER%~ @101
== ~%EDWIN_BANTER%~ @102
== ~%DYNAHEIR_BANTER%~ @103 EXTERN ~%DYNAHEIR_JOINED%~ X#DYQU31SOLVE

/* Fight with Edwin1 = Edwin if Journal was given to him */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinReturnsDyJournal","GLOBAL",1)~ THEN ~%DYNAHEIR_JOINED%~ DJtoEend
@121 DO ~SetGlobal("X#EdwinReturnsDyJournal","GLOBAL",2)~
== ~%EDWIN_BANTER%~ @122 EXIT

/* Fight with Edwin2 if the journal was NOT given to him. */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinStealsDyJournal","GLOBAL",1)~ THEN ~%DYNAHEIR_JOINED%~ DYEdwin2
@123 DO ~SetGlobal("X#EdwinStealsDyJournal","GLOBAL",2)~
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @124
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @125
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @126
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @127
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @128
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @129 EXIT

/* Encounter 5,(In Romance Only) Winski teleports onto the group 2 days in game time after encounter with Evil Gnolls: */
/* Initial teleport added to Dynaheir's BCS: _YNAHEIR.BCS X#WINSKI used as walking, instead of %tutu_var%WINSKI2 9sleeping man anim, existing D, and existing .BCS */
APPEND ~X#WINSKI~
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYJWADM","GLOBAL",1)~ THEN BEGIN X#DYJWinskiAbductsDandM
SAY @130
IF ~~ THEN DO ~SetGlobal("X#DYJWADM","GLOBAL",2)~ EXTERN ~%DYNAHEIR_BANTER%~ X#DYWIN61
END
END

CHAIN ~%DYNAHEIR_BANTER%~ X#DYWIN61
@131
== ~X#WINSKI~ @132 EXTERN ~%DYNAHEIR_BANTER%~ X#DYWIN62

CHAIN ~%DYNAHEIR_BANTER%~ X#DYWIN62Dismiss
@133
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @134
== ~X#WINSKI~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @135
== ~X#WINSKI~ @136 DO ~SetGlobal("X#DYQUImpAttack","GLOBAL",1) SetGlobal("X#WinskiTakeDyna","GLOBAL",1) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT

APPEND ~%DYNAHEIR_BANTER%~
IF ~~ X#DYWIN62
SAY @137
++ @138 + X#DYWIN62Dismiss
+ ~Class(Player1,THIEF_ALL)~ + @139 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~Class(Player1,BARD)~ + @140 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~Class(Player1,FIGHTER_ALL)~ + @141 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~Class(Player1,PALADIN)~ + @142 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~Class(Player1,RANGER_ALL)~ + @143 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~Class(Player1,CLERIC_ALL)~ + @144 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~Class(Player1,DRUID_ALL)~ + @145 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~Class(Player1,MONK)~ + @146 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~Class(Player1,MAGE_ALL)~ + @147 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~Class(Player1,SORCERER)~ + @148 EXTERN ~X#WINSKI~ X#DYWIN61love
+ ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ + @149 + X#DYWIN62Dismiss
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @150 + X#DYWIN62Dismiss
++ @151 EXTERN ~X#WINSKI~ X#DYWIN62cash
++ @152 EXTERN ~X#WINSKI~ X#DYWIN61love
++ @153 + X#DYWIN62swear
END

IF ~~ X#DYWIN62swear
SAY @154
IF ~~ THEN EXTERN ~X#WINSKI~ X#DYWIN62swear1
END
END 

APPEND ~X#WINSKI~
IF ~~ X#DYQUWinEndAttack
SAY @155
= @156
= @157
IF ~NumInParty(2)~ THEN DO ~SetGlobal("X#DYQUImpAttack","GLOBAL",2)~ EXIT
IF ~NumInParty(3)~ THEN DO ~SetGlobal("X#DYQUImpAttack","GLOBAL",3)~ EXIT
IF ~NumInParty(4)~ THEN DO ~SetGlobal("X#DYQUImpAttack","GLOBAL",4)~ EXIT
IF ~NumInParty(5)~ THEN DO ~SetGlobal("X#DYQUImpAttack","GLOBAL",5)~ EXIT
IF ~NumInParty(6)~ THEN DO ~SetGlobal("X#DYQUImpAttack","GLOBAL",6)~ EXIT
END

IF ~~ X#DYWIN62cash
SAY @158
IF ~~ THEN DO ~GiveGoldForce(1000)~ EXTERN ~%DYNAHEIR_BANTER%~ X#DYWIN62Dismiss
END

IF ~~ X#DYWIN61love
SAY @159
IF ~~ THEN GOTO X#DYQUWinEndAttack
END

IF ~~ X#DYWIN62swear1
SAY @160
++ @151 + X#DYWIN62cash
++ @152 + X#DYWIN61love
++ @161 + X#DYWIN61love
+ ~OR(2) CheckStatGT(Player1,14,INT) Global("X#HeRashemi","GLOBAL",1)~ + @162 + X#DYQUWinEndAttack
END

END

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyWinWon","GLOBAL",1)~ THEN ~%DYNAHEIR_JOINED%~ X#DYWinskiDefeated
@163 DO ~SetGlobal("X#DyWinWon","GLOBAL",2)~
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @164
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @165
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @166
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @167
== ~%DYNAHEIR_JOINED%~ @168 EXIT

/* Encounter 6 */
/* set up so it will play regardless of romance completion, as long as Dynaheir is in the party and quest and/or romance track successfully completed) */
CHAIN IF WEIGHT #-4 ~%BGT_VAR% Global("X#DynaJournal","GLOBAL",8) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%tutu_var%WINSKI~ X#WinskiFinal
@169
== ~%DYNAHEIR_BANTER%~ @170
== ~%tutu_var%WINSKI~ @171
== ~%DYNAHEIR_BANTER%~ @172
== ~%DYNAHEIR_BANTER%~ @173
== ~%tutu_var%WINSKI~ @174
= @175
= @176
== ~%DYNAHEIR_BANTER%~ @177
== ~%tutu_var%WINSKI~ @178
== ~%tutu_var%WINSKI~ @179
== ~%DYNAHEIR_BANTER%~ @180
== ~%tutu_var%WINSKI~ @181 
== ~%tutu_var%WINSKI~ @182 DO ~StartCutSceneMode() StartCutScene("x#dycut")~ EXIT

CHAIN IF WEIGHT #-2 ~Global("X#DynaJournal","GLOBAL",9)~ THEN ~X#TANARI~ X#TanarriKillsWinski
@183 DO ~SetGlobal("X#DynaJournal","GLOBAL",10)~
== ~%tutu_var%WINSKI~ @184
== ~X#TANARI~ @185
= @186 EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DynaJournal","GLOBAL",12)~ THEN ~%DYNAHEIR_JOINED%~ X#DynaWinskiCompleted
@187 DO ~SetGlobal("X#DynaJournal","GLOBAL",15)~
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @188
== ~%DYNAHEIR_BANTER%~ @189
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @190
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @191
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @192
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @193
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @194
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @195
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @196
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @197
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @198
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @199
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @200
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @201
== ~%DYNAHEIR_BANTER%~ @202
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @203
END
IF ~Class(Player1,CLERIC_ALL) Class(Player1,PALADIN_ALL)~ THEN REPLY @204 EXTERN ~%DYNAHEIR_JOINED%~ X#DynaWinCompletedFinal
IF ~Class(Player1,FIGHTER_ALL)~ THEN REPLY @205 EXTERN ~%DYNAHEIR_JOINED%~ X#DynaWinCompletedFinal
IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ THEN REPLY @206 EXTERN ~%DYNAHEIR_JOINED%~ X#DynaWinCompletedFinal
IF ~Class(Player1,BARD_ALL)~ THEN REPLY @207 EXTERN ~%DYNAHEIR_JOINED%~ X#DynaWinCompletedFinal
IF ~Class(Player1,THIEF_ALL)~ THEN REPLY @208 EXTERN ~%DYNAHEIR_JOINED%~ X#DynaWinCompletedFinal
IF ~~ THEN REPLY @209 EXTERN ~%DYNAHEIR_JOINED%~ X#DynaWinCompletedFinal
IF ~~ THEN REPLY @210 EXTERN ~%DYNAHEIR_JOINED%~ X#DynaWinCompletedFinal
IF ~~ THEN REPLY @211 EXTERN ~%DYNAHEIR_JOINED%~ X#DynaWinCompletedFinal

APPEND ~%DYNAHEIR_JOINED%~

IF ~~ THEN BEGIN X#DynaWinCompletedFinal
SAY @212
IF ~~ THEN DO ~GiveItemCreate("SCRL8I",Player1,1,1,0) GiveItemCreate("X#WINAMU",Player1,1,1,0)~ JOURNAL @213 EXIT
END

END

EXTEND_BOTTOM ~%tutu_var%DYNAHE~ 9
IF ~~ THEN REPLY @214 EXTERN ~%tutu_var%DYNAHE~ X#EdandDyBothTogether
END

CHAIN ~%tutu_var%DYNAHE~ X#EdandDyBothTogether
@215
== ~%EDWIN_JOINED%~ @216
== ~%tutu_var%DYNAHE~ @217
== ~%EDWIN_JOINED%~ @218
END
++ @219 DO ~%BGEEDynaheirEraseJournalEntries% ActionOverride("Minsc",DialogueInterrupt(TRUE)) ActionOverride("minsc",JoinParty()) ActionOverride("dynaheir",JoinParty())~ SOLVED_JOURNAL @220 EXIT
++ @221 DO ~%BGEEDynaheirEraseJournalEntries% ActionOverride("Minsc",DialogueInterrupt(TRUE)) ActionOverride("minsc",JoinParty()) ActionOverride("dynaheir",JoinParty())~ SOLVED_JOURNAL @220 EXIT
++ @222 DO ~%BGEEDynaheirEraseJournalEntries% ActionOverride("Minsc",DialogueInterrupt(TRUE)) ActionOverride("minsc",JoinParty()) ActionOverride("dynaheir",JoinParty())~ SOLVED_JOURNAL @220 EXIT
