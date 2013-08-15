/* CONTENTS */
/* PC talks */
///* PC talk 1 */
/* Scripted NPC Banters */
/* Xzar talks to Yeslick just after flooding mines */
/* SCRIPTS KILLED DAVAERON */
/* Unscripted NPC Banters */

APPEND ~%XZAR_JOINED%~
/* PC talks */
///* PC talk 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzFriendTalk","GLOBAL",1)~ THEN BEGIN XZPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#XzFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#XzFriendTalkTime","GLOBAL",18000)~ GOTO XZPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#XzFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#XzFriendTalkTime","GLOBAL",18000)~ GOTO XZPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#XzFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#XzFriendTalkTime","GLOBAL",18000)~ GOTO XZPC1.3
IF ~~ THEN REPLY @4 DO ~SetGlobal("X#XzFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#XzFriendTalkTime","GLOBAL",18000)~ GOTO XZPC1.4
END

IF ~~ THEN BEGIN XZPC1.1
SAY @5
IF ~~ THEN REPLY @6 GOTO XZPC1.5
IF ~~ THEN REPLY @7 GOTO XZPC1.6
IF ~~ THEN REPLY @8 GOTO XZPC1.7
END

IF ~~ THEN BEGIN XZPC1.2
SAY @9
IF ~~ THEN REPLY @10 GOTO XZPC1.8
IF ~~ THEN REPLY @11 GOTO XZPC1.4
IF ~~ THEN REPLY @12 GOTO XZPC1.7
END

IF ~~ THEN BEGIN XZPC1.3
SAY @13
IF ~~ THEN REPLY @14 GOTO XZPC1.4
IF ~~ THEN REPLY @15 GOTO XZPC1.4
IF ~~ THEN REPLY @16 GOTO XZPC1.7
END

IF ~~ THEN BEGIN XZPC1.4
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XZPC1.5
SAY @18
IF ~~ THEN REPLY @14 GOTO XZPC1.4
IF ~~ THEN REPLY @15 GOTO XZPC1.4
IF ~~ THEN REPLY @19 GOTO XZPC1.7
END

IF ~~ THEN BEGIN XZPC1.6
SAY @20
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XZPC1.7
SAY @21
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XZPC1.8
SAY @22
IF ~~ THEN REPLY @14 GOTO XZPC1.4
IF ~~ THEN REPLY @15 GOTO XZPC1.4
IF ~~ THEN REPLY @19 GOTO XZPC1.7
END

END

/* Scripted NPC Banters */
/* Xzar talks to Yeslick just after flooding mines */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XZYE1","LOCALS",1)~ THEN ~%XZAR_JOINED%~ XZYE1
@23
== ~%XZAR_BANTER%~ @24
END
IF ~~ THEN REPLY @25 DO ~SetGlobal("X#XZYE1","LOCALS",2)~ EXTERN ~%XZAR_BANTER%~ XZYE1.1

CHAIN ~%XZAR_BANTER%~ XZYE1.1
@26
END
IF ~~ THEN REPLY @27 EXTERN ~%XZAR_BANTER%~ XZYE1.1YE

CHAIN3 ~%XZAR_BANTER%~ XZYE1.1YE
@65
== ~%YESLICK_BANTER%~ @66
== ~%XZAR_BANTER%~ @67
== ~%YESLICK_BANTER%~ @68
= @69
EXIT

/* Dream Script */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XZIM1","GLOBAL",1)~ THEN ~%XZAR_JOINED%~ XZIM1
@28
DO ~SetGlobal("X#XZIM1","GLOBAL",2)~
== ~%IMOEN_BANTER%~ @29
== ~%XZAR_BANTER%~ @30
== ~%IMOEN_BANTER%~ @31
= @32
== ~%XZAR_BANTER%~ @33
== ~%IMOEN_BANTER%~ @34
== ~%XZAR_BANTER%~ @35
== ~%IMOEN_BANTER%~ @36
== ~%XZAR_BANTER%~ @37
== ~%IMOEN_BANTER%~ @38
== ~%XZAR_BANTER%~ @39
== ~%IMOEN_BANTER%~ @40
== ~%XZAR_BANTER%~ @41
DO ~RestParty()~
EXIT

/* Dream Script */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XZIM1","GLOBAL",3)~ THEN ~%XZAR_JOINED%~ XZIM2
@42
DO ~SetGlobal("X#XZIM1","GLOBAL",4)~
== ~%IMOEN_BANTER%~ @43
== ~%XZAR_BANTER%~ @44
== ~%IMOEN_BANTER%~ @45
== ~%XZAR_BANTER%~ @46
== ~%IMOEN_BANTER%~ @47
== ~%XZAR_BANTER%~ @48
DO ~RestParty()~
EXIT

/* SCRIPTS KILLED DAVAERON */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XZIM3","GLOBAL",1)~ THEN ~%XZAR_JOINED%~ XZIM3
@49
DO ~SetGlobal("X#XZIM3","GLOBAL",2)~
== ~%IMOEN_BANTER%~ @50
== ~%XZAR_BANTER%~ @51
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @52
== ~%IMOEN_BANTER%~ @53
== ~%XZAR_BANTER%~ @54
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XZJA2","GLOBAL",1)~ THEN ~%XZAR_JOINED%~ XZJA2
@49
DO ~SetGlobal("X#XZJA2","GLOBAL",2)~
== ~%JAHEIRA_BANTER%~ @55
== ~%XZAR_BANTER%~ @51
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @52
== ~%JAHEIRA_BANTER%~ @56
== ~%XZAR_BANTER%~ @57
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @58
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @59
== ~%XZAR_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @60
== ~%JAHEIRA_BANTER%~ @61
== ~%XZAR_BANTER%~ @62
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#XZJA3","GLOBAL",1)~ THEN ~%XZAR_JOINED%~ XZJA3
@49
DO ~SetGlobal("X#XZJA3","GLOBAL",2)~
== ~%JAHEIRA_BANTER%~ @55
== ~%XZAR_BANTER%~ @51
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @52
== ~%JAHEIRA_BANTER%~ @56
== ~%XZAR_BANTER%~ @57
== ~%JAHEIRA_BANTER%~ @63
== ~%XZAR_BANTER%~ @64
== ~%JAHEIRA_BANTER%~ @61
== ~%XZAR_BANTER%~ @62
EXIT

/* Unscripted NPC Banters */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZAJ1","LOCALS",0) CombatCounter(0) AreaType(FOREST) TimeOfDay(DAY) InParty("ajantis") InParty(Myself) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZAJ1
@70
DO ~SetGlobal("X#XZAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @71
== ~%XZAR_BANTER%~ @72
== ~%AJANTIS_BANTER%~ @73
== ~%XZAR_BANTER%~ @74
== ~%AJANTIS_BANTER%~ @75
== ~%XZAR_BANTER%~ @76
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZAJ2","LOCALS",0) CombatCounter(0) InParty("ajantis") AreaCheck("%Lighthouse%") !See([ENEMY]) InParty(Myself) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID) Dead("SIRINE")~ THEN ~%XZAR_BANTER%~ XZAJ2
@77
DO ~SetGlobal("X#XZAJ2","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @78
== ~%XZAR_BANTER%~ @79
== ~%AJANTIS_BANTER%~ @80
== ~%XZAR_BANTER%~ @81
== ~%AJANTIS_BANTER%~ @82
== ~%XZAR_BANTER%~ @83
== ~%AJANTIS_BANTER%~ @84
== ~%XZAR_BANTER%~ @85
= @86
== ~%XZAR_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @87
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @88
== ~%XZAR_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @89
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZAL1","LOCALS",0) CombatCounter(0) InParty("alora") !See([ENEMY]) InParty(Myself) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZAL1
@90
DO ~SetGlobal("X#XZAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @91
== ~%XZAR_BANTER%~ @92
== ~%ALORA_BANTER%~ @93
== ~%XZAR_BANTER%~ @94
== ~%ALORA_BANTER%~ @95
== ~%XZAR_BANTER%~ @96
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZBR1","LOCALS",0) CombatCounter(0) InParty("branwen") !See([ENEMY]) InParty(Myself) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZBR1
@97
DO ~SetGlobal("X#XZBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @98
== ~%XZAR_BANTER%~ @99
== ~%BRANWEN_BANTER%~ @100
== ~%XZAR_BANTER%~ @101
== ~%BRANWEN_BANTER%~ @102
== ~%XZAR_BANTER%~ @103
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZCO1","LOCALS",0) InParty("coran") !See([ENEMY]) CombatCounter(0) InParty(Myself) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZCO1
@104
DO ~SetGlobal("X#XZCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @105
== ~%XZAR_BANTER%~ @106
== ~%CORAN_BANTER%~ @107
== ~%XZAR_BANTER%~ @108
== ~%CORAN_BANTER%~ @109
== ~%XZAR_BANTER%~ @110
== ~%CORAN_BANTER%~ @111
== ~%XZAR_BANTER%~ @112
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZDY1","LOCALS",0) CombatCounter(0) InParty("dynaheir") !See([ENEMY]) InParty(Myself) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZDY1
@113
DO ~SetGlobal("X#XZDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @114
== ~%XZAR_BANTER%~ @115
== ~%DYNAHEIR_BANTER%~ @116
== ~%XZAR_BANTER%~ @117
== ~%DYNAHEIR_BANTER%~ @118
== ~%XZAR_BANTER%~ @119
== ~%DYNAHEIR_BANTER%~ @120
== ~%XZAR_BANTER%~ @121
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZED1","LOCALS",0) CombatCounter(0) InParty("edwin") !See([ENEMY]) InParty(Myself) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZED1
@122
DO ~SetGlobal("X#XZED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @123
== ~%XZAR_BANTER%~ @124
== ~%EDWIN_BANTER%~ @125
== ~%EDWIN_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @126
== ~%XZAR_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @127
== ~%XZAR_BANTER%~ @128
== ~%EDWIN_BANTER%~ @129
== ~%XZAR_BANTER%~ @130
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZEL1","LOCALS",0) CombatCounter(0) InParty("eldoth") !See([ENEMY]) InParty(Myself) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZEL1
@131
DO ~SetGlobal("X#XZEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @132
== ~%XZAR_BANTER%~ @133
== ~%ELDOTH_BANTER%~ @134
== ~%XZAR_BANTER%~ @135
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZEL2","LOCALS",0) CombatCounter(0) InParty("eldoth") !See([ENEMY]) InParty(Myself) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZEL2
@136
DO ~SetGlobal("X#XZEL2","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @137
== ~%XZAR_BANTER%~ @138
== ~%ELDOTH_BANTER%~ @139
== ~%XZAR_BANTER%~ @140
== ~%ELDOTH_BANTER%~ @141
== ~%XZAR_BANTER%~ @142
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZFA1","LOCALS",0) CombatCounter(0) InParty("faldorn") !See([ENEMY]) InParty(Myself) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZFA1
@143
DO ~SetGlobal("X#XZFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @144
== ~%XZAR_BANTER%~ @145
== ~%FALDORN_BANTER%~ @146
== ~%XZAR_BANTER%~ @147
== ~%FALDORN_BANTER%~ @148
== ~%XZAR_BANTER%~ @149
== ~%FALDORN_BANTER%~ @150
== ~%XZAR_BANTER%~ @151
== ~%FALDORN_BANTER%~ @152
== ~%XZAR_BANTER%~ @153
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZGA1","LOCALS",0) CombatCounter(0) InParty("garrick") !See([ENEMY]) InParty(Myself) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZGA1
@154
DO ~SetGlobal("X#XZGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @155
== ~%XZAR_BANTER%~ @156
== ~%GARRICK_BANTER%~ @157
== ~%XZAR_BANTER%~ @158
== ~%GARRICK_BANTER%~ @159
== ~%XZAR_BANTER%~ @160
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZKA1","LOCALS",0) CombatCounter(0) InParty("kagain") !See([ENEMY]) InParty(Myself) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZKA1
@161
DO ~SetGlobal("X#XZKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @162
== ~%XZAR_BANTER%~ @163
== ~%KAGAIN_BANTER%~ @164
== ~%XZAR_BANTER%~ @165
== ~%KAGAIN_BANTER%~ @166
== ~%XZAR_BANTER%~ @167
== ~%KAGAIN_BANTER%~ @168
== ~%XZAR_BANTER%~ @169
== ~%KAGAIN_BANTER%~ @170
== ~%XZAR_BANTER%~ @171
== ~%KAGAIN_BANTER%~ @172
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZKH1","LOCALS",0) CombatCounter(0) InParty("khalid") InParty("jaheira") !See([ENEMY]) InParty(Myself) See("khalid") See("jaheira") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZKH1
@173
DO ~SetGlobal("X#XZKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @174
== ~%XZAR_BANTER%~ @175
== ~%KHALID_BANTER%~ @176
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @177
== ~%XZAR_BANTER%~ @178
== ~%KHALID_BANTER%~ @179
== ~%XZAR_BANTER%~ @180
== ~%KHALID_BANTER%~ @181
== ~%XZAR_BANTER%~ @182
== ~%KHALID_BANTER%~ @183
== ~%XZAR_BANTER%~ @184
= @185
== ~%KHALID_BANTER%~ @186
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZKI1","GLOBAL",0) CombatCounter(0) InParty("kivan") !See([ENEMY]) InParty(Myself) InMyArea("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%XZAR_BANTER%~ XZKI1
@187
DO ~SetGlobal("X#XZKI1","GLOBAL",1)~
== ~%KIVAN_BANTER%~ @188
== ~%XZAR_BANTER%~ @189
== ~%KIVAN_BANTER%~ @190
== ~%XZAR_BANTER%~ @191
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZMI1","LOCALS",0) CombatCounter(0) InParty("minsc") !See([ENEMY]) InParty(Myself) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZMI1
@192
DO ~SetGlobal("X#XZMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @193
== ~%XZAR_BANTER%~ @194
== ~%MINSC_BANTER%~ @195
== ~%XZAR_BANTER%~ @196
== ~%MINSC_BANTER%~ @197
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZMO1","LOCALS",0) CombatCounter(0) AreaType(CITY) TimeOfDay(DAY) InParty("montaron") !See([ENEMY]) InParty(Myself) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZMO1
@198
DO ~SetGlobal("X#XZMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @199
== ~%XZAR_BANTER%~ @200
== ~%MONTARON_BANTER%~ @201
== ~%XZAR_BANTER%~ @202
== ~%MONTARON_BANTER%~ @203
== ~%XZAR_BANTER%~ @204
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZPC1","LOCALS",1) CombatCounter(0) AreaType(DUNGEON) InParty("montaron") Global("X#XZMO2","LOCALS",0) !Global("P#KnowBhaal","GLOBAL",1) !See([ENEMY]) InParty(Myself) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZMO2
@205
DO ~SetGlobal("X#XZMO2","LOCALS",1)~
== ~%MONTARON_BANTER%~ @206
== ~%XZAR_BANTER%~ @207
== ~%MONTARON_BANTER%~ @208
== ~%XZAR_BANTER%~ @209
== ~%MONTARON_BANTER%~ @210
== ~%XZAR_BANTER%~ @211
== ~%MONTARON_BANTER%~ @212
== ~%XZAR_BANTER%~ @213
= @214
== ~%MONTARON_BANTER%~ @215
== ~%XZAR_BANTER%~ @216
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZQU1","LOCALS",0) CombatCounter(0) InParty("quayle") !See([ENEMY]) InParty(Myself) See("quayle") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZQU1
@217
DO ~SetGlobal("X#XZQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @218
== ~%XZAR_BANTER%~ @219
== ~%QUAYLE_BANTER%~ @220
== ~%XZAR_BANTER%~ @221
== ~%QUAYLE_BANTER%~ @222
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZSA1","LOCALS",0) CombatCounter(0) InParty("safana") InParty("montaron") !See([ENEMY]) See("safana") See("montaron") InParty(Myself) !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZSA1
@223
DO ~SetGlobal("X#XZSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @224
== ~%XZAR_BANTER%~ @225
== ~%SAFANA_BANTER%~ @226
== ~%XZAR_BANTER%~ @227
== ~%SAFANA_BANTER%~ @228
== ~%XZAR_BANTER%~ @229
== ~%SAFANA_BANTER%~ @230
== ~%XZAR_BANTER%~ @231
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZSH1","LOCALS",0) CombatCounter(0) InParty("sharteel") !See([ENEMY]) InParty(Myself) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZSH1
@232
DO ~SetGlobal("X#XZSH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @233
== ~%XZAR_BANTER%~ @234
== ~%SHARTEEL_BANTER%~ @235
== ~%XZAR_BANTER%~ @236
== ~%SHARTEEL_BANTER%~ @237
== ~%XZAR_BANTER%~ @238
= @239
== ~%SHARTEEL_BANTER%~ @240
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZSK1","LOCALS",0) CombatCounter(0) InParty("skie") InParty("montaron") !See([ENEMY]) InParty(Myself) See("skie") See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZSK1
@241
DO ~SetGlobal("X#XZSK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @242
== ~%XZAR_BANTER%~ @243
== ~%SKIE_BANTER%~ @244
== ~%XZAR_BANTER%~ @245
== ~%SKIE_BANTER%~ @246
== ~%XZAR_BANTER%~ @247
== ~%SKIE_BANTER%~ @248
== ~%XZAR_BANTER%~ @249
== ~%SKIE_BANTER%~ @250
== ~%XZAR_BANTER%~ @251
== ~%SKIE_BANTER%~ @252
== ~%XZAR_BANTER%~ @253
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZTI1","LOCALS",0) CombatCounter(0) InParty("tiax") !See([ENEMY]) InParty(Myself) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZTI1
@254
DO ~SetGlobal("X#XZTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @255
== ~%XZAR_BANTER%~ @256
== ~%TIAX_BANTER%~ @257
== ~%XZAR_BANTER%~ @258
== ~%TIAX_BANTER%~ @259
== ~%XZAR_BANTER%~ @260
= @261
= @262
== ~%TIAX_BANTER%~ @263
== ~%XZAR_BANTER%~ @264
== ~%TIAX_BANTER%~ @265
== ~%XZAR_BANTER%~ @266
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZVI1","LOCALS",0) CombatCounter(0) InParty("viconia") !See([ENEMY]) InParty(Myself) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZVI1
@267
DO ~SetGlobal("X#XZVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @268
== ~%XZAR_BANTER%~ @269
== ~%VICONIA_BANTER%~ @270
== ~%XZAR_BANTER%~ @271
== ~%VICONIA_BANTER%~ @272
== ~%XZAR_BANTER%~ @273
== ~%VICONIA_BANTER%~ @274
= @275
== ~%XZAR_BANTER%~ @276
= @277
== ~%VICONIA_BANTER%~ @278
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XZXA1","LOCALS",0) CombatCounter(0) InParty("xan") !See([ENEMY]) InParty(Myself) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZXA1
@279
DO ~SetGlobal("X#XZXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @280
== ~%XZAR_BANTER%~ @281
== ~%XAN_BANTER%~ @282
== ~%XZAR_BANTER%~ @283
== ~%XAN_BANTER%~ @284
== ~%XZAR_BANTER%~ @285
EXIT
