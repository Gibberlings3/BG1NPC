APPEND ~%QUAYLE_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#QuFriendTalk","GLOBAL",1)~ THEN BEGIN Quayle_PC_1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#QuFriendTalk","GLOBAL",2)~ GOTO NoTime
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#QuFriendTalk","GLOBAL",2)~ GOTO QuayleGood
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#QuFriendTalk","GLOBAL",2)~ GOTO EgoHat
END

IF ~~ THEN BEGIN NoTime
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN QuayleGood
SAY @5
IF ~~ THEN REPLY @6 GOTO NoTime
IF ~~ THEN REPLY @3 GOTO EgoHat
END

IF ~~ THEN BEGIN EgoHat
SAY @7
IF ~~ THEN REPLY @8 GOTO HatChafe
IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN HatChafe
SAY @10
IF ~~ THEN REPLY @11 EXIT
END

END

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#Quayle_AJANTIS","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_AJANTIS_1
@12
DO ~SetGlobal("X#Quayle_AJANTIS","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @13
== ~%QUAYLE_BANTER%~ @14
== ~%AJANTIS_BANTER%~ @15
== ~%QUAYLE_BANTER%~ @16
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @17
== ~%AJANTIS_BANTER%~ @18
== ~%QUAYLE_BANTER%~ @19
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#Quayle_Alora","LOCALS",0) !See([ENEMY]) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Alora_1
@20 DO ~SetGlobal("X#Quayle_Alora","LOCALS",1)~
== ~%ALORA_BANTER%~ @21
== ~%QUAYLE_BANTER%~ @22
== ~%ALORA_BANTER%~ @23
== ~%QUAYLE_BANTER%~ @24
== ~%ALORA_BANTER%~ @25
== ~%QUAYLE_BANTER%~ @26
== ~%ALORA_BANTER%~ @27
== ~%QUAYLE_BANTER%~ @28
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @29
== ~%QUAYLE_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @30
== ~%ALORA_BANTER%~ @31
== ~%QUAYLE_BANTER%~ @32
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#Quayle_Branwen","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Branwen_1
@33
DO ~SetGlobal("X#Quayle_Branwen","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @34
== ~%QUAYLE_BANTER%~ @35
== ~%BRANWEN_BANTER%~ @36
== ~%QUAYLE_BANTER%~ @37
== ~%BRANWEN_BANTER%~ @38
== ~%QUAYLE_BANTER%~ @39
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#Quayle_Branwen","LOCALS",1) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Branwen_2
@40
DO ~SetGlobal("X#Quayle_Branwen","LOCALS",2)~
== ~%BRANWEN_BANTER%~ @41
== ~%QUAYLE_BANTER%~ @42
== ~%QUAYLE_BANTER%~ @43
== ~%BRANWEN_BANTER%~ @44
== ~%QUAYLE_BANTER%~ @45
== ~%BRANWEN_BANTER%~ @46
== ~%QUAYLE_BANTER%~ @47
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#Quayle_Coran","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Coran_1
@48 DO ~SetGlobal("X#Quayle_Coran","LOCALS",1)~
== ~%CORAN_BANTER%~ @49
== ~%QUAYLE_BANTER%~ @50
== ~%CORAN_BANTER%~ @51
== ~%QUAYLE_BANTER%~ @52
== ~%CORAN_BANTER%~ @53
== ~%QUAYLE_BANTER%~ @54
== ~%CORAN_BANTER%~ @55
== ~%QUAYLE_BANTER%~ @56
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @57
== ~%CORAN_BANTER%~ @58
== ~%QUAYLE_BANTER%~ @59
== ~%CORAN_BANTER%~ @60
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#Quayle_Dynaheir","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Dynaheir_1
@61 DO ~SetGlobal("X#Quayle_Dynaheir","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @62
== ~%QUAYLE_BANTER%~ @63
== ~%DYNAHEIR_BANTER%~ @64
== ~%QUAYLE_BANTER%~ @65
== ~%DYNAHEIR_BANTER%~ @66
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#Quayle_Edwin","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Edwin_1
@67 DO ~SetGlobal("X#Quayle_Edwin","LOCALS",1)~
== ~%EDWIN_BANTER%~ @68
== ~%QUAYLE_BANTER%~ @69
== ~%EDWIN_BANTER%~ @70
== ~%QUAYLE_BANTER%~ @71
== ~%EDWIN_BANTER%~ @72
== ~%QUAYLE_BANTER%~ @73
== ~%EDWIN_BANTER%~ @74
== ~%QUAYLE_BANTER%~ @75
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#Quayle_Edwin","LOCALS",1) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Edwin_2
@76 DO ~SetGlobal("X#Quayle_Edwin","LOCALS",2)~
== ~%EDWIN_BANTER%~ @77
== ~%QUAYLE_BANTER%~ @78
== ~%EDWIN_BANTER%~ @79
== ~%QUAYLE_BANTER%~ @80
== ~%EDWIN_BANTER%~ @81
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("X#Quayle_Eldoth","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Eldoth_1
@82 DO ~SetGlobal("X#Quayle_Eldoth","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @83
== ~%QUAYLE_BANTER%~ @84
== ~%ELDOTH_BANTER%~ @85
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @86
== ~%QUAYLE_BANTER%~ @87
== ~%ELDOTH_BANTER%~ @88
== ~%QUAYLE_BANTER%~ @89
== ~%ELDOTH_BANTER%~ @90
== ~%QUAYLE_BANTER%~ @91
== ~%ELDOTH_BANTER%~ @92
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("faldorn") Global("X#Quayle_Faldorn","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Faldorn_1
@93 DO ~SetGlobal("X#Quayle_Faldorn","LOCALS",1)~
== ~%FALDORN_BANTER%~ @94
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @95
== ~%FALDORN_BANTER%~ @96
== ~%QUAYLE_BANTER%~ @97
== ~%FALDORN_BANTER%~ @98
== ~%QUAYLE_BANTER%~ @99
== ~%FALDORN_BANTER%~ @100
== ~%QUAYLE_BANTER%~ @101
== ~%FALDORN_BANTER%~ @102
== ~%QUAYLE_BANTER%~ @103
== ~%FALDORN_BANTER%~ @104
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#Quayle_Garrick","LOCALS",0) CombatCounter(0) InParty("garrick") !See([ENEMY]) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Garrick_1
@105 DO ~SetGlobal("X#Quayle_Garrick","LOCALS",1)~
== ~%GARRICK_BANTER%~ @106
== ~%QUAYLE_BANTER%~ @107
== ~%GARRICK_BANTER%~ @108
== ~%QUAYLE_BANTER%~ @109
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @110
== ~%QUAYLE_BANTER%~ @111
== ~%GARRICK_BANTER%~ @112
== ~%QUAYLE_BANTER%~ @113
== ~%GARRICK_BANTER%~ @114
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) !See([ENEMY]) InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Global("X#Quayle_Imoen","LOCALS",0)~ THEN ~%QUAYLE_BANTER%~ Quayle_Imoen_1
@115 DO ~SetGlobal("X#Quayle_Imoen","LOCALS",1)~
== ~%IMOEN_BANTER%~ @116
== ~%QUAYLE_BANTER%~ @117
== ~%IMOEN_BANTER%~ @118
== ~%QUAYLE_BANTER%~ @119
== ~%IMOEN_BANTER%~ @120
== ~%QUAYLE_BANTER%~ @121
== ~%IMOEN_BANTER%~ @122
== ~%QUAYLE_BANTER%~ @123
== ~%IMOEN_BANTER%~ @124
== ~%QUAYLE_BANTER%~ @125
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") InParty("khalid") Global("X#Quayle_Jaheira","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Jaheira_1
@126 DO ~SetGlobal("X#Quayle_Jaheira","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @127
== ~%QUAYLE_BANTER%~ @128
== ~%JAHEIRA_BANTER%~ @129
== ~%QUAYLE_BANTER%~ @130
== ~%KHALID_BANTER%~ @131
== ~%QUAYLE_BANTER%~ @132
== ~%JAHEIRA_BANTER%~ @133
== ~%QUAYLE_BANTER%~ @134
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @135
== ~%JAHEIRA_BANTER%~ @136
== ~%QUAYLE_BANTER%~ @137
== ~%JAHEIRA_BANTER%~ @138
== ~%QUAYLE_BANTER%~ @139
== ~%JAHEIRA_BANTER%~ @140
== ~%QUAYLE_BANTER%~ @141
== ~%JAHEIRA_BANTER%~ @142
== ~%QUAYLE_BANTER%~ @143
== ~%KHALID_BANTER%~ @144
== ~%QUAYLE_BANTER%~ @145
== ~%JAHEIRA_BANTER%~ @146
== ~%QUAYLE_BANTER%~ @147
== ~%KHALID_BANTER%~ @148
== ~%JAHEIRA_BANTER%~ @149
== ~%QUAYLE_BANTER%~ @150
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#Quayle_Kagain","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Kagain_1
@151 DO ~SetGlobal("X#Quayle_Kagain","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @152
== ~%QUAYLE_BANTER%~ @153
== ~%KAGAIN_BANTER%~ @154
== ~%QUAYLE_BANTER%~ @155
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @156
== ~%KAGAIN_BANTER%~ @157
== ~%QUAYLE_BANTER%~ @158
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @159
== ~%KAGAIN_BANTER%~ @160
== ~%QUAYLE_BANTER%~ @161
== ~%KAGAIN_BANTER%~ @162
== ~%QUAYLE_BANTER%~ @163
== ~%KAGAIN_BANTER%~ @164
== ~%QUAYLE_BANTER%~ @165
== ~%KAGAIN_BANTER%~ @166
== ~%QUAYLE_BANTER%~ @167
== ~%KAGAIN_BANTER%~ @168
== ~%QUAYLE_BANTER%~ @169
== ~%KAGAIN_BANTER%~ @170
== ~%QUAYLE_BANTER%~ @171
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#Quayle_Khalid","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Khalid_1
@172 DO ~SetGlobal("X#Quayle_Khalid","LOCALS",1)~
== ~%KHALID_BANTER%~ @173
== ~%QUAYLE_BANTER%~ @174
== ~%KHALID_BANTER%~ @175
== ~%QUAYLE_BANTER%~ @176
== ~%KHALID_BANTER%~ @177
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @178
== ~%QUAYLE_BANTER%~ @179
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#Quayle_Kivan","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Kivan_1
@180 DO ~SetGlobal("X#Quayle_Kivan","LOCALS",1)~
== ~%KIVAN_BANTER%~ @181
== ~%QUAYLE_BANTER%~ @182
== ~%KIVAN_BANTER%~ @183
== ~%QUAYLE_BANTER%~ @184
== ~%KIVAN_BANTER%~ @185
== ~%QUAYLE_BANTER%~ @186
== ~%KIVAN_BANTER%~ @187
== ~%QUAYLE_BANTER%~ @188
== ~%KIVAN_BANTER%~ @189
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @190
== ~%QUAYLE_BANTER%~ @191
== ~%KIVAN_BANTER%~ @192
== ~%QUAYLE_BANTER%~ @193
== ~%KIVAN_BANTER%~ @194
== ~%QUAYLE_BANTER%~ @195
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#Quayle_Minsc","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Minsc_1
@196 DO ~SetGlobal("X#Quayle_Minsc","LOCALS",1)~
== ~%MINSC_BANTER%~ @197
== ~%QUAYLE_BANTER%~ @198
== ~%MINSC_BANTER%~ @199
== ~%QUAYLE_BANTER%~ @200
== ~%MINSC_BANTER%~ @201
== ~%QUAYLE_BANTER%~ @202
== ~%MINSC_BANTER%~ @203
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") InParty("xzar") Global("X#Quayle_Montaron","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Montaron_1
@204 DO ~SetGlobal("X#Quayle_Montaron","LOCALS",1)~
== ~%MONTARON_BANTER%~ @205
== ~%QUAYLE_BANTER%~ @206
== ~%MONTARON_BANTER%~ @207
== ~%QUAYLE_BANTER%~ @208
== ~%MONTARON_BANTER%~ @209
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#Quayle_Safana","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Safana_1
@210 DO ~SetGlobal("X#Quayle_Safana","LOCALS",1)~
== ~%SAFANA_BANTER%~ @211
== ~%QUAYLE_BANTER%~ @212
== ~%SAFANA_BANTER%~ @213
== ~%QUAYLE_BANTER%~ @214
== ~%SAFANA_BANTER%~ @215
== ~%QUAYLE_BANTER%~ @216
== ~%SAFANA_BANTER%~ @217
== ~%QUAYLE_BANTER%~ @218
== ~%SAFANA_BANTER%~ @219
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#Quayle_Shar-Teel","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Shar-Teel_1
@220 DO ~SetGlobal("X#Quayle_Shar-Teel","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @221
== ~%QUAYLE_BANTER%~ @222
== ~%SHARTEEL_BANTER%~ @223
== ~%QUAYLE_BANTER%~ @224
== ~%SHARTEEL_BANTER%~ @225
== ~%QUAYLE_BANTER%~ @226
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") Global("X#Quayle_Skie","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Skie_1
@227 DO ~SetGlobal("X#Quayle_Skie","LOCALS",1)~
== ~%SKIE_BANTER%~ @228
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @229
== ~%QUAYLE_BANTER%~ @230
== ~%SKIE_BANTER%~ @231
== ~%QUAYLE_BANTER%~ @232
== ~%SKIE_BANTER%~ @233
== ~%QUAYLE_BANTER%~ @234
== ~%SKIE_BANTER%~ @235
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @236
== ~%QUAYLE_BANTER%~ @237
== ~%SKIE_BANTER%~ @238
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @239
== ~%QUAYLE_BANTER%~ @240
== ~%SKIE_BANTER%~ @241
== ~%QUAYLE_BANTER%~ @242
== ~%SKIE_BANTER%~ @243
== ~%QUAYLE_BANTER%~ @244
EXIT

CHAIN IF WEIGHT #-10 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#QUTI1","GLOBAL",0) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Tiax_1
@245
DO ~SetGlobal("X#QUTI1","GLOBAL",1)~
== ~%TIAX_BANTER%~ @246
== ~%QUAYLE_BANTER%~ @247
== ~%TIAX_BANTER%~ @248
== ~%QUAYLE_BANTER%~ @249
== ~%TIAX_BANTER%~ @250
== ~%QUAYLE_BANTER%~ @251
EXIT

CHAIN IF WEIGHT #-8 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#QUTI1","GLOBAL",1) Global("X#QUTI2","GLOBAL",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Tiax_2
@252
DO ~SetGlobal("X#QUTI2","GLOBAL",1)~
== ~%TIAX_BANTER%~ @253
== ~%QUAYLE_BANTER%~ @254
== ~%TIAX_BANTER%~ @255
== ~%QUAYLE_BANTER%~ @256
== ~%TIAX_BANTER%~ @257
EXIT

CHAIN IF WEIGHT #-7 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#QUTI2","GLOBAL",1) Global("X#QUTI3","GLOBAL",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Tiax_3
@258
DO ~SetGlobal("X#QUTI3","GLOBAL",1)~
== ~%TIAX_BANTER%~ @259
== ~%QUAYLE_BANTER%~ @260
== ~%QUAYLE_BANTER%~ @261
== ~%TIAX_BANTER%~ @262
== ~%TIAX_BANTER%~ @263
== ~%QUAYLE_BANTER%~ @264
== ~%TIAX_BANTER%~ @265
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#Quayle_Viconia","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Viconia_1
@266
DO ~SetGlobal("X#Quayle_Viconia","LOCALS",1)~
== ~%VICONIA_BANTER%~ @267
== ~%QUAYLE_BANTER%~ @268
== ~%VICONIA_BANTER%~ @269
== ~%QUAYLE_BANTER%~ @270
== ~%VICONIA_BANTER%~ @271
== ~%QUAYLE_BANTER%~ @272
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#Quayle_Xan","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Xan_1
@273
DO ~SetGlobal("X#Quayle_Xan","LOCALS",1)~
== ~%XAN_BANTER%~ @274
== ~%QUAYLE_BANTER%~ @275
== ~%XAN_BANTER%~ @276
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") Global("X#Quayle_Xzar","LOCALS",0) !See([ENEMY]) See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Xzar_1
@277 DO ~SetGlobal("X#Quayle_Xzar","LOCALS",1)~
== ~%XZAR_BANTER%~ @278
== ~%QUAYLE_BANTER%~ @279
== ~%XZAR_BANTER%~ @280
== ~%QUAYLE_BANTER%~ @281
== ~%XZAR_BANTER%~ @282
== ~%QUAYLE_BANTER%~ @283
== ~%XZAR_BANTER%~ @284
== ~%QUAYLE_BANTER%~ @285
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("X#Quayle_Yeslick","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%QUAYLE_BANTER%~ Quayle_Yeslick_1
@286 DO ~SetGlobal("X#Quayle_Yeslick","LOCALS",1)~
== ~%YESLICK_BANTER%~ @287
== ~%QUAYLE_BANTER%~ @288
== ~%YESLICK_BANTER%~ @289
== ~%QUAYLE_BANTER%~ @290
== ~%YESLICK_BANTER%~ @291
== ~%QUAYLE_BANTER%~ @292
== ~%YESLICK_BANTER%~ @293
== ~%QUAYLE_BANTER%~ @294
EXIT
