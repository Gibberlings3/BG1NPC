/* CONTENTS */
/* Friend talk */
/* Xzar's bedtime story */
/* NPC Banters */

APPEND ~%GARRICK_JOINED%~

/* Friend talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#GaFriendTalk","GLOBAL",1)~ THEN BEGIN Garrick_PC_1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#GaFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#GaFriendTalkTime","GLOBAL",18000)~ GOTO GreatBard
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#GaFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#GaFriendTalkTime","GLOBAL",18000)~ GOTO BagCarrier
END

IF ~~ THEN BEGIN GreatBard
SAY @3
IF ~~ THEN REPLY @4 EXIT
IF ~~ THEN REPLY @5 GOTO BagCarrier
END

IF ~~ THEN BEGIN BagCarrier
SAY @6
IF ~~ THEN EXIT
END

END

/* AT REST */
/* Xzar's bedtime story */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#GarXzarRest1","GLOBAL",1)~ THEN ~%GARRICK_JOINED%~ Garrick_XZAR_1
@7
DO ~SetGlobal("X#GarXzarRest1","GLOBAL",2)~
== ~%XZAR_BANTER%~ @8
== ~%GARRICK_BANTER%~ @9
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @10
== ~%XZAR_BANTER%~ @11
== ~%GARRICK_BANTER%~ @12
== ~%XZAR_BANTER%~ @13
== ~%GARRICK_BANTER%~ @14
== ~%XZAR_BANTER%~ @15
== ~%GARRICK_BANTER%~ @16
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @17
== ~%XZAR_BANTER%~ @18
== ~%GARRICK_BANTER%~ @19
== ~%XZAR_BANTER%~ @20
== ~%GARRICK_BANTER%~ @21
== ~%XZAR_BANTER%~ @22
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @23
== ~%GARRICK_BANTER%~ @24
== ~%XZAR_BANTER%~ @25
== ~%GARRICK_BANTER%~ @26
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @27
== ~%XZAR_BANTER%~ @28
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @29
== ~%XZAR_BANTER%~ @30
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @31
== ~%GARRICK_BANTER%~ @32
== ~%XZAR_BANTER%~ @33
DO ~RestParty()~
EXIT

/* NPC Banters */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#Garrick_Ajantis","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_Ajantis_1
@34 
DO ~SetGlobal("X#Garrick_Ajantis","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @35
== ~%GARRICK_BANTER%~ @36
== ~%AJANTIS_BANTER%~ @37
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @38
== ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @39
== ~%AJANTIS_BANTER%~ @40
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#Garrick_Alora","LOCALS",0) !See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_Alora_1
@41 
DO ~SetGlobal("X#Garrick_Alora","LOCALS",1)~
== ~%ALORA_BANTER%~ @42
== ~%GARRICK_BANTER%~ @43
== ~%ALORA_BANTER%~ @44
== ~%GARRICK_BANTER%~ @45
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @46
== ~%ALORA_BANTER%~ @47
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#Garrick_BRANWEN","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_Branwen_1
@48 
DO ~SetGlobal("X#Garrick_BRANWEN","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @49
== ~%GARRICK_BANTER%~ @50
== ~%BRANWEN_BANTER%~ @51
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @52
== ~%GARRICK_BANTER%~ @53
== ~%BRANWEN_BANTER%~ @54
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#Garrick_CORAN","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_CORAN_1
@55 
DO ~SetGlobal("X#Garrick_CORAN","LOCALS",1)~
== ~%CORAN_BANTER%~ @56
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @57
== ~%CORAN_BANTER%~ @58
== ~%GARRICK_BANTER%~ @59
== ~%CORAN_BANTER%~ @60
== ~%GARRICK_BANTER%~ @61
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @62
== ~%CORAN_BANTER%~ @63
== ~%GARRICK_BANTER%~ @64
== ~%CORAN_BANTER%~ @65
== ~%GARRICK_BANTER%~ @66
== ~%CORAN_BANTER%~ IF ~Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",0)~ THEN @67
== ~%CORAN_BANTER%~ IF ~Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",0)~ THEN @68
== ~%CORAN_BANTER%~ IF ~Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1)~ THEN @69
== ~%CORAN_BANTER%~ IF ~Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2)~ THEN @70
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#Garrick_DYNAHEIR","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_DYNAHEIR_1
@71 
DO ~SetGlobal("X#Garrick_DYNAHEIR","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @72
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @73
== ~%GARRICK_BANTER%~ @74
== ~%DYNAHEIR_BANTER%~ @75
== ~%GARRICK_BANTER%~ @76
== ~%DYNAHEIR_BANTER%~ @77
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#Garrick_EDWIN","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_EDWIN_1
@78 
DO ~SetGlobal("X#Garrick_EDWIN","LOCALS",1)~
== ~%EDWIN_BANTER%~ @79
== ~%GARRICK_BANTER%~ @80
== ~%EDWIN_BANTER%~ @81
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @82
== ~%GARRICK_BANTER%~ @83
== ~%EDWIN_BANTER%~ @84
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("X#Garrick_ELDOTH","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_ELDOTH_1
@85 
DO ~SetGlobal("X#Garrick_ELDOTH","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @86
== ~%GARRICK_BANTER%~ @87
== ~%ELDOTH_BANTER%~ @88
== ~%GARRICK_BANTER%~ @89
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @90
== ~%ELDOTH_BANTER%~ @91
== ~%GARRICK_BANTER%~ @92
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("X#Garrick_ELDOTH","LOCALS",1) !See([ENEMY]) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_ELDOTH_2
@93 
DO ~SetGlobal("X#Garrick_ELDOTH","LOCALS",2)~
== ~%ELDOTH_BANTER%~ @94
== ~%GARRICK_BANTER%~ @95
== ~%ELDOTH_BANTER%~ @96
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @97
== ~%GARRICK_BANTER%~ @98
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("X#Garrick_FALDORN","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_FALDORN_1
@99 
DO ~SetGlobal("X#Garrick_FALDORN","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @100
== ~%FALDORN_BANTER%~ @101
== ~%GARRICK_BANTER%~ @102
== ~%FALDORN_BANTER%~ @103
== ~%GARRICK_BANTER%~ @104
== ~%FALDORN_BANTER%~ @105
== ~%GARRICK_BANTER%~ @106
== ~%FALDORN_BANTER%~ @107
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @108
== ~%GARRICK_BANTER%~ @109
== ~%FALDORN_BANTER%~ @110
== ~%GARRICK_BANTER%~ @111
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("X#Garrick_FALDORN","LOCALS",1) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_FALDORN_2
@112 
DO ~SetGlobal("X#Garrick_FALDORN","LOCALS",2)~
== ~%GARRICK_BANTER%~ @113
== ~%GARRICK_BANTER%~ @114
== ~%GARRICK_BANTER%~ @115
== ~%FALDORN_BANTER%~ @116
== ~%GARRICK_BANTER%~ @117
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @118
== ~%GARRICK_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @119
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @120
== ~%GARRICK_BANTER%~ @121
== ~%FALDORN_BANTER%~ @122
== ~%GARRICK_BANTER%~ @123
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @124
== ~%GARRICK_BANTER%~ @125
== ~%FALDORN_BANTER%~ @126
== ~%GARRICK_BANTER%~ @127
== ~%FALDORN_BANTER%~ @128
== ~%GARRICK_BANTER%~ @129
== ~%FALDORN_BANTER%~ @130
== ~%GARRICK_BANTER%~ @131
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#Garrick_IMOEN","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_IMOEN_1
@132 
DO ~SetGlobal("X#Garrick_IMOEN","LOCALS",1)~
== ~%IMOEN_BANTER%~ @133
== ~%GARRICK_BANTER%~ @134
== ~%IMOEN_BANTER%~ @135
== ~%GARRICK_BANTER%~ @136
== ~%IMOEN_BANTER%~ @137
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @138
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @139
== ~%GARRICK_BANTER%~ @140
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") InParty("khalid") Global("X#Garrick_JAHEIRA","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_JAHEIRA_1
@141 
DO ~SetGlobal("X#Garrick_JAHEIRA","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @142
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @143
== ~%GARRICK_BANTER%~ @144
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @145
== ~%JAHEIRA_BANTER%~ @146
== ~%GARRICK_BANTER%~ @147
== ~%JAHEIRA_BANTER%~ @148
== ~%GARRICK_BANTER%~ @149
== ~%JAHEIRA_BANTER%~ @150
== ~%GARRICK_BANTER%~ @151
== ~%JAHEIRA_BANTER%~ @152
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @153
== ~%GARRICK_BANTER%~ @154
== ~%JAHEIRA_BANTER%~ @155
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#Garrick_KAGAIN","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_KAGAIN_1
@156 
DO ~SetGlobal("X#Garrick_KAGAIN","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @157
== ~%GARRICK_BANTER%~ @158
== ~%KAGAIN_BANTER%~ @159
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @160
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @161
== ~%GARRICK_BANTER%~ @162
== ~%KAGAIN_BANTER%~ @163
== ~%GARRICK_BANTER%~ @164
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#Garrick_KHALID","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_KHALID_1
@165 
DO ~SetGlobal("X#Garrick_KHALID","LOCALS",1)~
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @166
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @167
== ~%KHALID_BANTER%~ @168
== ~%GARRICK_BANTER%~ @169
== ~%KHALID_BANTER%~ @170
== ~%GARRICK_BANTER%~ @171
== ~%KHALID_BANTER%~ @172
== ~%GARRICK_BANTER%~ @173
== ~%KHALID_BANTER%~ @174
== ~%GARRICK_BANTER%~ @175
== ~%KHALID_BANTER%~ @176
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @177
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#Garrick_KIVAN","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_KIVAN_1 @178 
DO ~SetGlobal("X#Garrick_KIVAN","LOCALS",1)~
== ~%KIVAN_BANTER%~ @179
== ~%GARRICK_BANTER%~ @180
== ~%KIVAN_BANTER%~ @181
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @182
== ~%GARRICK_BANTER%~ @183
== ~%KIVAN_BANTER%~ @184
== ~%GARRICK_BANTER%~ @185
== ~%KIVAN_BANTER%~ @186
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") InParty("dynaheir") Global("X#Garrick_MINSC","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_MINSC_1
@187 
DO ~SetGlobal("X#Garrick_MINSC","LOCALS",1)~
== ~%MINSC_BANTER%~ @188
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @189
== ~%GARRICK_BANTER%~ @190
== ~%MINSC_BANTER%~ @191
== ~%GARRICK_BANTER%~ @192
== ~%MINSC_BANTER%~ @193
== ~%GARRICK_BANTER%~ @194
== ~%MINSC_BANTER%~ @195
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") Global("X#Garrick_MONTARON","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_MONTARON_1
@196 
DO ~SetGlobal("X#Garrick_MONTARON","LOCALS",1)~
== ~%MONTARON_BANTER%~ @197
== ~%GARRICK_BANTER%~ @198
== ~%MONTARON_BANTER%~ @199
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @200
== ~%GARRICK_BANTER%~ @201
== ~%MONTARON_BANTER%~ @202
== ~%GARRICK_BANTER%~ @203
== ~%MONTARON_BANTER%~ @204
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#Garrick_QUAYLE","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_QUAYLE_1
@205 
DO ~SetGlobal("X#Garrick_QUAYLE","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @206
== ~%GARRICK_BANTER%~ @207
== ~%QUAYLE_BANTER%~ @208
== ~%GARRICK_BANTER%~ @209
== ~%QUAYLE_BANTER%~ @210
== ~%GARRICK_BANTER%~ @211
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @212
== ~%QUAYLE_BANTER%~ @213
== ~%GARRICK_BANTER%~ @214
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#Garrick_SAFANA","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_SAFANA_1
@215 
DO ~SetGlobal("X#Garrick_SAFANA","LOCALS",1)~
== ~%SAFANA_BANTER%~ @216
== ~%GARRICK_BANTER%~ @217
== ~%SAFANA_BANTER%~ @218
== ~%GARRICK_BANTER%~ @219
== ~%SAFANA_BANTER%~ @220
== ~%GARRICK_BANTER%~ @221
== ~%SAFANA_BANTER%~ @222
== ~%GARRICK_BANTER%~ @223
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @224
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#Garrick_SHARTEEL","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_SHARTEEL_1
@225 
DO ~SetGlobal("X#Garrick_SHARTEEL","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @226
== ~%GARRICK_BANTER%~ @227
== ~%SHARTEEL_BANTER%~ @228
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @229
== ~%GARRICK_BANTER%~ @230
== ~%SHARTEEL_BANTER%~ @231
== ~%GARRICK_BANTER%~ @232
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) !TimeOfDay(MORNING) !TimeOfDay(DAY) InParty("sharteel") Global("X#Garrick_SHARTEEL","LOCALS",1) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_SHARTEEL_2
@233 
DO ~SetGlobal("X#Garrick_SHARTEEL","LOCALS",2)~
== ~%SHARTEEL_BANTER%~ @234
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @235
== ~%GARRICK_BANTER%~ @236
== ~%SHARTEEL_BANTER%~ @237
== ~%GARRICK_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @238
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @239
== ~%GARRICK_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @240
== ~%GARRICK_BANTER%~ IF ~!InParty("skie")~ THEN @241
== ~%SHARTEEL_BANTER%~ @242
== ~%GARRICK_BANTER%~ @243
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") Global("X#Garrick_SKIE","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_SKIE_1
@244 
DO ~SetGlobal("X#Garrick_SKIE","LOCALS",1)~
== ~%SKIE_BANTER%~ @65
== ~%GARRICK_BANTER%~ @245
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @246
== ~%SKIE_BANTER%~ @247
== ~%GARRICK_BANTER%~ @248
== ~%SKIE_BANTER%~ @249
== ~%GARRICK_BANTER%~ @250
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(OUTDOOR) !TimeOfDay(NIGHT) !TimeOfDay(DUSK) InParty("tiax") Global("X#Garrick_TIAX","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_TIAX_1
@251 
DO ~SetGlobal("X#Garrick_TIAX","LOCALS",1)~
== ~%TIAX_BANTER%~ @252
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @253
== ~%TIAX_BANTER%~ @254
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @255
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @256
== ~%TIAX_BANTER%~ @257
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @258
== ~%GARRICK_BANTER%~ @259
== ~%TIAX_BANTER%~ @260
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @261
== ~%TIAX_BANTER%~ @262
== ~%GARRICK_BANTER%~ @263
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @264
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#Garrick_TIAX","LOCALS",1) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_TIAX_2
@265 
DO ~SetGlobal("X#Garrick_TIAX","LOCALS",2)~
== ~%TIAX_BANTER%~ @266
== ~%GARRICK_BANTER%~ @267
== ~%TIAX_BANTER%~ @268
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @269
== ~%GARRICK_BANTER%~ @270
== ~%TIAX_BANTER%~ @271
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @272
== ~%GARRICK_BANTER%~ @273
== ~%TIAX_BANTER%~ @274
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#Garrick_VICONIA","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_VICONIA_1
@275 
DO ~SetGlobal("X#Garrick_VICONIA","LOCALS",1)~
== ~%VICONIA_BANTER%~ @276
== ~%GARRICK_BANTER%~ @277
== ~%VICONIA_BANTER%~ @278
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @279
== ~%GARRICK_BANTER%~ @280
== ~%VICONIA_BANTER%~ @281
== ~%GARRICK_BANTER%~ @282
== ~%VICONIA_BANTER%~ @283
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @284
== ~%VICONIA_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @285
== ~%GARRICK_BANTER%~ @286
== ~%VICONIA_BANTER%~ @287
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(OUTDOOR) !TimeOfDay(NIGHT) !TimeOfDay(DUSK) InParty("xan") Global("X#Garrick_XAN","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_XAN_1
@288 
DO ~SetGlobal("X#Garrick_XAN","LOCALS",1)~
== ~%XAN_BANTER%~ @289
== ~%GARRICK_BANTER%~ @290
== ~%XAN_BANTER%~ @291
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @292
== ~%GARRICK_BANTER%~ @293
== ~%XAN_BANTER%~ @294
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @295
== ~%XAN_BANTER%~ @296
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @297
== ~%GARRICK_BANTER%~ @298
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#Garrick_XAN","LOCALS",1) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_XAN_2
@299 
DO ~SetGlobal("X#Garrick_XAN","LOCALS",2)~
== ~%XAN_BANTER%~ @300
== ~%GARRICK_BANTER%~ @301
== ~%XAN_BANTER%~ @302
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @303
== ~%GARRICK_BANTER%~ @304
== ~%XAN_BANTER%~ @305
== ~%MONTARON_BANTER%~ @306
== ~%GARRICK_BANTER%~ @307
== ~%XAN_BANTER%~ @308
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @309
== ~%XAN_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @310
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("X#Garrick_YESLICK","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_YESLICK_1
@311
DO ~SetGlobal("X#Garrick_YESLICK","LOCALS",1)~
== ~%YESLICK_BANTER%~ @312
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @313
== ~%GARRICK_BANTER%~ @314
== ~%YESLICK_BANTER%~ @315
== ~%GARRICK_BANTER%~ @316
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @317
== ~%YESLICK_BANTER%~ @318
== ~%GARRICK_BANTER%~ @319
EXIT
