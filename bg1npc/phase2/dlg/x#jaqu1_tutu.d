/* Jaheira's Quest - Part 1 for Tutu, BGT, BGEE 1.x - 2.4 */

/* Add into Seniyad's Dialogue the options to  start the quest  */
ADD_STATE_TRIGGER ~%tutu_var%SENIYA~ 2 ~Global("X#JaheiraQuest","GLOBAL",0)~

//ADD_TRANS_TRIGGER ~%tutu_var%SENIYA~ 1 ~OR(2) !InParty("jaheira") Dead("jaheira")~
//ADD_TRANS_TRIGGER ~%tutu_var%SENIYA~ 2 ~OR(2) !InParty("jaheira") Dead("jaheira")~
//ADD_TRANS_TRIGGER ~%tutu_var%SENIYA~ 6 ~OR(2) !InParty("jaheira") Dead("jaheira")~

EXTEND_BOTTOM ~%tutu_var%SENIYA~ 1
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !Dead("aldeth")~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",1) EndCutSceneMode()~ EXTERN ~%JAHEIRA_JOINED%~ JaheiraMakePeace
END

EXTEND_BOTTOM ~%tutu_var%SENIYA~ 2
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Dead("aldeth")~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",1)~ EXTERN ~%JAHEIRA_JOINED%~ JaheiraAldethDead
END

EXTEND_BOTTOM ~%tutu_var%SENIYA~ 6
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Dead("aldeth")~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",1)~ EXTERN ~%JAHEIRA_JOINED%~ JaheiraAldethDead
END

/* If party kills Aldeth (Hunter) */
CHAIN ~%JAHEIRA_JOINED%~ JaheiraAldethDead
@86
== ~%tutu_var%SENIYA~ @87
== ~%JAHEIRA_JOINED%~ @88
== ~%tutu_var%SENIYA~ @89
== ~%JAHEIRA_JOINED%~ @90
END
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuestKillAldeth","GLOBAL",1)~ EXTERN ~%tutu_var%SENIYA~ SeniyadQuest

/* If there is a peaceful resolution */
CHAIN ~%JAHEIRA_JOINED%~ JaheiraMakePeace
@91
== ~%tutu_var%SENIYA~ @92
== ~%JAHEIRA_JOINED%~ @93
== ~%tutu_var%SENIYA~ @94
== ~%JAHEIRA_JOINED%~ @95
END
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ EXTERN ~%tutu_var%SENIYA~ SeniyadQuest

/* for both peaceful and violent resolution. */
CHAIN ~%tutu_var%SENIYA~ SeniyadQuest
@96
== ~%JAHEIRA_JOINED%~ @97
== ~%tutu_var%SENIYA~ @98
== ~%JAHEIRA_JOINED%~ @99
== ~%tutu_var%SENIYA~ @100
== ~%JAHEIRA_JOINED%~ @101
END
++ @102 EXTERN ~%JAHEIRA_JOINED%~ JAQU1.1
++ @103 EXTERN ~%JAHEIRA_JOINED%~ JAQU1.2
++ @104 EXTERN ~%JAHEIRA_JOINED%~ JAQU1.3
+ ~Class(Player1,DRUID_ALL)~ + @105 EXTERN ~%JAHEIRA_JOINED%~ JAQU1.4
+ ~Class(Player1,DRUID_ALL)~ + @106 DO ~SetGlobal("X#JaheiraPCShadowDruid","GLOBAL",1)~ EXTERN ~%tutu_var%SENIYA~ PCShadowDruid

/* Talk about Beador 1 */
CHAIN ~%JAHEIRA_JOINED%~ JAQU1.1
@107
== ~%tutu_var%SENIYA~ @108
== ~%JAHEIRA_JOINED%~ @109
END
++ @110 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ + JAQU2.1
++ @111 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ + JAQU2.2
++ @112 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ + JAQU1.3

/* Talk about Beador 2 */
CHAIN ~%JAHEIRA_JOINED%~ JAQU1.2
@113
== ~%tutu_var%SENIYA~ @108
== ~%JAHEIRA_JOINED%~ @109
END
++ @110 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ + JAQU2.1
++ @111 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ + JAQU2.2
++ @112 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ + JAQU1.3

/* Talk about Beador 3 */
CHAIN ~%JAHEIRA_JOINED%~ JAQU1.4
@114
== ~%tutu_var%SENIYA~ @108
== ~%JAHEIRA_JOINED%~ @109
END
++ @110 + JAQU2.1  // closed farther down the line
++ @111 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ + JAQU2.2
++ @112 DO ~SetGlobal("X#SenBeador","GLOBAL",1)~ + JAQU1.3

CHAIN ~%JAHEIRA_JOINED%~ JAQU2.1
@115
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @116
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @117
END
++ @118 + JAQU2.2
++ @119 + JAQU1.3

/* Quest Started Resolution 1 : either big reward for peace (Aldeth grateful), or lesser for violent */
CHAIN ~%JAHEIRA_JOINED%~ JAQU2.2
@120
== ~%tutu_var%SENIYA~ @121
== ~%tutu_var%SENIYA~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @122
== ~%tutu_var%ALDETH~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @123
END
IF ~Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",2) SetGlobal("AldethMove","GLOBAL",1) AddexperienceParty(1000) GiveItemCreate("%tutu_var%POTN09",Player1,1,0,0) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@186,QUEST_DONE) ActionOverride("aldeth",EscapeArea())~ UNSOLVED_JOURNAL @163 EXIT
IF ~Global("X#JaheiraQuestKillAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",2) AddexperienceParty(500) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@185,QUEST_DONE)~ UNSOLVED_JOURNAL @163 EXIT

CHAIN ~%JAHEIRA_JOINED%~ JAQU1.3
@124
== ~%tutu_var%ALDETH~ IF ~Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @125
END
++ @126 EXTERN ~%JAHEIRA_JOINED%~ JAQU4.1
++ @127 EXTERN ~%JAHEIRA_JOINED%~ JAQU4.2
++ @128 EXTERN ~%JAHEIRA_JOINED%~ JAQU4.3

/* Quest Started Resolution 2 : either big reward for peace (Aldeth ungrateful), or lesser for violent */
CHAIN ~%JAHEIRA_JOINED%~ JAQU4.1
@129
== ~%tutu_var%SENIYA~ @130
== ~%tutu_var%SENIYA~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @122
== ~%tutu_var%ALDETH~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @131
END
IF ~Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",2) SetGlobal("AldethMove","GLOBAL",1) AddexperienceParty(1000) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@187,QUEST_DONE) ActionOverride("aldeth",EscapeArea())~ UNSOLVED_JOURNAL @163 EXIT
IF ~Global("X#JaheiraQuestKillAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",2) AddexperienceParty(500) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@185,QUEST_DONE)~ UNSOLVED_JOURNAL @163 EXIT

/* Quest Started Resolution 3 : either big fight against Seniyad (helped Aldeth) or all leave (killed Aldeth), either way quest closed and K & J leave. Global("X#JaheiraQuest","GLOBAL",10) */
CHAIN ~%JAHEIRA_JOINED%~ JAQU4.2
@132
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @133
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @134
== ~%tutu_var%ALDETH~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @135
== ~%tutu_var%SENIYA~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @136
END
IF ~Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",10) ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",EscapeArea()) ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",EscapeArea()) ActionOverride("seniyad",Shout(1)) ActionOverride("seniyad",Enemy())~ EXIT
IF ~Global("X#JaheiraQuestKillAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",10) ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",EscapeArea()) ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",EscapeArea())~ EXTERN ~%tutu_var%SENIYA~ SenAllLeave

CHAIN ~%JAHEIRA_JOINED%~ JAQU4.3
@137
END
++ @138 + JAQU5.1
++ @139 + JAQU4.2
++ @140 + JAQU5.2

/* Quest Started Resolution 4 : either big reward for peace (Aldeth ungrateful), or lesser for violent, final Beador talk */
CHAIN ~%JAHEIRA_JOINED%~ JAQU5.1
@141
== ~%tutu_var%SENIYA~ @121
== ~%tutu_var%SENIYA~ IF ~Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @122
== ~%tutu_var%ALDETH~ IF ~Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @131
END
IF ~Global("X#SenBeador","GLOBAL",1) Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",2) SetGlobal("AldethMove","GLOBAL",1) AddexperienceParty(1000) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@187,QUEST_DONE) ActionOverride("aldeth",EscapeArea())~ UNSOLVED_JOURNAL @163 EXIT
IF ~Global("X#SenBeador","GLOBAL",1) Global("X#JaheiraQuestKillAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",2) AddexperienceParty(500) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@185,QUEST_DONE)~ UNSOLVED_JOURNAL @163 EXIT
IF ~!Global("X#SenBeador","GLOBAL",1)~ EXTERN ~%tutu_var%SENIYA~ SenBeador1

/* Another version of Quest Started Resolution 3 : either big fight against Seniyad (helped Aldeth) or all leave (killed Aldeth), either way quest closed and K & J leave. Global("X#JaheiraQuest","GLOBAL",10) */
CHAIN ~%JAHEIRA_JOINED%~ JAQU5.2
@142
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @143
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @144
== ~%tutu_var%ALDETH~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @135
== ~%tutu_var%SENIYA~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @145
END
IF ~Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",10) ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",EscapeArea()) ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",EscapeArea()) ActionOverride("seniyad",Shout(1)) ActionOverride("seniyad",Enemy())~ EXIT
IF ~Global("X#JaheiraQuestKillAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",10) ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",EscapeArea()) ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",EscapeArea())~ EXTERN ~%tutu_var%SENIYA~ SenAllLeave

CHAIN ~%tutu_var%SENIYA~ SenBeador1
@146
== ~%JAHEIRA_JOINED%~ @109
END
++ @110 EXTERN ~%JAHEIRA_JOINED%~ JAQU6.1
++ @147 EXTERN ~%JAHEIRA_JOINED%~ JAQU6.2

CHAIN ~%JAHEIRA_JOINED%~ JAQU6.1
@115
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @116
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @117
END
IF ~Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#SenBeador","GLOBAL",1) SetGlobal("X#JaheiraQuest","GLOBAL",2) SetGlobal("AldethMove","GLOBAL",1) AddexperienceParty(1000) GiveItemCreate("%tutu_var%POTN09",Player1,1,0,0) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@186,QUEST_DONE) ActionOverride("aldeth",EscapeArea())~ UNSOLVED_JOURNAL @163 EXIT
IF ~Global("X#JaheiraQuestKillAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#SenBeador","GLOBAL",1) SetGlobal("X#JaheiraQuest","GLOBAL",2) AddexperienceParty(500) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@185,QUEST_DONE)~ UNSOLVED_JOURNAL @163 EXIT

CHAIN ~%JAHEIRA_JOINED%~ JAQU6.2
@148
== ~%tutu_var%SENIYA~ @130
== ~%tutu_var%SENIYA~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @122
== ~%tutu_var%ALDETH~ IF ~!Dead("aldeth") Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN @123
END
IF ~Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#SenBeador","GLOBAL",1) SetGlobal("X#JaheiraQuest","GLOBAL",2) SetGlobal("AldethMove","GLOBAL",1) AddexperienceParty(1000) GiveItemCreate("%tutu_var%POTN09",Player1,1,0,0) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@186,QUEST_DONE) ActionOverride("aldeth",EscapeArea())~ UNSOLVED_JOURNAL @163 EXIT
IF ~Global("X#JaheiraQuestKillAldeth","GLOBAL",1)~ THEN DO ~SetGlobal("X#SenBeador","GLOBAL",1) SetGlobal("X#JaheiraQuest","GLOBAL",2) AddexperienceParty(500) EraseJournalEntry(@184) EraseJournalEntry(@188) AddJournalEntry(@185,QUEST_DONE)~ UNSOLVED_JOURNAL @163 EXIT

APPEND ~%tutu_var%SENIYA~
IF ~~ THEN BEGIN PCShadowDruid
SAY @158
IF ~~ THEN DO ~Shout(1) SetGlobal("X#JaheiraQuest","GLOBAL",10) AddexperienceParty(5000) SetGlobal("KilledDruids","GLOBAL",4) SetGlobal("HelpAldeth","GLOBAL",1) EraseJournalEntry(@184) EraseJournalEntry(@188) Enemy()~ SOLVED_JOURNAL @159 EXIT
END

IF ~~ THEN BEGIN SenAllLeave
SAY @160
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",10) AddexperienceParty(2000) EraseJournalEntry(@184) EraseJournalEntry(@188) Shout(3) EscapeArea()~ SOLVED_JOURNAL @161 EXIT
END

/* For Quest 2, 3, 4, 5, 6, 7 then a reminder prompt cycles until quest is completed. */
IF WEIGHT #-2 ~%BGT_VAR% GlobalGT("X#JaheiraQuest","GLOBAL",1) GlobalLT("X#JaheiraQuest","GLOBAL",8)~ SenQuestPrompt
SAY @162
IF ~~ THEN EXIT
END

END
/* At this point, the following is set:
If party kills Aldeth (Hunter): Global("X#JaheiraQuestKillAldeth","GLOBAL",1)
If there is a peaceful resolution: Global("X#JaheiraQuestHelpAldeth","GLOBAL",1)
If party does not help, J/K leave and Seniyad & co either attack or leave: Global("X#JaheiraQuest","GLOBAL",10) [closed]
For player taking ShadowDruid's side: Global("X#JaheiraPCShadowDruid","GLOBAL",1)/Global("X#JaheiraQuest","GLOBAL",10) [closed]
For both peaceful and violent resolution, all continuing quest: Global("X#SenBeador","GLOBAL",1)/Global("X#JaheiraQuest","GLOBAL",2)
If the Party talks to Seniyad again before Quest = 8, the prompt fires.
Nothing happens again until the party goes to %CloakwoodWyverns%, P#FW1700. Then Area script creates encounter with Beador
*/
