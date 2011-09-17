/* CONTENTS */
/* PC talks */
///* Friend talk 1 */
///* Friend talk 2 */
///* Friend talk 3 */
/* Eldoth's attempted seduction */
/* NPC Banters */

APPEND ~%SKIE_JOINED%~

/* PC talks */
///* Friend talk 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SkFriendTalk","GLOBAL",2) Global("X#SKPC1","LOCALS",0)~ THEN BEGIN SKPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#SKPC1","LOCALS",1) SetGlobal("X#SkFriendTalk","GLOBAL",3) SetGlobal("X#SkFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#SkFriendTalkTime","GLOBAL",3600)~ GOTO SKPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#SKPC1","LOCALS",1) SetGlobal("X#SkFriendTalk","GLOBAL",3) SetGlobal("X#SkFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#SkFriendTalkTime","GLOBAL",3600)~ GOTO SKPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#SKPC1","LOCALS",1) SetGlobal("X#SkFriendTalk","GLOBAL",3) SetGlobal("X#SkFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#SkFriendTalkTime","GLOBAL",3600)~ GOTO SKPC1.3
END

IF ~~ THEN BEGIN SKPC1.1
SAY @4
IF ~~ THEN REPLY @5 GOTO SKPC1.4
IF ~~ THEN REPLY @6 GOTO SKPC1.3
END

IF ~~ THEN BEGIN SKPC1.2
SAY @7
IF ~~ THEN REPLY @8 GOTO SKPC1.4
IF ~~ THEN REPLY @9 GOTO SKPC1.3
END

IF ~~ THEN BEGIN SKPC1.3
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SKPC1.4
SAY @11
IF ~~ THEN REPLY @12 GOTO SKPC1.5
IF ~~ THEN REPLY @13 GOTO SKPC1.5
IF ~~ THEN REPLY @14 GOTO SKPC1.3
END

IF ~~ THEN BEGIN SKPC1.5
SAY @15
IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN EXTERN ~%VICONIA_BANTER%~ SKPC1.5VI
IF ~OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN GOTO SKPC1.5PC
END

IF ~~ THEN BEGIN SKPC1.5PC
SAY @16
IF ~~ THEN REPLY @17 GOTO SKPC1.6
IF ~~ THEN REPLY @18 GOTO SKPC1.3
IF ~~ THEN REPLY @19 GOTO SKPC1.6
END

IF ~~ THEN BEGIN SKPC1.6
SAY @20
IF ~~ THEN EXIT
END
END

CHAIN3 ~%VICONIA_BANTER%~ SKPC1.5VI
@21
END ~%SKIE_JOINED%~ SKPC1.5PC

APPEND ~%SKIE_JOINED%~

///* Friend talk 2 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SkFriendTalk","GLOBAL",4) Global("X#SKPC2","LOCALS",0)~ THEN BEGIN SKPC2
SAY @22
IF ~~ THEN REPLY @23 DO ~SetGlobal("X#SKPC2","LOCALS",1) SetGlobal("X#SkFriendTalk","GLOBAL",5) SetGlobal("X#SkFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#SkFriendTalkTime","GLOBAL",3600)~ GOTO SKPC2.1
IF ~~ THEN REPLY @24 DO ~SetGlobal("X#SKPC2","LOCALS",1) SetGlobal("X#SkFriendTalk","GLOBAL",5) SetGlobal("X#SkFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#SkFriendTalkTime","GLOBAL",3600)~ GOTO SKPC2.2
IF ~~ THEN REPLY @25 DO ~SetGlobal("X#SKPC2","LOCALS",1) SetGlobal("X#SkFriendTalk","GLOBAL",5) SetGlobal("X#SkFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#SkFriendTalkTime","GLOBAL",3600)~ GOTO SKPC2.3
END

IF ~~ THEN BEGIN SKPC2.1
SAY @26
IF ~~ THEN REPLY @27 GOTO SKPC2.4
IF ~~ THEN REPLY @28 GOTO SKPC2.5
IF ~~ THEN REPLY @29 GOTO SKPC2.6
END

IF ~~ THEN BEGIN SKPC2.2
SAY @30
IF ~~ THEN REPLY @31 GOTO SKPC2.7
IF ~~ THEN REPLY @32 GOTO SKPC2.8
IF ~~ THEN REPLY @33 GOTO SKPC2.9
END

IF ~~ THEN BEGIN SKPC2.3
SAY @34
IF ~~ THEN REPLY @31 GOTO SKPC2.7
IF ~~ THEN REPLY @32 GOTO SKPC2.8
IF ~~ THEN REPLY @33 GOTO SKPC2.9
END

IF ~~ THEN BEGIN SKPC2.4
SAY @35
IF ~~ THEN REPLY @31 GOTO SKPC2.7
IF ~~ THEN REPLY @32 GOTO SKPC2.8
IF ~~ THEN REPLY @33 GOTO SKPC2.9
END

IF ~~ THEN BEGIN SKPC2.5
SAY @36
IF ~~ THEN REPLY @31 GOTO SKPC2.7
IF ~~ THEN REPLY @32 GOTO SKPC2.8
IF ~~ THEN REPLY @33 GOTO SKPC2.9
END

IF ~~ THEN BEGIN SKPC2.6
SAY @37
IF ~~ THEN REPLY @38 GOTO SKPC2.7
IF ~~ THEN REPLY @32 GOTO SKPC2.8
IF ~~ THEN REPLY @33 GOTO SKPC2.9
END

IF ~~ THEN BEGIN SKPC2.7
SAY @39
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SKPC2.8
SAY @40
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SKPC2.9
SAY @41
IF ~~ THEN EXIT
END

///* Friend talk 3 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SkFriendTalk","GLOBAL",6) Global("X#SKPC3","LOCALS",0)~ THEN BEGIN SKPC3
SAY @42
IF ~~ THEN REPLY @43 DO ~SetGlobal("X#SKPC3","LOCALS",1) SetGlobal("X#SkFriendTalk","GLOBAL",7) SetGlobal("X#SkFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#SkFriendTalkTime","GLOBAL",3600)~ GOTO SKPC3.1
IF ~~ THEN REPLY @44 DO ~SetGlobal("X#SKPC3","LOCALS",1) SetGlobal("X#SkFriendTalk","GLOBAL",7) SetGlobal("X#SkFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#SkFriendTalkTime","GLOBAL",3600)~ GOTO SKPC3.2
IF ~~ THEN REPLY @45 DO ~SetGlobal("X#SKPC2","LOCALS",1) SetGlobal("X#SkFriendTalk","GLOBAL",7) SetGlobal("X#SkFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#SkFriendTalkTime","GLOBAL",3600)~ GOTO SKPC3.1
END

IF ~~ THEN BEGIN SKPC3.1
SAY @46
IF ~~ THEN REPLY @47 GOTO SKPC3.3
IF ~~ THEN REPLY @48 GOTO SKPC3.2
END

IF ~~ THEN BEGIN SKPC3.2
SAY @49
IF ~~ THEN REPLY @50 GOTO SKPC3.5
IF ~~ THEN REPLY @51 GOTO SKPC3.4
END

IF ~~ THEN BEGIN SKPC3.3
SAY @52
IF ~~ THEN REPLY @53 GOTO SKPC3.5
IF ~~ THEN REPLY @54 GOTO SKPC3.5
IF ~~ THEN REPLY @55 GOTO SKPC3.4
END

IF ~~ THEN BEGIN SKPC3.4
SAY @56
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SKPC3.5
SAY @57
IF ~~ THEN REPLY @58 GOTO SKPC3.6
IF ~~ THEN REPLY @59 GOTO SKPC3.7
IF ~~ THEN REPLY @60 GOTO SKPC3.4
END

IF ~~ THEN BEGIN SKPC3.6
SAY @61
IF ~~ THEN REPLY @62 GOTO SKPC3.8
IF ~~ THEN REPLY @63 GOTO SKPC3.9
IF ~~ THEN REPLY @64 GOTO SKPC3.4
END

IF ~~ THEN BEGIN SKPC3.7
SAY @65
IF ~~ THEN REPLY @66 GOTO SKPC3.9
IF ~~ THEN REPLY @67 GOTO SKPC3.6
END

IF ~~ THEN BEGIN SKPC3.8
SAY @68
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SKPC3.9
SAY @69
IF ~~ THEN EXIT
END

END

/* Dream Script */
/* Eldoth's attempted seduction */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#SKEL2","GLOBAL",1)~ THEN ~%SKIE_JOINED%~ X#SKEL2
@70
DO ~SetGlobal("X#SKEL2","GLOBAL",2)~
== ~%ELDOTH_BANTER%~ @71
== ~%SKIE_BANTER%~ @72
== ~%ELDOTH_BANTER%~ @73
== ~%SKIE_BANTER%~ @74
== ~%ELDOTH_BANTER%~ @75
== ~%SKIE_BANTER%~ @76
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @77
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @78
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @79
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @80
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @81
DO ~RestParty()~
EXIT

/* NPC Banters */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKAJ1","LOCALS",0) CombatCounter(0) InParty("ajantis") InParty("eldoth") !See([ENEMY]) See("ajantis") See("eldoth") InParty(Myself) !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKAJ1
@82
DO ~SetGlobal("X#SKAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @83
== ~%SKIE_BANTER%~ @84
== ~%AJANTIS_BANTER%~ @85
== ~%SKIE_BANTER%~ @86
== ~%AJANTIS_BANTER%~ @87
== ~%SKIE_BANTER%~ @88
== ~%AJANTIS_BANTER%~ @89
== ~%SKIE_BANTER%~ @90
== ~%AJANTIS_BANTER%~ @91
== ~%SKIE_BANTER%~ @92
== ~%AJANTIS_BANTER%~ @93
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKAL1","LOCALS",0) CombatCounter(0) InParty("alora") !See([ENEMY]) See("alora") InParty(Myself) !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKAL1
@94
DO ~SetGlobal("X#SKAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @95
== ~%SKIE_BANTER%~ @96
== ~%ALORA_BANTER%~ @97
== ~%SKIE_BANTER%~ @98
== ~%SKIE_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @99
== ~%ALORA_BANTER%~ @100
== ~%SKIE_BANTER%~ @101
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKAL2","LOCALS",0) CombatCounter(0) InParty("alora") !See([ENEMY]) See("alora") InParty(Myself) !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKAL2
@102
DO ~SetGlobal("X#SKAL2","LOCALS",1)~
== ~%ALORA_BANTER%~ @103
== ~%SKIE_BANTER%~ @104
== ~%ALORA_BANTER%~ @105
== ~%SKIE_BANTER%~ @106
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKAL3","LOCALS",0) CombatCounter(0) AreaType(DUNGEON) InParty("alora") !See([ENEMY]) See("alora") InParty(Myself) !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKAL3
@107
DO ~SetGlobal("X#SKAL3","LOCALS",1)~
== ~%ALORA_BANTER%~ @108
== ~%SKIE_BANTER%~ @109
== ~%ALORA_BANTER%~ @110
== ~%SKIE_BANTER%~ @111
== ~%ALORA_BANTER%~ @112
== ~%SKIE_BANTER%~ @113
== ~%ALORA_BANTER%~ @114
== ~%SKIE_BANTER%~ @115
== ~%ALORA_BANTER%~ @116
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKBR1","LOCALS",0) CombatCounter(0) InParty("branwen") !See([ENEMY]) See("branwen") InParty(Myself) !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKBR1
@117
DO ~SetGlobal("X#SKBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @118
== ~%SKIE_BANTER%~ @119
== ~%BRANWEN_BANTER%~ @120
== ~%SKIE_BANTER%~ @121
== ~%BRANWEN_BANTER%~ @122
== ~%SKIE_BANTER%~ @123
== ~%BRANWEN_BANTER%~ @124
== ~%SKIE_BANTER%~ @125
== ~%BRANWEN_BANTER%~ @126
== ~%SKIE_BANTER%~ @127
== ~%BRANWEN_BANTER%~ @128
== ~%SKIE_BANTER%~ @129
== ~%BRANWEN_BANTER%~ @130
== ~%SKIE_BANTER%~ @131
== ~%BRANWEN_BANTER%~ @132
== ~%SKIE_BANTER%~ @133
== ~%BRANWEN_BANTER%~ @134
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKCO1","GLOBAL",0) CombatCounter(0) InParty("coran") !See([ENEMY]) See("coran") InParty(Myself) !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKCO1
@135
DO ~SetGlobal("X#SKCO1","GLOBAL",1)~
== ~%CORAN_BANTER%~ @136
== ~%SKIE_BANTER%~ @137
== ~%CORAN_BANTER%~ @138
== ~%SKIE_BANTER%~ @139
== ~%CORAN_BANTER%~ @140
== ~%SKIE_BANTER%~ @141
== ~%CORAN_BANTER%~ @142
== ~%SKIE_BANTER%~ @143
== ~%CORAN_BANTER%~ @144
== ~%SKIE_BANTER%~ @145
== ~%CORAN_BANTER%~ @146
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKCO1","GLOBAL",1) Global("X#SKCO2","GLOBAL",0) CombatCounter(0) InParty("coran") InParty("eldoth") !See([ENEMY]) See("coran") See("eldoth") InParty(Myself) !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKCO2
@147
DO ~SetGlobal("X#SKCO2","GLOBAL",1)~
== ~%CORAN_BANTER%~ @148
== ~%SKIE_BANTER%~ @149
== ~%CORAN_BANTER%~ @150
== ~%SKIE_BANTER%~ @151
== ~%CORAN_BANTER%~ @152
== ~%SKIE_BANTER%~ @153
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKDY1","LOCALS",0) CombatCounter(0) InParty("dynaheir") !See([ENEMY]) See("dynaheir") InParty(Myself) !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKDY1
@154
DO ~SetGlobal("X#SKDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @155
== ~%SKIE_BANTER%~ @156
== ~%DYNAHEIR_BANTER%~ @157
== ~%SKIE_BANTER%~ @158
== ~%DYNAHEIR_BANTER%~ @159
== ~%SKIE_BANTER%~ @160
== ~%DYNAHEIR_BANTER%~ @161
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKED1","LOCALS",0) CombatCounter(0) InParty("edwin") !See([ENEMY]) See("edwin") InParty(Myself) !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKED1
@162
DO ~SetGlobal("X#SKED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @163
== ~%SKIE_BANTER%~ @164
== ~%EDWIN_BANTER%~ @165
== ~%SKIE_BANTER%~ @166
== ~%EDWIN_BANTER%~ @167
== ~%SKIE_BANTER%~ @168
== ~%EDWIN_BANTER%~ @169
== ~%SKIE_BANTER%~ @170
== ~%EDWIN_BANTER%~ @171
== ~%SKIE_BANTER%~ @172
== ~%EDWIN_BANTER%~ @173
== ~%SKIE_BANTER%~ @174
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKED2","LOCALS",0) CombatCounter(0) InParty("edwin") !See([ENEMY]) See("edwin") InParty(Myself) !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKED2
@175
DO ~SetGlobal("X#SKED2","LOCALS",1)~
== ~%EDWIN_BANTER%~ @176
== ~%SKIE_BANTER%~ @177
== ~%EDWIN_BANTER%~ @178
== ~%SKIE_BANTER%~ @179
== ~%EDWIN_BANTER%~ @180
== ~%SKIE_BANTER%~ @181
== ~%EDWIN_BANTER%~ @182
== ~%SKIE_BANTER%~ @183
== ~%EDWIN_BANTER%~ @184
== ~%SKIE_BANTER%~ @185
== ~%EDWIN_BANTER%~ @186
== ~%SKIE_BANTER%~ @187
== ~%EDWIN_BANTER%~ @188
== ~%SKIE_BANTER%~ @189
== ~%EDWIN_BANTER%~ @190
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKED3","LOCALS",0) CombatCounter(0) InParty("edwin") !See([ENEMY]) See("edwin") InParty(Myself) !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKED3
@191
DO ~SetGlobal("X#SKED3","LOCALS",1)~
== ~%EDWIN_BANTER%~ @192
== ~%SKIE_BANTER%~ @193
== ~%EDWIN_BANTER%~ @194
== ~%SKIE_BANTER%~ @195
== ~%EDWIN_BANTER%~ @196
== ~%SKIE_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @197
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @198
== ~%SKIE_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @199
== ~%EDWIN_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @200
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @201
== ~%EDWIN_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @202
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKEL1","GLOBAL",0) CombatCounter(0) InParty("eldoth") !See([ENEMY]) See("eldoth") InParty(Myself) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKEL1
@203
DO ~SetGlobal("X#SKEL1","GLOBAL",1)~
== ~%ELDOTH_BANTER%~ @204
== ~%SKIE_BANTER%~ @205
== ~%ELDOTH_BANTER%~ @206
== ~%SKIE_BANTER%~ @207
== ~%ELDOTH_BANTER%~ @208
== ~%SKIE_BANTER%~ @209
== ~%ELDOTH_BANTER%~ @210
== ~%SKIE_BANTER%~ @211
== ~%ELDOTH_BANTER%~ @212
== ~%SKIE_BANTER%~ @213
== ~%ELDOTH_BANTER%~ @214
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @215
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @216
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @217
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @218
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @219
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKEL2","GLOBAL",1) Global("X#SKEL3","GLOBAL",0) CombatCounter(0) InParty("eldoth") !See([ENEMY]) See("eldoth") InParty(Myself) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKEL3
@220
DO ~SetGlobal("X#SKEL3","GLOBAL",1)~
== ~%ELDOTH_BANTER%~ @221
== ~%SKIE_BANTER%~ @222
== ~%ELDOTH_BANTER%~ @223
== ~%SKIE_BANTER%~ @224
== ~%ELDOTH_BANTER%~ @225
== ~%SKIE_BANTER%~ @226
== ~%ELDOTH_BANTER%~ @227
== ~%SKIE_BANTER%~ @228
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKFA1","LOCALS",0) CombatCounter(0) See("faldorn") !See([ENEMY]) InParty("faldorn") InParty(Myself) !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKFA1
@229
DO ~SetGlobal("X#SKFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @230
== ~%SKIE_BANTER%~ @231
== ~%FALDORN_BANTER%~ @232
== ~%SKIE_BANTER%~ @233
== ~%FALDORN_BANTER%~ @234
== ~%SKIE_BANTER%~ @235
== ~%FALDORN_BANTER%~ @236
== ~%SKIE_BANTER%~ @237
== ~%FALDORN_BANTER%~ @238
== ~%SKIE_BANTER%~ @239
== ~%FALDORN_BANTER%~ @240
== ~%SKIE_BANTER%~ @241
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKFA2","LOCALS",0) CombatCounter(0) InParty("faldorn") !See([ENEMY]) See("faldorn") InParty(Myself) !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKFA2
@242 
DO ~SetGlobal("X#SKFA2","LOCALS",1)~
== ~%FALDORN_BANTER%~ @243
== ~%SKIE_BANTER%~ @244
== ~%FALDORN_BANTER%~ @245
== ~%SKIE_BANTER%~ @246
== ~%FALDORN_BANTER%~ @247
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKGA1","LOCALS",0) CombatCounter(0) InParty("garrick") !See([ENEMY]) See("garrick") InParty(Myself) !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKGA1
@248
DO ~SetGlobal("X#SKGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @249
== ~%SKIE_BANTER%~ @250
== ~%GARRICK_BANTER%~ @251
== ~%SKIE_BANTER%~ @252
== ~%GARRICK_BANTER%~ @253
== ~%SKIE_BANTER%~ @254
== ~%GARRICK_BANTER%~ @255
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKGA2","GLOBAL",0) CombatCounter(0) InParty("garrick") !See([ENEMY]) See("garrick") InParty(Myself) !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKGA2
@256
DO ~SetGlobal("X#SKGA2","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @257
== ~%SKIE_BANTER%~ @258
== ~%GARRICK_BANTER%~ @259
== ~%GARRICK_BANTER%~ @260
== ~%SKIE_BANTER%~ @261
== ~%GARRICK_BANTER%~ @262
== ~%SKIE_BANTER%~ @263
== ~%GARRICK_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @264
== ~%SKIE_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @265
== ~%GARRICK_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @266
== ~%SKIE_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @267
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKGA3","GLOBAL",0) Global("X#SKGA4","GLOBAL",0) Global("X#SKGA5","GLOBAL",0) CombatCounter(0) AreaType(FOREST) InParty("garrick") InParty("eldoth") !See([ENEMY]) See("garrick") See("eldoth") InParty(Myself) !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKGA3
@268
DO ~SetGlobal("X#SKGA3","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @269
== ~%SKIE_BANTER%~ @270
== ~%GARRICK_BANTER%~ @271
== ~%SKIE_BANTER%~ @272
== ~%GARRICK_BANTER%~ @273
== ~%SKIE_BANTER%~ @274
== ~%GARRICK_BANTER%~ @275
== ~%SKIE_BANTER%~ @276
== ~%SKIE_BANTER%~ @277
== ~%GARRICK_BANTER%~ @278
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKGA4","GLOBAL",0) CombatCounter(0) AreaType(FOREST) Global("X#SKGA3","GLOBAL",0) Global("X#SKGA5","GLOBAL",0) InParty("garrick") Dead("eldoth") !See([ENEMY]) See("garrick") InParty(Myself) !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKGA4
@268
DO ~SetGlobal("X#SKGA4","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @269
== ~%SKIE_BANTER%~ @270
== ~%GARRICK_BANTER%~ @271
== ~%SKIE_BANTER%~ @272
== ~%GARRICK_BANTER%~ @273
== ~%SKIE_BANTER%~ @274
== ~%GARRICK_BANTER%~ @275
== ~%SKIE_BANTER%~ @276
== ~%SKIE_BANTER%~ @279
== ~%GARRICK_BANTER%~ @280
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKGA5","GLOBAL",0) CombatCounter(0) Global("X#SKGA3","GLOBAL",0) Global("X#SKGA4","GLOBAL",0) AreaType(FOREST) InParty("garrick") !InParty("eldoth") !Dead("eldoth") !See([ENEMY]) See("garrick") InParty(Myself) !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKGA5
@268
DO ~SetGlobal("X#SKGA4","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @269
== ~%SKIE_BANTER%~ @270
== ~%GARRICK_BANTER%~ @271
== ~%SKIE_BANTER%~ @272
== ~%GARRICK_BANTER%~ @273
== ~%SKIE_BANTER%~ @274
== ~%GARRICK_BANTER%~ @275
== ~%SKIE_BANTER%~ @276
== ~%SKIE_BANTER%~ @281
== ~%GARRICK_BANTER%~ @278
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKIM1","LOCALS",0) CombatCounter(0) InParty("%IMOEN_DV%") !See([ENEMY]) See("%IMOEN_DV%") InParty(Myself) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKIM1
@282
DO ~SetGlobal("X#SKIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @283
== ~%SKIE_BANTER%~ @284
== ~%IMOEN_BANTER%~ @285
== ~%SKIE_BANTER%~ @286
== ~%IMOEN_BANTER%~ @285
== ~%SKIE_BANTER%~ @287
== ~%IMOEN_BANTER%~ @285
== ~%SKIE_BANTER%~ @288
== ~%IMOEN_BANTER%~ @289
== ~%SKIE_BANTER%~ @290
== ~%IMOEN_BANTER%~ @291
== ~%SKIE_BANTER%~ @292
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKIM2","LOCALS",0) CombatCounter(0) InParty("%IMOEN_DV%") !See([ENEMY]) See("%IMOEN_DV%") InParty(Myself) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKIM2
@293
DO ~SetGlobal("X#SKIM2","LOCALS",1)~
== ~%IMOEN_BANTER%~ @294
== ~%SKIE_BANTER%~ @295
== ~%IMOEN_BANTER%~ @296
== ~%SKIE_BANTER%~ @297
== ~%IMOEN_BANTER%~ @298
== ~%SKIE_BANTER%~ @299
== ~%IMOEN_BANTER%~ @300
== ~%SKIE_BANTER%~ @301
== ~%IMOEN_BANTER%~ @302
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKIM3","LOCALS",0) CombatCounter(0) InParty("%IMOEN_DV%") InParty("eldoth") !See([ENEMY]) See("%IMOEN_DV%") See("eldoth") InParty(Myself) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKIM3
@303
DO ~SetGlobal("X#SKIM3","LOCALS",1)~
== ~%IMOEN_BANTER%~ @304
== ~%SKIE_BANTER%~ @305
== ~%IMOEN_BANTER%~ @306
== ~%SKIE_BANTER%~ @307
== ~%IMOEN_BANTER%~ @308
== ~%SKIE_BANTER%~ @309
== ~%IMOEN_BANTER%~ @310
== ~%SKIE_BANTER%~ @311
== ~%IMOEN_BANTER%~ @312
== ~%SKIE_BANTER%~ @313
== ~%IMOEN_BANTER%~ @314
== ~%SKIE_BANTER%~ @315
== ~%IMOEN_BANTER%~ @316
== ~%SKIE_BANTER%~ @317
== ~%IMOEN_BANTER%~ @318
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKJA1","LOCALS",0) CombatCounter(0) InParty("jaheira") !See([ENEMY]) See("jaheira") InParty(Myself) !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKJA1
@319
DO ~SetGlobal("X#SKJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @320
== ~%SKIE_BANTER%~ @321
== ~%JAHEIRA_BANTER%~ @322
== ~%SKIE_BANTER%~ @323
== ~%JAHEIRA_BANTER%~ @324
== ~%SKIE_BANTER%~ @325
== ~%JAHEIRA_BANTER%~ @326
== ~%SKIE_BANTER%~ @327
== ~%JAHEIRA_BANTER%~ @328
== ~%SKIE_BANTER%~ @329
== ~%JAHEIRA_BANTER%~ @330
== ~%SKIE_BANTER%~ @331
== ~%JAHEIRA_BANTER%~ @332
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKJA2","LOCALS",0) HPPercentLT("skie",75) InParty("jaheira") CombatCounter(0) !See([ENEMY]) See("jaheira") InParty(Myself) !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKJA2
@333
DO ~SetGlobal("X#SKJA2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @334
== ~%SKIE_BANTER%~ @335
== ~%JAHEIRA_BANTER%~ @336
== ~%SKIE_BANTER%~ @337
== ~%JAHEIRA_BANTER%~ @338
== ~%SKIE_BANTER%~ @339
== ~%JAHEIRA_BANTER%~ @340
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKKH1","LOCALS",0) CombatCounter(0) InParty("khalid") InParty("eldoth") !See([ENEMY]) See("khalid") See("eldoth") InParty(Myself) !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKKH1
@341
DO ~SetGlobal("X#SKKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @342
== ~%SKIE_BANTER%~ @343
== ~%KHALID_BANTER%~ @344
== ~%SKIE_BANTER%~ @345
== ~%KHALID_BANTER%~ @346
== ~%SKIE_BANTER%~ @347
== ~%KHALID_BANTER%~ @348
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKMI1","LOCALS",0) CombatCounter(0) InParty("minsc") !See([ENEMY]) See("minsc") InParty(Myself) !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKMI1
@349
DO ~SetGlobal("X#SKMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @350
== ~%SKIE_BANTER%~ @351
== ~%MINSC_BANTER%~ @352
== ~%SKIE_BANTER%~ @353
= @354
== ~%MINSC_BANTER%~ @355
== ~%SKIE_BANTER%~ @356
== ~%MINSC_BANTER%~ @357
= @358
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKMI2","LOCALS",0) CombatCounter(0) InParty("minsc") !See([ENEMY]) See("minsc") InParty(Myself) !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKMI2
@359
DO ~SetGlobal("X#SKMI2","LOCALS",1)~
== ~%MINSC_BANTER%~ @360
== ~%SKIE_BANTER%~ @361
== ~%MINSC_BANTER%~ @362
= @363
= @364
= @365
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKSA1","LOCALS",0) InParty("safana") CombatCounter(0) !See([ENEMY]) See("safana") InParty(Myself) !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKSA1
@366
DO ~SetGlobal("X#SKSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @367
== ~%SKIE_BANTER%~ @368
== ~%SAFANA_BANTER%~ @369
== ~%SKIE_BANTER%~ @370
== ~%SAFANA_BANTER%~ @371
== ~%SKIE_BANTER%~ @372
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKSH1","GLOBAL",0) CombatCounter(0) InParty("sharteel") InParty("eldoth") !See([ENEMY]) InParty(Myself) See("sharteel") See("eldoth") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKSH1
@373
DO ~SetGlobal("X#SKSH1","GLOBAL",1)~
== ~%SHARTEEL_BANTER%~ @374
== ~%SKIE_BANTER%~ @375
== ~%SHARTEEL_BANTER%~ @376
== ~%SKIE_BANTER%~ @377
== ~%SHARTEEL_BANTER%~ @378
== ~%SKIE_BANTER%~ @379
== ~%SHARTEEL_BANTER%~ @380
== ~%SKIE_BANTER%~ @381
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKQU1","LOCALS",0) CombatCounter(0) InParty("quayle") !See([ENEMY]) See("quayle") InParty(Myself) !StateCheck("quayle",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKQU1
@382
DO ~SetGlobal("X#SKQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @383
== ~%SKIE_BANTER%~ @384
== ~%QUAYLE_BANTER%~ @385
== ~%SKIE_BANTER%~ @386
== ~%QUAYLE_BANTER%~ @387
== ~%SKIE_BANTER%~ @388
== ~%QUAYLE_BANTER%~ @389
== ~%SKIE_BANTER%~ @390
== ~%QUAYLE_BANTER%~ @391
== ~%SKIE_BANTER%~ @392
== ~%QUAYLE_BANTER%~ @393
== ~%SKIE_BANTER%~ @394
== ~%QUAYLE_BANTER%~ @395
== ~%SKIE_BANTER%~ @396
== ~%QUAYLE_BANTER%~ @397
== ~%SKIE_BANTER%~ @398
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKTI1","LOCALS",0) CombatCounter(0) InParty("tiax") !See([ENEMY]) See("tiax") InParty(Myself) !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKTI1
@399
DO ~SetGlobal("X#SKTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @400
== ~%SKIE_BANTER%~ @401
== ~%TIAX_BANTER%~ @402
== ~%SKIE_BANTER%~ @403
== ~%TIAX_BANTER%~ @404
== ~%SKIE_BANTER%~ @405
== ~%TIAX_BANTER%~ @406
== ~%SKIE_BANTER%~ @407
== ~%TIAX_BANTER%~ @408
== ~%SKIE_BANTER%~ @409
== ~%TIAX_BANTER%~ @410
== ~%SKIE_BANTER%~ @411
== ~%TIAX_BANTER%~ @412
== ~%SKIE_BANTER%~ @413
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKTI2","LOCALS",0) CombatCounter(0) AreaType(FOREST) InParty("tiax") !See([ENEMY]) See("tiax") InParty(Myself) !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKTI2
@414
DO ~SetGlobal("X#SKTI2","LOCALS",1)~
== ~%TIAX_BANTER%~ @415
== ~%SKIE_BANTER%~ @416
== ~%TIAX_BANTER%~ @417
== ~%SKIE_BANTER%~ @418
== ~%TIAX_BANTER%~ @419
== ~%SKIE_BANTER%~ @418
== ~%TIAX_BANTER%~ @420
== ~%SKIE_BANTER%~ @421
== ~%TIAX_BANTER%~ @422
== ~%SKIE_BANTER%~ @423
== ~%TIAX_BANTER%~ @424
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKVI1","LOCALS",0) CombatCounter(0) InParty("viconia") InParty("eldoth") !See([ENEMY]) InParty(Myself) See("viconia") See("eldoth") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKVI1
@425
DO ~SetGlobal("X#SKVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @426
== ~%ELDOTH_BANTER%~ @427
== ~%VICONIA_BANTER%~ @428
== ~%SKIE_BANTER%~ @429
== ~%VICONIA_BANTER%~ @430
== ~%ELDOTH_BANTER%~ @431
== ~%VICONIA_BANTER%~ @432
== ~%SKIE_BANTER%~ @433
== ~%ELDOTH_BANTER%~ @434
== ~%VICONIA_BANTER%~ @435
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKVI2","LOCALS",0) CombatCounter(0) InParty("viconia") InParty("eldoth") !See([ENEMY]) InParty(Myself) See("viconia") See("eldoth") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKVI2
@436
DO ~SetGlobal("X#SKVI2","LOCALS",1)~
== ~%VICONIA_BANTER%~ @437
== ~%SKIE_BANTER%~ @438
== ~%VICONIA_BANTER%~ @439
== ~%ELDOTH_BANTER%~ @440
== ~%VICONIA_BANTER%~ @441
== ~%SKIE_BANTER%~ @442
== ~%ELDOTH_BANTER%~ @443
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SKXA1","LOCALS",0) CombatCounter(0) InParty("xan") !See([ENEMY]) See("xan") InParty(Myself) !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKXA1
@444
DO ~SetGlobal("X#SKXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @445
== ~%SKIE_BANTER%~ @446
== ~%XAN_BANTER%~ @447
== ~%SKIE_BANTER%~ @448
== ~%XAN_BANTER%~ @449
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @450
== ~%SKIE_BANTER%~ @451
== ~%XAN_BANTER%~ @452
== ~%SKIE_BANTER%~ @453
== ~%XAN_BANTER%~ @454
EXIT
