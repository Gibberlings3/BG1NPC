BEGIN X#BEADOR
BEGIN X#ANDART
BEGIN X#SHDRG
BEGIN X#MARETH

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

/* Covering Amaranth if the Party goes through Tree Fort before Beador, or after */
/* adding Amaranth recognition of quest. Entirety plays out only if Jaheira is there and Quest has started. */
// Adding this trigger creates the possibility of Amarande having no valid dialog state (if Jaheira is in the party but unavailable for dialogue).
//ADD_TRANS_TRIGGER ~%tutu_var%AMARAN~ 4 ~Global("X#JaheiraQuest","GLOBAL",0)~
//
//ADD_TRANS_TRIGGER ~%tutu_var%AMARAN~ 5 ~Global("X#JaheiraQuest","GLOBAL",0)~

EXTEND_BOTTOM ~%tutu_var%AMARAN~ 4
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) GlobalGT("X#JaheiraQuest","GLOBAL",0) Global("X#AmarantheAndarthe","GLOBAL",0)~ THEN DO ~SetGlobal("X#AmarantheAndarthe","GLOBAL",1)~ GOTO JQTreeHouse
END

EXTEND_BOTTOM ~%tutu_var%AMARAN~ 5
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) GlobalGT("X#JaheiraQuest","GLOBAL",0) Global("X#AmarantheAndarthe","GLOBAL",0)~ THEN DO ~SetGlobal("X#AmarantheAndarthe","GLOBAL",1)~ GOTO JQTreeHouse
END

CHAIN ~%tutu_var%AMARAN~ JQTreeHouse
@149
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("X#MarethaResBeadAlive","GLOBAL",0) Global("X#MarethaResBeadDead","GLOBAL",0)~ THEN @150
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) OR(2) Global("X#MarethaResBeadAlive","GLOBAL",2) Global("X#MarethaResBeadDead","GLOBAL",2)~ THEN @151
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @152
== ~%tutu_var%AMARAN~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @153
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @154
== ~%tutu_var%AMARAN~ IF ~Global("X#MarethaResBeadAlive","GLOBAL",0) Global("X#MarethaResBeadDead","GLOBAL",0)~ THEN @155
== ~%tutu_var%AMARAN~ IF ~OR(2) Global("X#MarethaResBeadAlive","GLOBAL",2) Global("X#MarethaResBeadDead","GLOBAL",2)~ THEN @156
END
IF ~~ THEN DO ~SetGlobal("X#AmarantheAndarthe","GLOBAL",2) Enemy()~ EXIT
IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN EXTERN ~%tutu_var%AMARAN~ WarnFaldornJahQ

/* Faldorn Amarande fix */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) GlobalGT("X#JaheiraQuest","GLOBAL",0) Global("X#ReportAmarande","GLOBAL",0) Global("FLOODED","GLOBAL",0)~
THEN ~%tutu_var%AMARAN~ AmaranFaldLoopMine1
@155
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) OR(2) Global("X#MarethaResBeadAlive","GLOBAL",2) Global("X#MarethaResBeadDead","GLOBAL",2)~ THEN @151
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @152
== ~%tutu_var%AMARAN~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @153
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @154
== ~%tutu_var%AMARAN~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @157
DO ~SetGlobal("X#ReportAmarande","GLOBAL",1) SetGlobal("X#AmarantheAndarthe","GLOBAL",2)~
EXIT

CHAIN ~%tutu_var%AMARAN~ WarnFaldornJahQ
@157 DO ~SetGlobal("X#AmarantheAndarthe","GLOBAL",2)~ 
EXIT
/* End result has no effect on Quest - if quest is in progress and Faldorn is there, he stays put. If not, he fights. If Party has encountered Maretha, he takes it into account. */

/* BEGIN X#BEADOR Dialogue */
APPEND X#BEADOR

/* Option 1: Jaheira without Faldorn initial talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#BeadorStarts","GLOBAL",1)~ THEN BEGIN BeadorStartsJaheira
SAY @29
IF ~~ THEN DO ~SetGlobal("X#BeadorStarts","GLOBAL",2)~ EXTERN ~%JAHEIRA_JOINED%~ JaBeChain1
END

/* Option 2: Jaheira with Faldorn initial talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraQuestFaldorn","GLOBAL",1)~ THEN BEGIN BeadorStartsFaldorn
SAY @29
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuestFaldorn","GLOBAL",2)~ EXTERN ~%JAHEIRA_JOINED%~ JaBeChain2
END

/* Maretha not freed yet */
IF WEIGHT #-2 ~%BGT_VAR% GlobalGT("X#JaheiraQuest","GLOBAL",2) GlobalLT("X#JaheiraQuest","GLOBAL",6) GlobalGT("X#JaheiraHealsB","GLOBAL",4)~ THEN BEGIN BeadorAsksMaretha
SAY @30
IF ~~ THEN EXIT
END

/* Maretha freed */
IF WEIGHT #-2 ~%BGT_VAR% GlobalGT("X#JaheiraQuest","GLOBAL",5) Global("X#MarethaResBeadAlive","GLOBAL",2)~ THEN BEGIN BeadorLeaves
SAY @31
IF ~~ THEN DO ~SetGlobal("X#MarethaResBeadAlive","GLOBAL",3) AddexperienceParty(100) EscapeArea()~ EXIT
END


END

/* Next actions: Party participates in the battle. If beador dies, Jaheira has a set of mostly negative consequences. If Beador lives, she heals him and talks to him.*/
/* From Beador's Response 1 */
CHAIN ~%JAHEIRA_JOINED%~ JaBeChain1
@74
== X#SHDRG @75
DO ~SetGlobal("X#JaheiraQuest","GLOBAL",3) ActionOverride("jadruid6a",Enemy()) ActionOverride("jadruid6b",Enemy()) ActionOverride("jadruid6",Enemy()) ActionOverride("jadruid8a",Enemy()) ActionOverride("jadruid8b",Enemy()) ActionOverride("jadruid8b",Attack("beador"))~
EXIT

/* From Beador's Response 2 */
/* Faldorn in party as well, options for her to switch sides */
CHAIN ~%JAHEIRA_JOINED%~ JaBeChain2
@74
== X#SHDRG @76
== ~%FALDORN_JOINED%~ @77
END
++ @78 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",3)~ EXTERN ~%FALDORN_JOINED%~ FaJaQuest1.1
+ ~CheckStatGT(Player1,15,CHR)~ + @79 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",3)~ EXTERN ~%FALDORN_JOINED%~ FaJaQuest1.2
+ ~!CheckStatGT(Player1,15,CHR)~ + @79 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",3)~ EXTERN ~%FALDORN_JOINED%~ FaJaQuest1.2A
++ @80 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",3)~ EXTERN ~%FALDORN_JOINED%~ FaJaQuest1.3
++ @81 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",3)~ EXTERN ~%FALDORN_JOINED%~ FaJaQuest1.3

CHAIN ~%FALDORN_JOINED%~ FaJaQuest1.1
@82
END X#SHDRG FaShD2

CHAIN ~%FALDORN_JOINED%~ FaJaQuest1.2
@83
END X#SHDRG FaShD1

CHAIN ~%FALDORN_JOINED%~ FaJaQuest1.2A
@84
END X#SHDRG FaShD3

CHAIN ~%FALDORN_JOINED%~ FaJaQuest1.3
@85
END X#SHDRG FaShD3

/* BEGIN X#SHDRG shadow druid responses to Faldorn */
APPEND X#SHDRG

IF ~~ FaShD1
SAY @26
IF ~~ THEN DO ~StartCutSceneMode() CutSceneId(Player1) ActionOverride("jadruid6a",Enemy()) ActionOverride("jadruid6b",Enemy()) ActionOverride("jadruid6",Enemy()) ActionOverride("jadruid8a",Enemy()) ActionOverride("jadruid8b",Enemy()) ActionOverride("jadruid8b",Attack("beador")) EndCutSceneMode()~ EXIT
END

IF ~~ FaShD2
SAY @27
IF ~~ THEN DO ~StartCutSceneMode() CutSceneId(Player1) ActionOverride("jadruid6a",Enemy()) ActionOverride("jadruid6b",Enemy()) ActionOverride("jadruid6",Enemy()) ActionOverride("jadruid8a",Enemy()) ActionOverride("jadruid8b",Enemy()) ActionOverride("jadruid8b",Attack("beador")) EndCutSceneMode()~ EXIT
END

IF ~~ FaShD3
SAY @28
IF ~~ THEN DO ~StartCutSceneMode() CutSceneId(Player1) ActionOverride("faldorn",LeaveParty()) ActionOverride("faldorn",Enemy()) ActionOverride("jadruid6a",Enemy()) ActionOverride("jadruid6b",Enemy()) ActionOverride("jadruid6",Enemy()) ActionOverride("jadruid8a",Enemy()) ActionOverride("jadruid8b",Enemy()) ActionOverride("jadruid8b",Attack("beador")) EndCutSceneMode()~ EXIT
END

END

/* Pre combat, Global("X#JaheiraQuest","GLOBAL",3). Combat is resolved. */

/* If beador dies in combat set from BAF */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#JQBeadorDead","GLOBAL",1)~ THEN ~%JAHEIRA_JOINED%~ JahBeadorDead
@54
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @55
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @56
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @57
== ~%JAHEIRA_JOINED%~ @58
END
++ @59 DO ~SetGlobal("X#JQBeadorDead","GLOBAL",2) SetGlobal("X#JaheiraQuest","GLOBAL",3)~ + JABD1.1
++ @60 DO ~SetGlobal("X#JQBeadorDead","GLOBAL",2) SetGlobal("X#JaheiraQuest","GLOBAL",3)~ + JABD1.2

APPEND ~%JAHEIRA_JOINED%~

/* from Beador death */
IF ~~ THEN BEGIN JABD1.1
SAY @37
= @38
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JABD1.2
SAY @39
IF ~~ THEN EXIT
END

/* If Beador survives, from BAF - sets up healing cutscene */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraHealsB","GLOBAL",1)~ THEN BEGIN JahHealsBeador
SAY @36
IF ~~ THEN DO ~SetGlobal("X#JaheiraHealsB","GLOBAL",2)~ EXIT
END

END

/* If Beador is healed by Jaheira (set from BAF) */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraHealsB","GLOBAL",4)~ THEN ~X#BEADOR~ OldFlame1
@61
== ~%JAHEIRA_JOINED%~ @62
== ~X#BEADOR~ @63
END
IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ DO ~SetGlobal("X#JaheiraHealsB","GLOBAL",5)~ EXTERN ~%KHALID_JOINED%~ KhalidBeadorTalk 
IF ~OR(3) !InParty("khalid") !InMyArea("khalid") StateCheck("khalid",CD_STATE_NOTVALID)~ DO ~SetGlobal("X#JaheiraHealsB","GLOBAL",5)~ EXTERN ~%JAHEIRA_JOINED%~ JaheiraBeadorTalk
IF ~Dead("khalid")~ DO ~SetGlobal("X#JaheiraHealsB","GLOBAL",5)~ EXTERN ~%JAHEIRA_JOINED%~ JaheiraBeadorNoKhalidTalk

CHAIN ~%KHALID_JOINED%~ KhalidBeadorTalk
@64
== ~X#BEADOR~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @65
END
IF ~~ THEN EXTERN ~%JAHEIRA_JOINED%~ JaheiraBeadorTalk

//== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @66
//== ~X#BEADOR~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @67
//== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @68
//END
//IF ~~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",3) AddexperienceParty(500)~ EXIT

CHAIN ~%JAHEIRA_JOINED%~ JaheiraBeadorTalk
@66
== ~X#BEADOR~ @67
== ~%JAHEIRA_JOINED%~ @68
END
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",3) AddexperienceParty(500)~ EXIT

CHAIN ~%JAHEIRA_JOINED%~ JaheiraBeadorNoKhalidTalk
@69
== ~X#BEADOR~ @70
== ~%JAHEIRA_JOINED%~ @71
== ~X#BEADOR~ @72
== ~%JAHEIRA_JOINED%~ @73
END
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuest","GLOBAL",3) AddexperienceParty(500)~ EXIT

/* At this point,
If Beador was healed: Global("X#JaheiraHealsB","GLOBAL",5)
If Beador died: Global("X#JQBeadorDead","GLOBAL",2)
Either way forward, Global("X#JaheiraQuest","GLOBAL",3) 
And we move back to Jaheira's BAF for moving back into the Tree Fort area %CloakwoodDruids%. Jahera's BAF spawns Andarthe & Co., who use Andarthe's BAF to initiate discussion and combat. */

/* Andarthe Surrender options */
APPEND ~%JAHEIRA_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AndSurrender","GLOBAL",6)~ THEN BEGIN JahAndSur3
SAY @32
IF ~~ THEN DO ~SetGlobal("X#AndSurrender","GLOBAL",7) ReputationInc(-4)~ EXIT END

IF ~~ THEN BEGIN JahAndSur4
SAY @33
IF ~~ THEN DO ~SetGlobal("X#AndSurrender","GLOBAL",7)~ EXIT 
END

IF ~~ THEN BEGIN JahAndSur5
SAY @34
IF ~~ THEN DO ~SetGlobal("X#AndSurrender","GLOBAL",7) ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN JahAndSur6
SAY @35
IF ~~ THEN DO ~SetGlobal("X#AndSurrender","GLOBAL",7) ReputationInc(-1)~ EXIT
END

END

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraHealsB","GLOBAL",6)~ THEN X#ANDART AndartGreetingBeadorHealed
@18
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @19
== ~%JAHEIRA_JOINED%~ @20
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @21
END
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @22 DO ~SetGlobal("X#JaheiraHealsB","GLOBAL",7) SetGlobal("X#JaheiraQuest","GLOBAL",4)~ + ANDFA1
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @23 DO ~SetGlobal("X#JaheiraHealsB","GLOBAL",7) SetGlobal("X#JaheiraQuest","GLOBAL",4)~ + ANDFA2
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @24 DO ~SetGlobal("X#JaheiraHealsB","GLOBAL",7) SetGlobal("X#JaheiraQuest","GLOBAL",4)~ + ANDFA2
+ ~!InParty("faldorn") InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @183 DO ~SetGlobal("X#JaheiraHealsB","GLOBAL",7) SetGlobal("X#JaheiraQuest","GLOBAL",4) SetGlobal("X#JaheiraQuestAAttack","GLOBAL",1)~ EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#JQBeadorDead","GLOBAL",3)~ THEN X#ANDART AndartGreetingBeadorDead
@18
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @19
== ~%JAHEIRA_JOINED%~ @25
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn")~ THEN @21
END
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @22 DO ~SetGlobal("X#JQBeadorDead","GLOBAL",4) SetGlobal("X#JaheiraQuest","GLOBAL",4)~ + ANDFA3
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @23 DO ~SetGlobal("X#JQBeadorDead","GLOBAL",4) SetGlobal("X#JaheiraQuest","GLOBAL",4)~ + ANDFA4
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @24 DO ~SetGlobal("X#JQBeadorDead","GLOBAL",4) SetGlobal("X#JaheiraQuest","GLOBAL",4)~ + ANDFA4
+ ~!InParty("faldorn") InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @183 DO ~SetGlobal("X#JaheiraHealsB","GLOBAL",7) SetGlobal("X#JaheiraQuest","GLOBAL",4) SetGlobal("X#JaheiraQuestAAttack","GLOBAL",1)~ EXIT

/* BEGIN X#ANDART Dialogue */
APPEND X#ANDART

/* Andarthe tries to surrender if below 50 percent HP and still alive */
IF WEIGHT #-2 ~Global("X#AndSurrender","GLOBAL",1)~ THEN BEGIN AndSurrender
SAY @0
IF ~!Dead("beador")~ THEN DO ~SetGlobal("X#AndSurrender","GLOBAL",2) DestroyItem("MINHP1")~ EXTERN ~%JAHEIRA_JOINED%~ JahAndSur1
IF ~Dead("beador")~ THEN DO ~SetGlobal("X#AndSurrender","GLOBAL",2) DestroyItem("MINHP1")~ EXTERN ~%JAHEIRA_JOINED%~ JahAndSur2
END

/* From Andarthe & Faldorn */
IF ~~ THEN BEGIN ANDFA1
SAY @1
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuestAAttack","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN ANDFA2
SAY @2
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuestAAttack","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN ANDFA3
SAY @1
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuestAAttack","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN ANDFA4
SAY @2
IF ~~ THEN DO ~SetGlobal("X#JaheiraQuestAAttack","GLOBAL",1)~ EXIT
END

END

/* Beador was Healed surrender terms */
CHAIN ~%JAHEIRA_JOINED%~ JahAndSur1
@3
END
++ @4 DO ~SetGlobal("X#AndSurrender","GLOBAL",3) ChangeEnemyAlly("andarthe",ENEMY)~ EXIT
++ @5 DO ~SetGlobal("X#AndSurrender","GLOBAL",4) AddexperienceParty(500) ActionOverride("andarthe",EscapeArea())~ EXTERN ~%JAHEIRA_JOINED%~ JahAndSur4

/* Beador was Killed surrender terms */
CHAIN ~%JAHEIRA_JOINED%~ JahAndSur2
@6
DO ~ActionOverride("jaheira",Kill("andarthe"))~
END
++ @7 DO ~SetGlobal("X#AndSurrender","GLOBAL",5)~ EXTERN ~%JAHEIRA_JOINED%~ JahAndSur5
++ @8 DO ~SetGlobal("X#AndSurrender","GLOBAL",5)~ EXTERN ~%JAHEIRA_JOINED%~ JahAndSur6

/* Any way it goes, Combat ends with Global("X#JaheiraQuest","GLOBAL",4). This is used to initiate Jaheira's BAF to create Maretha. */

/* BEGIN X#MARETH Dialogue */
/* Beador lived, and Maretha thanks Jaheira */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#MarethaResBeadAlive","GLOBAL",1)~ THEN ~X#MARETH~ MarethGreetingBAlive
@9
== ~%JAHEIRA_JOINED%~ @10
== ~X#MARETH~ @11
== ~%JAHEIRA_JOINED%~ @12
== ~X#MARETH~ @13
DO ~SetGlobal("X#MarethaResBeadAlive","GLOBAL",2) SetGlobal("X#JaheiraQuest","GLOBAL",6) AddexperienceParty(2000) ReputationInc(1) EscapeArea()~ EXIT

/* Beador died, and Maretha blames Jaheira */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#MarethaResBeadDead","GLOBAL",1)~ THEN ~X#MARETH~ MarethGreetingBDead
@9
== ~%JAHEIRA_JOINED%~ @14
== ~X#MARETH~ @11
== ~%JAHEIRA_JOINED%~ @15
== ~X#MARETH~ @16
DO ~SetGlobal("X#MarethaResBeadDead","GLOBAL",2) SetGlobal("X#JaheiraQuest","GLOBAL",6) AddexperienceParty(1000) ReputationInc(-1) EscapeArea()~ EXIT

APPEND ~%JAHEIRA_JOINED%~

/* Jaheira prompts the Quest has ended from BAF after talking with Maretha */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraQuest","GLOBAL",7)~ THEN BEGIN JaheiraReward
SAY @40
++ @41 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",8)~ + JARE1.1
++ @42 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",8)~ + JARE1.2
END

IF ~~ JARE1.1
SAY @43
IF ~~ THEN EXIT END

IF ~~ JARE1.2
SAY @44
++ @45 + JARE1.3
++ @46 + JARE1.4
END

IF ~~ JARE1.3
SAY @47
IF ~~ THEN EXIT
END

END

CHAIN ~%JAHEIRA_JOINED%~ JARE1.4
@48
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @49
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @50
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @51
END
+ ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ + @52 EXIT
++ @53 EXIT

APPEND ~%tutu_var%SENIYA~

/* Reward at End of Quest */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraQuest","GLOBAL",8)~ SeniyadReward
SAY @164
+ ~Class(Player1,DRUID_ALL)~ + @165 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",9)~ + SEReward1.1D
+ ~!Class(Player1,DRUID_ALL)~ + @165 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",9)~ + SEReward1.1
++ @166 DO ~SetGlobal("X#JaheiraQuest","GLOBAL",9)~ + SEReward1.2
END

IF ~~ SEReward1.1D
SAY @167
= @168
IF ~~ THEN DO ~AddexperienceParty(5000) GiveItemCreate("X#JACLUB",Player1,1,1,0) SetGlobal("SeniyadXP","GLOBAL",1) EraseJournalEntry(@163) Shout(3) EscapeArea()~ SOLVED_JOURNAL @169 EXIT
END

IF ~~ SEReward1.2
SAY @170
+ ~Class(Player1,DRUID_ALL)~ + @171 + SEReward1.3D
+ ~!Class(Player1,DRUID_ALL)~ + @171 + SEReward1.3
+ ~Class(Player1,DRUID_ALL)~ + @172 + SEReward1.3D
+ ~!Class(Player1,DRUID_ALL)~ + @172 + SEReward1.3
++ @173 + SEReward1.4
END

IF ~~ SEReward1.3D
SAY @174
= @175
IF ~~ THEN DO ~AddexperienceParty(5000) GiveItemCreate("X#JACLUB",Player1,1,1,0) SetGlobal("SeniyadXP","GLOBAL",1) EraseJournalEntry(@163) Shout(3) EscapeArea()~ SOLVED_JOURNAL @169 EXIT
END

IF ~~ SEReward1.4
SAY @176
= @177
IF ~~ THEN DO ~AddexperienceParty(10000) GiveItemCreate("X#JACLUB",Player1,1,1,0) SetGlobal("SeniyadXP","GLOBAL",1) EraseJournalEntry(@163) Shout(3) EscapeArea()~ SOLVED_JOURNAL @169 EXIT
END

END

CHAIN ~%tutu_var%SENIYA~ SEReward1.1
@178
== ~%JAHEIRA_JOINED%~ @179
== ~%tutu_var%SENIYA~ @180
END
IF ~~ THEN DO ~SetGlobal("SeniyadXP","GLOBAL",1) AddexperienceParty(5000) GiveItemCreate("X#JACLUB",Player1,1,1,0) EraseJournalEntry(@163) Shout(3) EscapeArea()~ SOLVED_JOURNAL @169 EXIT

CHAIN ~%tutu_var%SENIYA~ SEReward1.3
@181
== ~%JAHEIRA_JOINED%~ @179
== ~%tutu_var%SENIYA~ @182
END
IF ~~ THEN DO ~SetGlobal("SeniyadXP","GLOBAL",1) AddexperienceParty(5000) GiveItemCreate("X#JACLUB",Player1,1,1,0) EraseJournalEntry(@163) Shout(3) EscapeArea()~ SOLVED_JOURNAL @169 EXIT
