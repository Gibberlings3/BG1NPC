/* CONTENTS */
/* Friend talks */
///* Friend talk */
///* Low rep */
///* High rep */
///* Bhaal talk */
///* Medium rep */
/* Ajantis quarrel */
/* Quayle banter */
/* Unscripted banters */

APPEND ~%TIAX_JOINED%~

/* Friend talks */
///* Friend talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiLeader","GLOBAL",1)~ THEN BEGIN TIPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#TiLeader","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#TiLeader","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC1.2
IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_2%)~ THEN REPLY @3 DO ~SetGlobal("X#TiLeader","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC1.3
IF ~~ THEN REPLY @4 DO ~SetGlobal("X#TiLeader","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC1.4
END

IF ~~ THEN BEGIN TIPC1.1
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC1.2
SAY @6
IF ~~ THEN REPLY @7 GOTO TIPC1.5
IF ~~ THEN REPLY @8 GOTO TIPC1.2
IF ~~ THEN REPLY @9 GOTO TIPC1.4
END

IF ~~ THEN BEGIN TIPC1.3
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC1.4
SAY @11
IF ~~ THEN REPLY @12 GOTO TIPC1.6
IF ~~ THEN REPLY @13 GOTO TIPC1.7
END

IF ~~ THEN BEGIN TIPC1.5
SAY @14
IF ~~ THEN REPLY @15 GOTO TIPC1.1
IF ~~ THEN REPLY @16 GOTO TIPC1.8
IF ~~ THEN REPLY @13 GOTO TIPC1.7
END

IF ~~ THEN BEGIN TIPC1.6
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC1.7
SAY @18
IF ~~ THEN DO ~LeaveParty() ActionOverride("tiax",Enemy())~ EXIT
END

IF ~~ THEN BEGIN TIPC1.8
SAY @19
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

///* Low rep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiLowReputation","GLOBAL",1)~ THEN BEGIN TIPC2
SAY @20
IF ~~ THEN REPLY @21 DO ~SetGlobal("X#TiLowReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC2.1
IF ~~ THEN REPLY @22 DO ~SetGlobal("X#TiLowReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC2.2
IF ~~ THEN REPLY @23 DO ~SetGlobal("X#TiLowReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC2.3
IF ~~ THEN REPLY @24 DO ~SetGlobal("X#TiLowReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC2.4
END

IF ~~ THEN BEGIN TIPC2.1
SAY @25
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC2.2
SAY @26
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC2.3
SAY @27
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC2.4
SAY @28
IF ~~ THEN EXIT
END

///* High rep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiHighReputation","GLOBAL",1)~ THEN BEGIN TIPC4
SAY @29
IF ~~ THEN REPLY @30 DO ~SetGlobal("X#TiHighReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC4.1
IF ~~ THEN REPLY @31 DO ~SetGlobal("X#TiHighReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC4.1
IF ~~ THEN REPLY @32 DO ~SetGlobal("X#TiHighReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC4.2
END

IF ~~ THEN BEGIN TIPC4.1
SAY @33
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN TIPC4.2
SAY @34
IF ~~ THEN DO ~LeaveParty() ActionOverride("tiax",Enemy())~
EXIT
END

///* Bhaal talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiBhaal","GLOBAL",1)~ THEN BEGIN TIPC5
SAY @35
IF ~~ THEN REPLY @36 DO ~SetGlobal("X#TiBhaal","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC5.1
IF ~~ THEN REPLY @37 DO ~SetGlobal("X#TiBhaal","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC5.2
IF ~~ THEN REPLY @38 DO ~SetGlobal("X#TiBhaal","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC5.3
END

IF ~~ THEN BEGIN TIPC5.1
SAY @39
IF ~~ THEN REPLY @40 GOTO TIPC5.4
IF ~~ THEN REPLY @41 GOTO TIPC5.6
END

IF ~~ THEN BEGIN TIPC5.2
SAY @42
IF ~~ THEN REPLY @40 GOTO TIPC5.4
IF ~~ THEN REPLY @41 GOTO TIPC5.6
END

IF ~~ THEN BEGIN TIPC5.3
SAY @43
IF ~~ THEN REPLY @40 GOTO TIPC5.4
IF ~~ THEN REPLY @41 GOTO TIPC5.6
END

IF ~~ THEN BEGIN TIPC5.4
SAY @44
IF ~~ THEN REPLY @45 GOTO TIPC5.5
IF ~~ THEN REPLY @46 GOTO TIPC5.6
IF ~~ THEN REPLY @47 GOTO TIPC5.7
IF ~~ THEN REPLY @48 GOTO TIPC5.6
END

IF ~~ THEN BEGIN TIPC5.5
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC5.6
SAY @50
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC5.7
SAY @51
IF ~~ THEN EXIT
END

///* Medium rep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiMedReputation","GLOBAL",1)~ THEN BEGIN TIPC3
SAY @52
IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN EXTERN ~%AJANTIS_BANTER%~ TIPC3AjantisTalk
IF ~OR(3) !InParty("ajantis") !InMyArea("ajantis") StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN GOTO TIPC1PC
END

IF ~~ THEN BEGIN TIPC1PC
SAY @53
IF ~~ THEN REPLY @54 DO ~SetGlobal("X#TiMedReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC3.1
IF ~~ THEN REPLY @55 DO ~SetGlobal("X#TiMedReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC3.2
IF ~~ THEN REPLY @56 DO ~SetGlobal("X#TiMedReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC3.3
IF ~~ THEN REPLY @57 DO ~SetGlobal("X#TiMedReputation","GLOBAL",2) RealSetGlobalTimer("X#TiFriendTalkTime","GLOBAL",1800)~ GOTO TIPC3.4
END

IF ~~ THEN BEGIN TIPC3.1
SAY @58
IF ~~ THEN REPLY @59 GOTO TIPC3.5
IF ~~ THEN REPLY @60 GOTO TIPC3.6
IF ~~ THEN REPLY @61 GOTO TIPC3.7
END

IF ~~ THEN BEGIN TIPC3.2
SAY @62
IF ~~ THEN REPLY @63 GOTO TIPC3.5
IF ~~ THEN REPLY @64 GOTO TIPC3.6
IF ~~ THEN REPLY @61 GOTO TIPC3.7
END

IF ~~ THEN BEGIN TIPC3.3
SAY @65
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC3.4
SAY @66
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC3.5
SAY @67
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TIPC3.6
SAY @33
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN TIPC3.7
SAY @68
IF ~~ THEN DO ~LeaveParty() ActionOverride("tiax",Enemy())~ EXIT
END

END

/* Ajantis quarrel */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#TIAJ2","LOCALS",1)~ THEN ~%TIAX_JOINED%~ TIAJ2
@69
DO ~SetGlobal("X#TIAJ2","LOCALS",2)~
== ~%AJANTIS_BANTER%~ @70
= @71
END ~%TIAX_BANTER%~ TIAJ2.PC

/* Quayle banter */
CHAIN IF WEIGHT #10 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#QUTI3","GLOBAL",1) Global("X#TIQU1","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIQU1
@72
DO ~SetGlobal("X#TIQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @73
== ~%TIAX_BANTER%~ @74
== ~%QUAYLE_BANTER%~ @75
== ~%TIAX_BANTER%~ @76
DO ~ActionOverride("quayle",Attack("tiax")) Attack("quayle")~
EXIT

CHAIN3 ~%AJANTIS_BANTER%~ TIPC3AjantisTalk
@77
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @78
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @79
== ~%TIAX_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @80
== ~%TIAX_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @81
== ~%TIAX_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @82
== ~%TIAX_BANTER%~ @83
END ~%TIAX_JOINED%~ TIPC1PC

/* Unscripted banters */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#TIAJ1","LOCALS",0) InParty("ajantis") CombatCounter(0) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIAJ1
@84
DO ~SetGlobal("X#TIAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @85
== ~%TIAX_BANTER%~ @86
= @87
== ~%AJANTIS_BANTER%~ @88
== ~%TIAX_BANTER%~ @89
== ~%AJANTIS_BANTER%~ @90
EXIT

APPEND ~%TIAX_BANTER%~

IF ~~ THEN BEGIN TIAJ2.PC
SAY @91
IF ~~ THEN REPLY @92 GOTO TIAJ2.1
IF ~~ THEN REPLY @93 GOTO TIAJ2.2
IF ~~ THEN REPLY @94 GOTO TIAJ2.3
IF ~~ THEN REPLY @95 GOTO TIAJ2.4
IF ~~ THEN REPLY @96 GOTO TIAJ2.5
IF ~~ THEN REPLY @97 GOTO TIAJ2.6
END

IF ~~ THEN BEGIN TIAJ2.1
SAY @98
IF ~~ THEN EXTERN ~%AJANTIS_BANTER%~ TIAJ2.1AJ
END

IF ~~ THEN BEGIN TIAJ2.2
SAY @99
IF ~~ THEN EXTERN ~%AJANTIS_BANTER%~ TIAJ2.2AJ
END

IF ~~ THEN BEGIN TIAJ2.3
SAY @100
IF ~~ THEN EXTERN ~%AJANTIS_BANTER%~ TIAJ2.3AJ
END

IF ~~ THEN BEGIN TIAJ2.4
SAY @101
IF ~~ THEN EXTERN ~%AJANTIS_BANTER%~ TIAJ2.4AJ
END

IF ~~ THEN BEGIN TIAJ2.4PC
SAY @102
IF ~~ THEN DO ~ActionOverride("ajantis",LeaveParty()) ActionOverride("ajantis",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN TIAJ2.5
SAY @33
IF ~~ THEN EXTERN ~%AJANTIS_BANTER%~ TIAJ2.5AJ
END

IF ~~ THEN BEGIN TIAJ2.5PC
SAY @103
IF ~~ THEN DO ~ActionOverride("tiax",LeaveParty()) ActionOverride("tiax",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN TIAJ2.6
SAY @104
IF ~~ THEN EXTERN ~%AJANTIS_BANTER%~ TIAJ2.6AJ
END

END

CHAIN3 ~%AJANTIS_BANTER%~ TIAJ2.1AJ
@105
EXIT

CHAIN3 ~%AJANTIS_BANTER%~ TIAJ2.2AJ
@106
EXIT

CHAIN3 ~%AJANTIS_BANTER%~ TIAJ2.3AJ
 @107
EXIT

CHAIN3 ~%AJANTIS_BANTER%~ TIAJ2.4AJ
@108
END ~%TIAX_BANTER%~ TIAJ2.4PC

CHAIN3 ~%AJANTIS_BANTER%~ TIAJ2.5AJ
@109
END ~%TIAX_BANTER%~ TIAJ2.5PC

CHAIN3 ~%AJANTIS_BANTER%~ TIAJ2.6AJ
@110
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#TIAL1","LOCALS",0) !See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIAL1
@111
DO ~SetGlobal("X#TIAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @112
== ~%TIAX_BANTER%~ @113
== ~%ALORA_BANTER%~ @114
== ~%TIAX_BANTER%~ @115
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#TIAL2","LOCALS",0) !See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIAL2
@116
DO ~SetGlobal("X#TIAL2","LOCALS",1)~
== ~%ALORA_BANTER%~ @117
== ~%TIAX_BANTER%~ @118
= @119
== ~%ALORA_BANTER%~ @120
== ~%TIAX_BANTER%~ @121
== ~%ALORA_BANTER%~ @122
== ~%TIAX_BANTER%~ @123
== ~%ALORA_BANTER%~ @124
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#TIBR1","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%TIAX_BANTER%~ TIBR1
@125
DO ~SetGlobal("X#TIBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @126
== ~%TIAX_BANTER%~ @127
== ~%BRANWEN_BANTER%~ @128
== ~%TIAX_BANTER%~ @129
== ~%BRANWEN_BANTER%~ @130
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#TIBR2","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIBR2
@131
DO ~SetGlobal("X#TIBR2","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @132
== ~%TIAX_BANTER%~ @133
== ~%BRANWEN_BANTER%~ @134
== ~%TIAX_BANTER%~ @135
== ~%BRANWEN_BANTER%~ @136
== ~%TIAX_BANTER%~ @137
== ~%BRANWEN_BANTER%~ @136
== ~%TIAX_BANTER%~ @138
== ~%BRANWEN_BANTER%~ @139
== ~%TIAX_BANTER%~ @140
== ~%BRANWEN_BANTER%~ @141
== ~%TIAX_BANTER%~ @142
== ~%BRANWEN_BANTER%~ @143
== ~%TIAX_BANTER%~ @144
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#TICO1","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TICO1
@145
DO ~SetGlobal("X#TICO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @146
== ~%TIAX_BANTER%~ @147
== ~%CORAN_BANTER%~ @148
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD)  Global("P#CoranHasBaby","GLOBAL",1) InParty("coran") Global("X#TICO2","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TICO2
@149
DO ~SetGlobal("X#TICO2","LOCALS",1)~
== ~%CORAN_BANTER%~ @150
== ~%TIAX_BANTER%~ @151
== ~%CORAN_BANTER%~ @152
== ~%TIAX_BANTER%~ @153
= @154
== ~%CORAN_BANTER%~ @155
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#TIDY1","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIDY1
@156
DO ~SetGlobal("X#TIDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @157
== ~%TIAX_BANTER%~ @158
== ~%DYNAHEIR_BANTER%~ @159
== ~%TIAX_BANTER%~ @160
= @161
= @162
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#TIED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIED1
@163
DO ~SetGlobal("X#TIED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @164
== ~%TIAX_BANTER%~ @165
== ~%EDWIN_BANTER%~ @166
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#TIED2","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIED2
@167
DO ~SetGlobal("X#TIED2","LOCALS",1)~
== ~%EDWIN_BANTER%~ @168
== ~%TIAX_BANTER%~ @169
== ~%EDWIN_BANTER%~ @170
== ~%TIAX_BANTER%~ @171
== ~%EDWIN_BANTER%~ @172
= @173
== ~%TIAX_BANTER%~ @174
== ~%EDWIN_BANTER%~ @175
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("eldoth") Global("X#TIEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIEL1
@176
DO ~SetGlobal("X#TIEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @177
== ~%TIAX_BANTER%~ @178
== ~%ELDOTH_BANTER%~ @179
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#TIGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIGA1
@180
DO ~SetGlobal("X#TIGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @181
== ~%TIAX_BANTER%~ @182
== ~%GARRICK_BANTER%~ @183
== ~%TIAX_BANTER%~ @184
== ~%GARRICK_BANTER%~ @185
== ~%TIAX_BANTER%~ @186
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#TIIM1","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIIM1
@187
DO ~SetGlobal("X#TIIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @188
== ~%TIAX_BANTER%~ @189
== ~%IMOEN_BANTER%~ @190
== ~%TIAX_BANTER%~ @191
== ~%IMOEN_BANTER%~ @192
== ~%TIAX_BANTER%~ @193
== ~%IMOEN_BANTER%~ @194
== ~%TIAX_BANTER%~ @195
== ~%IMOEN_BANTER%~ @196
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#TIJA1","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIJA1
@197
DO ~SetGlobal("X#TIJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @198
== ~%TIAX_BANTER%~ @199
= @200
== ~%JAHEIRA_BANTER%~ @201
== ~%TIAX_BANTER%~ @202
== ~%JAHEIRA_BANTER%~ @203
== ~%TIAX_BANTER%~ @204
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#TIKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIKA1
@205
DO ~SetGlobal("X#TIKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @206
== ~%TIAX_BANTER%~ @207
== ~%KAGAIN_BANTER%~ @208
== ~%TIAX_BANTER%~ @209
== ~%KAGAIN_BANTER%~ @210
= @211
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#TIKA2","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIKA2
@212
DO ~SetGlobal("X#TIKA2","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @213
== ~%TIAX_BANTER%~ @214
= @215
== ~%KAGAIN_BANTER%~ @216
== ~%TIAX_BANTER%~ @217
= @218
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("khalid") Global("X#TIKH1","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIKH1
@219
DO ~SetGlobal("X#TIKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @220
== ~%TIAX_BANTER%~ @221
== ~%KHALID_BANTER%~ @222
== ~%TIAX_BANTER%~ @223
= @224
= @225
= @226
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#TIKH2","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIKH2
@227
DO ~SetGlobal("X#TIKH2","LOCALS",1)~
== ~%KHALID_BANTER%~ @228
== ~%TIAX_BANTER%~ @229
== ~%KHALID_BANTER%~ @230
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @231
== ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @232
== ~%KHALID_BANTER%~ @233
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#TIKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIKI1
@234
DO ~SetGlobal("X#TIKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @235
== ~%TIAX_BANTER%~ @236
== ~%KIVAN_BANTER%~ @237
== ~%TIAX_BANTER%~ @238
= @239
== ~%KIVAN_BANTER%~ @240
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#TIMI1","GLOBAL",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIMI1
@241
DO ~SetGlobal("X#TIMI1","GLOBAL",1)~
== ~%MINSC_BANTER%~ @242
== ~%TIAX_BANTER%~ @243
== ~%MINSC_BANTER%~ @244
== ~%TIAX_BANTER%~ @245
== ~%MINSC_BANTER%~ @246
== ~%TIAX_BANTER%~ @247
== ~%MINSC_BANTER%~ @248
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#TIMI1","GLOBAL",1) Global("X#TIMI2","GLOBAL",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIMI2
@249
DO ~SetGlobal("X#TIMI1","GLOBAL",1)~
== ~%MINSC_BANTER%~ @250
== ~%TIAX_BANTER%~ @251
= @252
== ~%MINSC_BANTER%~ @253
== ~%TIAX_BANTER%~ @254
== ~%MINSC_BANTER%~ @255
== ~%TIAX_BANTER%~ @256
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) HPPercentLT("minsc",25) InParty("minsc") Global("X#TIMI2","GLOBAL",1) Global("X#TIMI3","GLOBAL",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIMI3
@257
DO ~SetGlobal("X#TIMI3","GLOBAL",1)~
== ~%MINSC_BANTER%~ @258
= @259
== ~%TIAX_BANTER%~ @260
= @261
== ~%MINSC_BANTER%~ @262
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") Global("X#TIMO1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIMO1
@263
DO ~SetGlobal("X#TIMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @264
== ~%TIAX_BANTER%~ @265
= @266
= @267
== ~%MONTARON_BANTER%~ @268
== ~%TIAX_BANTER%~ @269
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#TISA1","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(CITY)~ THEN ~%TIAX_BANTER%~ TISA1
@270
DO ~SetGlobal("X#TISA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @271
== ~%TIAX_BANTER%~ @272
== ~%SAFANA_BANTER%~ @273
= @274
== ~%TIAX_BANTER%~ @275
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#TISH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TISH1
@276
DO ~SetGlobal("X#TISH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @277
== ~%TIAX_BANTER%~ @278
= @279
== ~%SHARTEEL_BANTER%~ @280
= @281
== ~%TIAX_BANTER%~ @282
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) HPPercentLT("tiax",50) InParty("viconia") Global("X#TIVI1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIVI1
@283
DO ~SetGlobal("X#TIVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @284
== ~%TIAX_BANTER%~ @285
== ~%VICONIA_BANTER%~ @286
== ~%TIAX_BANTER%~ @287
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#TIVI2","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIVI2
@288
DO ~SetGlobal("X#TIVI2","LOCALS",1)~
== ~%VICONIA_BANTER%~ @289
== ~%TIAX_BANTER%~ @290
== ~%VICONIA_BANTER%~ @291
== ~%TIAX_BANTER%~ @292
= @293
== ~%VICONIA_BANTER%~ @294
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#TIXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIXA1
@295
DO ~SetGlobal("X#TIXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @296
== ~%TIAX_BANTER%~ @297
== ~%XAN_BANTER%~ @298
== ~%TIAX_BANTER%~ @299
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(DUNGEON) InParty("xan") Global("X#TIXA2","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIXA2
@300
DO ~SetGlobal("X#TIXA2","LOCALS",1)~
== ~%XAN_BANTER%~ @301
== ~%TIAX_BANTER%~ @302
== ~%XAN_BANTER%~ @303
= @304
== ~%TIAX_BANTER%~ @305
= @306
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("xzar") Global("X#TIXZ1","LOCALS",0) !See([ENEMY]) See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIXZ1
@307
DO ~SetGlobal("X#TIXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @308
== ~%TIAX_BANTER%~ @309
== ~%XZAR_BANTER%~ @310
== ~%XZAR_BANTER%~ @311
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @312
== ~%XZAR_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @313
== ~%TIAX_BANTER%~ @314
== ~%XZAR_BANTER%~ @315
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("X#TIYE1","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIYE1
@316
DO ~SetGlobal("X#TIYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @317
== ~%TIAX_BANTER%~ @318
== ~%YESLICK_BANTER%~ @319
== ~%TIAX_BANTER%~ @320
= @321
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(OUTDOOR) InParty("yeslick") Global("X#TIYE2","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%TIAX_BANTER%~ TIYE2
@322
DO ~SetGlobal("X#TIYE2","LOCALS",1)~
== ~%YESLICK_BANTER%~ @323
== ~%TIAX_BANTER%~ @324
= @325
== ~%YESLICK_BANTER%~ @326
= @327
== ~%TIAX_BANTER%~ @328
= @321
== ~%YESLICK_BANTER%~ @329
EXIT
