/* Jaheira's Quest - Part 1 for BGEE v2.5 */

/* Interject into Jaheira's Dialogue with Seniyad to begin the quest */
EXTEND_BOTTOM ~%JAHEIRA_JOINED%~ 19
IF ~Global("X#JaheiraQuest","GLOBAL",0) !IsValidForPartyDialog("faldorn")~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",1)~ EXTERN ~%tutu_var%SENIYA~ SeniyadQuest
END

// If Faldorn is present, Seniyad will not give the quest.
ADD_TRANS_ACTION ~%tutu_var%SENIYA~ BEGIN 6 END BEGIN END ~SetGlobal("X#JaheiraQuest","GLOBAL",10)~

/* for both peaceful and violent resolution. */
CHAIN ~%tutu_var%SENIYA~ SeniyadQuest
@193
== ~%JAHEIRA_JOINED%~ @95
== ~%tutu_var%SENIYA~ @96
== ~%JAHEIRA_JOINED%~ @97
== ~%tutu_var%SENIYA~ @98
== ~%JAHEIRA_JOINED%~ @99
== ~%tutu_var%SENIYA~ @100
== ~%JAHEIRA_JOINED%~ @101
END
+ ~!Class(Player1,DRUID_ALL)~ + @191 EXTERN ~%JAHEIRA_JOINED%~ JaQuAccept
++ @102 EXTERN ~%JAHEIRA_JOINED%~ JaQuShadowclave
++ @103 EXTERN ~%JAHEIRA_JOINED%~ JaQuTreeHugger
++ @104 EXTERN ~%JAHEIRA_JOINED%~ JaQuRefuse
+ ~Class(Player1,DRUID_ALL)~ + @105 EXTERN ~%JAHEIRA_JOINED%~ JaQuDruid
+ ~Class(Player1,DRUID_ALL)~ + @106 DO ~SetGlobal("X#JaheiraPCShadowDruid","GLOBAL",1)~ EXTERN ~%tutu_var%SENIYA~ PCShadowDruid

// Jaheira's replies to PC's dialog choice on quest
// All lead to Seniyad mentioning Beador
APPEND ~%JAHEIRA_JOINED%~
  IF ~~ THEN BEGIN JaQuShadowclave
  SAY @107
  IF ~~ THEN EXTERN ~%tutu_var%SENIYA~ SenBeador1
  END

  IF ~~ THEN BEGIN JaQuTreeHugger
  SAY @113
  IF ~~ THEN EXTERN ~%tutu_var%SENIYA~ SenBeador1
  END

  IF ~~ THEN BEGIN JaQuDruid
  SAY @114
  IF ~~ THEN EXTERN ~%tutu_var%SENIYA~ SenBeador1
  END
END // APPEND ~%JAHEIRA_JOINED%~

// Talk about Beador
CHAIN ~%tutu_var%SENIYA~ SenBeador1
@108
== ~%JAHEIRA_JOINED%~ @109
END
++ @110 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ EXTERN ~%JAHEIRA_JOINED%~ WhoIsBeador
++ @111 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ EXTERN ~%JAHEIRA_JOINED%~ JaQuAccept
++ @112 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ EXTERN ~%JAHEIRA_JOINED%~ JaQuRefuse

CHAIN ~%JAHEIRA_JOINED%~ WhoIsBeador
@115
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @116
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @117
END
++ @118 + JaQuAccept
++ @119 + JaQuRefuse

/* Quest Started Resolution 1: Accept Quest */
CHAIN ~%JAHEIRA_JOINED%~ JaQuAccept
@120
== ~%tutu_var%SENIYA~ @121
END
IF ~Global("X#SenBeador","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",2) SetGlobal("SeniyadXP","GLOBAL",1) AddexperienceParty(2000) EraseJournalEntry(@188) AddJournalEntry(@189,QUEST_DONE)~ UNSOLVED_JOURNAL @163 EXIT
IF ~Global("DefusedDruids","GLOBAL",1) Global("X#SenBeador","GLOBAL",1)~ THEN EXTERN ~%tutu_var%SENIYA~ SeniyadLetAldethGo
IF ~!Global("X#SenBeador","GLOBAL",1)~ THEN EXTERN ~%tutu_var%SENIYA~ SenBeador2

CHAIN ~%tutu_var%SENIYA~ SeniyadLetAldethGo
@122
== ~%tutu_var%ALDETH~ @123
END
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",2) SetGlobal("SeniyadXP","GLOBAL",1) SetGlobal("AldethMove","GLOBAL",1) AddexperienceParty(3000) GiveItemCreate("%tutu_var%POTN09",Player1,1,0,0) EraseJournalEntry(@188) AddJournalEntry(@190,QUEST_DONE) ActionOverride("aldeth",Shout(5)) ActionOverride("aldeth",EscapeArea())~ UNSOLVED_JOURNAL @163 EXIT

/* Quest Started Resolution 2: Quest closed and K & J leave. Global("X#JaheiraQuest","GLOBAL",10) */
CHAIN ~%JAHEIRA_JOINED%~ JaQuRefuse
@137
END
++ @138 EXTERN ~%JAHEIRA_JOINED%~ JaQuAccept
++ @139 EXTERN ~%JAHEIRA_JOINED%~ JaQuRefuse2
++ @140 EXTERN ~%JAHEIRA_JOINED%~ JaQuRefuse2

CHAIN ~%JAHEIRA_JOINED%~ JaQuRefuse2
@142
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @143
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @144
END
IF ~~ THEN EXTERN ~%tutu_var%SENIYA~ SenAllLeave
IF ~Global("DefusedDruids","GLOBAL",1)~ THEN EXTERN ~%tutu_var%SENIYA~ SenAllLeave2

// If we bypassed the Beador dialog previously, Seniyad brings him up.
CHAIN ~%tutu_var%SENIYA~ SenBeador2
@146
== ~%JAHEIRA_JOINED%~ @109
END
++ @110 EXTERN ~%JAHEIRA_JOINED%~ WhoIsBeador2
+ ~Global("DefusedDruids","GLOBAL",1)~ + @147 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ EXTERN ~%tutu_var%SENIYA~ SeniyadLetAldethGo
+ ~!Global("DefusedDruids","GLOBAL",1)~ + @147 DO ~SetGlobal("X#SenBeador","GLOBAL",1) SetGlobal("X#JaheiraQuest","GLOBAL",2) SetGlobal("SeniyadXP","GLOBAL",1) AddexperienceParty(2000) EraseJournalEntry(@188) AddJournalEntry(@189,QUEST_DONE)~ UNSOLVED_JOURNAL @163 EXIT

CHAIN ~%JAHEIRA_JOINED%~ WhoIsBeador2
@115
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @116
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @117
END
IF ~~ THEN DO ~SetGlobal("X#SenBeador","GLOBAL",1) SetGlobal("X#JaheiraQuest","GLOBAL",2) SetGlobal("SeniyadXP","GLOBAL",1) AddexperienceParty(2000) EraseJournalEntry(@188) AddJournalEntry(@189,QUEST_DONE)~ UNSOLVED_JOURNAL @163 EXIT
IF ~Global("DefusedDruids","GLOBAL",1)~ THEN DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ EXTERN ~%tutu_var%SENIYA~ SeniyadLetAldethGo

// PC declares themself a Shadow Druid
APPEND ~%tutu_var%SENIYA~
IF ~~ THEN BEGIN PCShadowDruid
SAY @158
IF ~~ THEN DO ~Shout(1) SetGlobal("X#JaheiraQuest","GLOBAL",10) SetGlobal("DefusedDruids","GLOBAL",0) EraseJournalEntry(@188) Enemy()~ SOLVED_JOURNAL @159 EXIT
END

// Seniyad and company leave
IF ~~ THEN BEGIN SenAllLeave
SAY @160
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",10) ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",EscapeArea()) ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",EscapeArea()) AddexperienceParty(2000) EraseJournalEntry(@188) Shout(3) EscapeArea()~ SOLVED_JOURNAL @161 EXIT
END

IF ~~ THEN BEGIN SenAllLeave2
SAY @192
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",10) ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",EscapeArea()) ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",EscapeArea()) AddexperienceParty(1000) EraseJournalEntry(@188) Shout(3) EscapeArea()~ EXIT
END

/* For Quest 2, 3, 4, 5, 6, 7 then a reminder prompt cycles until quest is completed. */
IF WEIGHT #-2 ~%BGT_VAR% GlobalGT("X#JaheiraQuest","GLOBAL",1) GlobalLT("X#JaheiraQuest","GLOBAL",8)~ SenQuestPrompt
SAY @162
IF ~~ THEN EXIT
END

END
/* At this point, the following is set:
If there is a peaceful resolution: Global("DefusedDruids","GLOBAL",1)
If party does not help, J/K leave and Seniyad & co leave: Global("X#JaheiraQuest","GLOBAL",10) [closed]
For player taking ShadowDruid's side: Global("X#JaheiraPCShadowDruid","GLOBAL",1)/Global("X#JaheiraQuest","GLOBAL",10) [closed]
For both peaceful and violent resolution, all continuing quest: Global("X#SenBeador","GLOBAL",1)/Global("X#JaheiraQuest","GLOBAL",2)
If the Party talks to Seniyad again before Quest = 8, the prompt fires.
Nothing happens again until the party goes to %CloakwoodWyverns%, P#FW1700. Then Area script creates encounter with Beador
*/
