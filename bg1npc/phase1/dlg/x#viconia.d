/* CONTENTS */
/* PC talks */
///* PC talk 1 */
///* PC talk 2 - requires Imoen */
///* PC talk 3 - Viconia's thanks */
/* Scripted NPC banters */
///* Viconia banters w safana in an inn */
///* Eldoth, bring me some food */
/* NPC/NPC banters */

APPEND ~%VICONIA_JOINED%~

/* PC talks */
///* PC talk 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ViFriendTalk","GLOBAL",1)~ THEN BEGIN VIPC1
SAY @0
= @1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#ViFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#ViFriendTalkTime","GLOBAL",18000)~ GOTO VIPC1.1
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#ViFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#ViFriendTalkTime","GLOBAL",18000)~ GOTO VIPC1.2
IF ~~ THEN REPLY @4 DO ~SetGlobal("X#ViFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#ViFriendTalkTime","GLOBAL",18000)~ GOTO VIPC1.3
END

IF ~~ THEN BEGIN VIPC1.1
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VIPC1.2
SAY @6
IF ~~ THEN REPLY @7 GOTO VIPC1.4
IF ~~ THEN REPLY @8 GOTO VIPC1.4
IF ~~ THEN REPLY @9 GOTO VIPC1.3
END

IF ~~ THEN BEGIN VIPC1.3
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VIPC1.4
SAY @11
IF ~~ THEN EXIT
END

///* PC talk 2 - requires Imoen */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ViFriendTalk","GLOBAL",3)~ THEN BEGIN VIPC2
SAY @12
= @13
IF ~~ THEN REPLY @14 DO ~SetGlobal("X#ViFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#ViFriendTalkTime","GLOBAL",18000)~ GOTO VIPC2.1
IF ~~ THEN REPLY @15 DO ~SetGlobal("X#ViFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#ViFriendTalkTime","GLOBAL",18000)~ GOTO VIPC2.2
IF ~~ THEN REPLY @16 DO ~SetGlobal("X#ViFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#ViFriendTalkTime","GLOBAL",18000)~ GOTO VIPC2.3
IF ~~ THEN REPLY @17 DO ~SetGlobal("X#ViFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#ViFriendTalkTime","GLOBAL",18000)~ GOTO VIPC2.4
END

IF ~~ THEN BEGIN VIPC2.1
SAY @18
IF ~~ THEN REPLY @19 GOTO VIPC2.8
IF ~~ THEN REPLY @20 GOTO VIPC2.8
IF ~~ THEN REPLY @21 GOTO VIPC2.7
IF ~~ THEN REPLY @22 GOTO VIPC2.4
END

IF ~~ THEN BEGIN VIPC2.2
SAY @23
= @24
IF ~~ THEN REPLY @25 GOTO VIPC2.5
IF ~~ THEN REPLY @26 GOTO VIPC2.5
IF ~~ THEN REPLY @27 GOTO VIPC2.6
END

IF ~~ THEN BEGIN VIPC2.3
SAY @28
= @29
IF ~~ THEN REPLY @30 GOTO VIPC2.8
IF ~~ THEN REPLY @31 GOTO VIPC2.8
IF ~~ THEN REPLY @32 GOTO VIPC2.7
END

IF ~~ THEN BEGIN VIPC2.4
SAY @33
IF ~~ THEN REPLY @34 EXIT
IF ~~ THEN REPLY @35 GOTO VIPC2.7
END

IF ~~ THEN BEGIN VIPC2.5
SAY @36
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VIPC2.6
SAY @37
IF ~~ THEN REPLY @14 GOTO VIPC2.1
IF ~~ THEN REPLY @16 GOTO VIPC2.3
IF ~~ THEN REPLY @17 GOTO VIPC2.4
END

IF ~~ THEN BEGIN VIPC2.7
SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN VIPC2.8
SAY @39
IF ~~ THEN EXIT
END

/* Dream Script */
///* PC talk 3 - Viconia's thanks */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#VIPC3","LOCALS",1)~ THEN BEGIN VIPC3
SAY @40
= @41
IF ~~ THEN REPLY @42 DO ~SetGlobal("X#VIPC3","LOCALS",2)~ GOTO VIPC3.1
IF ~~ THEN REPLY @43 DO ~SetGlobal("X#VIPC3","LOCALS",2)~ GOTO VIPC3.2
IF ~Gender(Player1,MALE)~ THEN REPLY @44 DO ~SetGlobal("X#VIPC3","LOCALS",2)~ GOTO VIPC3.3
IF ~~ THEN REPLY @45 DO ~SetGlobal("X#VIPC3","LOCALS",2)~ GOTO VIPC3.4
END

IF ~~ THEN BEGIN VIPC3.1
SAY @46
= @47
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN VIPC3.2
SAY @48
= @47
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN VIPC3.3
SAY @49
= @50
IF ~~ THEN DO ~SetGlobal("X#ViconiaLover","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN VIPC3.4
SAY @51
= @47
IF ~~ THEN DO ~RestParty()~
EXIT
END

END

/* Scripted NPC banters */
///* Dream Script */
///* Viconia banters w safana in an inn */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#VISA1","LOCALS",1)~ THEN ~%VICONIA_JOINED%~ VISA1
@52
DO ~SetGlobal("X#VISA1","LOCALS",2)~
== ~%SAFANA_BANTER%~ @53
== ~%VICONIA_BANTER%~ @54
== ~%SAFANA_BANTER%~ @55
== ~%VICONIA_BANTER%~ @56
= @57
== ~%SAFANA_BANTER%~ @58
== ~%VICONIA_BANTER%~ @59
DO ~CreateItem("%tutu_var%AMUL10",0,0,0)
CreateItem("%tutu_scriptbg%RING12",0,0,0)
RestParty()~
EXIT

///* Dream Script */
///* Eldoth, bring me some food */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#VIEL1","LOCALS",1)~ THEN ~%VICONIA_JOINED%~ VIEL1
@60
DO ~SetGlobal("X#VIEL1","LOCALS",2)~
== ~%ELDOTH_BANTER%~ @61
== ~%VICONIA_BANTER%~ @62
== ~%ELDOTH_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @63
== ~%ELDOTH_BANTER%~ IF ~OR(3) !InParty("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID)~ THEN @64
== ~%VICONIA_BANTER%~ @65
DO ~RestParty()~
EXIT

/* NPC/NPC banters */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#VIAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIAJ1
@66
DO ~SetGlobal("X#VIAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @67
== ~%VICONIA_BANTER%~ @68
== ~%AJANTIS_BANTER%~ @69
== ~%VICONIA_BANTER%~ @70
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#VIBR1","GLOBAL",0) !See([ENEMY]) See("branwen") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIBR1
@71
DO ~SetGlobal("X#VIBR1","GLOBAL",1)~
== ~%BRANWEN_BANTER%~ @72
== ~%VICONIA_BANTER%~ @73
== ~%BRANWEN_BANTER%~ @74
== ~%VICONIA_BANTER%~ @75
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#VIBR1","GLOBAL",1) Global("X#VIBR2","GLOBAL",0) !See([ENEMY]) See("branwen") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIBR2
@76
DO ~SetGlobal("X#VIBR2","GLOBAL",1)~
== ~%BRANWEN_BANTER%~ @77
== ~%VICONIA_BANTER%~ @78
== ~%BRANWEN_BANTER%~ @79
== ~%VICONIA_BANTER%~ @80
== ~%BRANWEN_BANTER%~ @81
== ~%VICONIA_BANTER%~ @82
== ~%BRANWEN_BANTER%~ @83
== ~%VICONIA_BANTER%~ @84
== ~%BRANWEN_BANTER%~ @85
== ~%VICONIA_BANTER%~ @86
== ~%BRANWEN_BANTER%~ @87
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#VICO1","LOCALS",0) !See([ENEMY]) See("coran") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VICO1
@88
DO ~SetGlobal("X#VICO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @89
== ~%VICONIA_BANTER%~ @90
== ~%CORAN_BANTER%~ @91
== ~%VICONIA_BANTER%~ @92
== ~%CORAN_BANTER%~ @93
== ~%VICONIA_BANTER%~ @94
== ~%CORAN_BANTER%~ @95
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#VIDY1","LOCALS",0) !See([ENEMY]) See("dynaheir") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIDY1
@96
DO ~SetGlobal("X#VIDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @97
== ~%VICONIA_BANTER%~ @98
== ~%DYNAHEIR_BANTER%~ @99
== ~%VICONIA_BANTER%~ @100
== ~%DYNAHEIR_BANTER%~ @101
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#VIDY2","LOCALS",0) !See([ENEMY]) See("dynaheir") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIDY2
@102
DO ~SetGlobal("X#VIDY2","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @103
== ~%VICONIA_BANTER%~ @104
== ~%DYNAHEIR_BANTER%~ @105
== ~%VICONIA_BANTER%~ @106
== ~%DYNAHEIR_BANTER%~ @107
= @108
== ~%VICONIA_BANTER%~ @109
== ~%DYNAHEIR_BANTER%~ @110
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) HPPercentLT("edwin", 50) InParty("edwin") Global("X#VIED1","LOCALS",0) !See([ENEMY]) See("edwin") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIED1
@111
DO ~SetGlobal("X#VIED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @112
== ~%VICONIA_BANTER%~ @113
== ~%EDWIN_BANTER%~ @114
== ~%VICONIA_BANTER%~ @115
== ~%EDWIN_BANTER%~ @116
== ~%VICONIA_BANTER%~ @117
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("faldorn") Global("X#VIFA1","LOCALS",0) !See([ENEMY]) See("faldorn") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIFA1
@118 
DO ~SetGlobal("X#VIFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @119
== ~%VICONIA_BANTER%~ @120
== ~%FALDORN_BANTER%~ @121
= @122
== ~%VICONIA_BANTER%~ @123
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#VIGA1","LOCALS",0) !See([ENEMY]) See("garrick") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIGA1
@124
DO ~SetGlobal("X#VIGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @125
== ~%VICONIA_BANTER%~ @126
== ~%GARRICK_BANTER%~ @127
== ~%VICONIA_BANTER%~ @128
== ~%GARRICK_BANTER%~ @129
== ~%VICONIA_BANTER%~ @130
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#VIIM1","LOCALS",0) CombatCounter(0) InParty("%IMOEN_DV%") !See([ENEMY]) See("%IMOEN_DV%") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIIM1
@131
DO ~SetGlobal("X#VIIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @132
== ~%VICONIA_BANTER%~ @133
= @134
== ~%IMOEN_BANTER%~ @135
== ~%VICONIA_BANTER%~ @136
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) HPPercentLT("%IMOEN_DV%", 50) InParty("%IMOEN_DV%") HaveSpell(CLERIC_CURE_LIGHT_WOUNDS) Global("X#VIIM2","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIIM2
@137
DO ~SetGlobal("X#VIIM2","LOCALS",1) Spell("%IMOEN_DV%",CLERIC_CURE_LIGHT_WOUNDS)~
== ~%VICONIA_BANTER%~ @138
== ~%IMOEN_BANTER%~ @139
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#VIIM3","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIIM3
@140
DO ~SetGlobal("X#VIIM3","LOCALS",1)~
== ~%IMOEN_BANTER%~ @141
== ~%VICONIA_BANTER%~ @142
== ~%IMOEN_BANTER%~ @143
== ~%VICONIA_BANTER%~ @144
== ~%IMOEN_BANTER%~ @145
== ~%VICONIA_BANTER%~ @146
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") AreaType(CITY) Global("X#VIJA1","LOCALS",0) !See([ENEMY]) See("jaheira") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIJA1
@147
DO ~SetGlobal("X#VIJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @148
== ~%VICONIA_BANTER%~ @149
== ~%JAHEIRA_BANTER%~ @150
== ~%VICONIA_BANTER%~ @151
== ~%JAHEIRA_BANTER%~ @152
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") InParty("khalid") Global("X#VIJA2","LOCALS",0) !See([ENEMY]) See("jaheira") See("khalid") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIJA2
@153
DO ~SetGlobal("X#VIJA2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @154
== ~%VICONIA_BANTER%~ @155
== ~%JAHEIRA_BANTER%~ @156
== ~%VICONIA_BANTER%~ @157
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#VIKH1","LOCALS",0) !See([ENEMY]) See("khalid") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIKH1
@158
DO ~SetGlobal("X#VIKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @159
== ~%VICONIA_BANTER%~ @160
== ~%KHALID_BANTER%~ @161
== ~%VICONIA_BANTER%~ @162
== ~%KHALID_BANTER%~ @163
== ~%VICONIA_BANTER%~ @164
== ~%KHALID_BANTER%~ @165
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#VIKI1","GLOBAL",0) !See([ENEMY]) See("kivan") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIKI1
@166 
DO ~SetGlobal("X#VIKI1","GLOBAL",1)~
== ~%KIVAN_BANTER%~ @167
== ~%VICONIA_BANTER%~ @168 
== ~%KIVAN_BANTER%~ @169 
== ~%VICONIA_BANTER%~ @170 
== ~%KIVAN_BANTER%~ @171
== ~%VICONIA_BANTER%~ @172
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("P#KIVI3","GLOBAL",1) Global("X#VIKI2","GLOBAL",0) !See([ENEMY]) See("kivan") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIKI2
@173
DO ~SetGlobal("X#VIKI2","GLOBAL",1)~
== ~%KIVAN_BANTER%~ @174
== ~%VICONIA_BANTER%~ @175
== ~%KIVAN_BANTER%~ @176
== ~%VICONIA_BANTER%~ @177
== ~%KIVAN_BANTER%~ @178
== ~%VICONIA_BANTER%~ @179
== ~%KIVAN_BANTER%~ @180
== ~%VICONIA_BANTER%~ @181
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#VIQU1","LOCALS",0) !See([ENEMY]) See("quayle") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIQU1
@182
DO ~SetGlobal("X#VIQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @183
== ~%VICONIA_BANTER%~ @184
== ~%QUAYLE_BANTER%~ @185
== ~%VICONIA_BANTER%~ @186
== ~%QUAYLE_BANTER%~ @187
== ~%VICONIA_BANTER%~ @188
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#VISK2","LOCALS",0) Global("X#VISK1","LOCALS",0) InParty("skie") InParty("eldoth") !See([ENEMY]) See("skie") See("eldoth") InParty(Myself) !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VISK1
@189
DO ~SetGlobal("X#VISK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @190
== ~%VICONIA_BANTER%~ @191
== ~%SKIE_BANTER%~ @192
== ~%VICONIA_BANTER%~ @193
== ~%SKIE_BANTER%~ @194
== ~%ELDOTH_BANTER%~ @195
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#VISK1","LOCALS",0) Global("X#VISK2","LOCALS",0) InParty("skie") Dead("eldoth") InParty("eldoth") !See([ENEMY]) See("skie") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VISK1
@196
DO ~SetGlobal("X#VISK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @190
== ~%VICONIA_BANTER%~ @197
== ~%SKIE_BANTER%~ @198
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#VITI1","LOCALS",0) !See([ENEMY]) See("tiax") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VITI1
@199
DO ~SetGlobal("X#VITI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @200
== ~%VICONIA_BANTER%~ @201
== ~%TIAX_BANTER%~ @202
== ~%VICONIA_BANTER%~ @203
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#VIXA1","LOCALS",0) !See([ENEMY]) See("xan") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIXA1
@204
DO ~SetGlobal("X#VIXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @205
== ~%VICONIA_BANTER%~ @206
== ~%XAN_BANTER%~ @207
== ~%VICONIA_BANTER%~ @208
== ~%XAN_BANTER%~ @209
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") Global("X#VIXZ1","LOCALS",0) !See([ENEMY]) See("xzar") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIXZ1
@210
DO ~SetGlobal("X#VIXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @211
== ~%VICONIA_BANTER%~ @212
== ~%XZAR_BANTER%~ @213
== ~%VICONIA_BANTER%~ @214
== ~%XZAR_BANTER%~ @215
== ~%VICONIA_BANTER%~ @216
== ~%XZAR_BANTER%~ @217
== ~%VICONIA_BANTER%~ @218
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("P#KIVI5","GLOBAL",1) Global("X#VIKI3","GLOBAL",0) !See([ENEMY]) See("kivan") InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VIKI3
@219 
DO ~SetGlobal("X#VIKI3","GLOBAL",1)~
== ~%KIVAN_BANTER%~ @220
= @221
== ~%VICONIA_BANTER%~ @222 
== ~%KIVAN_BANTER%~ @223 
END ~%VICONIA_JOINED%~ VIKI3PC

APPEND ~%VICONIA_JOINED%~

IF ~~ THEN BEGIN VIKI3PC
SAY @224
IF ~~ THEN REPLY @225 GOTO VKFight1
IF ~~ THEN REPLY @226 GOTO VKFight2
IF ~~ THEN REPLY @227 GOTO VKFight3
IF ~~ THEN REPLY @228 EXTERN ~%KIVAN_JOINED%~ VKResolve
IF ~~ THEN REPLY @229 EXTERN ~%KIVAN_JOINED%~ VKFight4
END

IF ~~ THEN BEGIN VKFight1
SAY @230
IF ~~ THEN EXTERN ~%KIVAN_JOINED%~ VKFight1KI
END

IF ~~ THEN BEGIN VKFight2
SAY @231
IF ~~ THEN REPLY @232 GOTO VKFight1
IF ~~ THEN REPLY @233 GOTO VReject
END

IF ~~ THEN BEGIN VKFight3
SAY @234
IF ~~ THEN EXTERN ~%KIVAN_JOINED%~ VKFight3KI
END

IF ~~ THEN BEGIN VKFight3VI
SAY @235
IF ~~ THEN REPLY @236 GOTO VKFight1
IF ~ReputationGT(Player1, 8)~ THEN REPLY @237 EXTERN ~%KIVAN_JOINED%~ KReject1
IF ~!ReputationGT(Player1, 8)~ THEN REPLY @237 EXTERN ~%KIVAN_JOINED%~ KReject2
END

IF ~~ THEN BEGIN VKFight4VI
SAY @238
IF ~~ THEN DO ~ActionOverride("kivan",Attack("viconia")) Attack("kivan") SetGlobal("P#KiViFi","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN VReject
SAY @239
= @240
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN VKResolveVI
SAY @241
IF ~~ THEN EXIT
END

IF ~Global("P#KiViFi","GLOBAL",2) Dead("kivan")~ THEN BEGIN VVictory
SAY @242
= @243
IF ~~ THEN DO ~SetGlobal("P#KiViFi","GLOBAL",3)~ EXIT
END

END

APPEND ~%KIVAN_JOINED%~

IF ~~ THEN BEGIN KReject1
SAY @244
= @245
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN KReject2
SAY @246
= @247
IF ~~ THEN DO ~ActionOverride("viconia",Attack("kivan")) Attack("viconia") SetGlobal("P#KiViFi","GLOBAL",1) SetGlobal("P#KivanRejected","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN VKResolve
SAY @248
IF ~~ THEN EXTERN ~%VICONIA_JOINED%~ VKResolveVI
END

IF ~~ THEN BEGIN VKFight1KI
SAY @249
IF ~~ THEN REPLY @250 EXTERN ~%VICONIA_JOINED%~ VReject
IF ~ReputationGT(Player1, 8)~ THEN REPLY @251 GOTO KReject1
IF ~ReputationLT(Player1, 9)~ THEN REPLY @251 GOTO KReject2
IF ~~ THEN REPLY @252 GOTO VKResolve
END

IF ~~ THEN BEGIN VKFight3KI
SAY @253
IF ~~ THEN EXTERN ~%VICONIA_JOINED%~ VKFight3VI
END

IF ~~ THEN BEGIN VKFight4
SAY @254
IF ~~ THEN EXTERN ~%VICONIA_JOINED%~ VKFight4VI
END

IF ~Global("P#KiViFi","GLOBAL",2) Dead("viconia") Global("P#KivanRejected","GLOBAL",1)~ THEN BEGIN KVictory1
SAY @255
IF ~~ THEN DO ~SetGlobal("P#KiViFi","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~Global("P#KiViFi","GLOBAL",2) Dead("viconia") Global("P#KivanRejected","GLOBAL",0)~ THEN BEGIN KVictory2
SAY @255
IF ~~ THEN DO ~SetGlobal("P#KiViFi","GLOBAL",3)~ EXIT END
END
