/* SCRIPT */
APPEND ~%MINSC_JOINED%~

/* Minsc and PC about Candlekeep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MinscPCCandlekeep","LOCALS",1)~ THEN BEGIN MIPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#MIPC1","LOCALS",1) SetGlobal("X#MinscPCCandlekeep","LOCALS",2)~ GOTO MIPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#MIPC1","LOCALS",1) SetGlobal("X#MinscPCCandlekeep","LOCALS",2)~ GOTO MIPC1.1
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#MIPC1","LOCALS",1) SetGlobal("X#MinscPCCandlekeep","LOCALS",2)~ GOTO MIPC1.1
END

IF ~~ THEN BEGIN MIPC1.1
SAY @4
= @5 
= @6
= @5 
IF ~~ THEN EXIT
END

/* Minsc and Khalid - Gnoll Stronghold */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MIKH_Gnolls","LOCALS",1)~ THEN BEGIN MIKH2
SAY @7
IF ~~ THEN DO ~SetGlobal("X#MIKH_Gnolls","LOCALS",2)~ EXTERN ~%KHALID_BANTER%~ KhMin
END

/* Minsc and Ajantis - Baldur's Gate */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MIAJ_BG","LOCALS",1)~ THEN BEGIN MIAJ2
SAY @8
IF ~~ THEN DO ~SetGlobal("X#MIAJ_BG","LOCALS",2)~ EXTERN ~%AJANTIS_BANTER%~ AjBoo
END

/* Minsc Jaheira - Boo's medicine bag excursion */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MIJA1","LOCALS",1)~ THEN BEGIN MIJA1
SAY @9
IF ~~ THEN DO ~SetGlobal("X#MIJA1","LOCALS",2)~ EXTERN ~%JAHEIRA_BANTER%~ JahBoo
END

END

/* Dream Script */
/* Dynaheir banter - Minsc's relationship with Boo */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#MIDY1","LOCALS",1)~ THEN ~%MINSC_JOINED%~ MIDY1
@10
DO ~SetGlobal("X#MIDY1","LOCALS",2)~
== ~%DYNAHEIR_BANTER%~ @11
== ~%MINSC_BANTER%~ @12
== ~%DYNAHEIR_BANTER%~ @13
== ~%MINSC_BANTER%~ @14
== ~%DYNAHEIR_BANTER%~ @15
== ~%MINSC_BANTER%~ @16
== ~%DYNAHEIR_BANTER%~ @17
== ~%MINSC_BANTER%~ @18
== ~%DYNAHEIR_BANTER%~ @19
== ~%MINSC_BANTER%~ @20
== ~%DYNAHEIR_BANTER%~ @21
= @22
DO ~RestParty()~
EXIT

/* Dream Script */
/* Dynaheir banter - Princess Sunflower Seed */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#MIDY2","LOCALS",1)~ THEN ~%MINSC_JOINED%~ MIDY2
@23
DO ~SetGlobal("X#MIDY2","LOCALS",2)~
== ~%DYNAHEIR_BANTER%~ @24
== ~%MINSC_BANTER%~ @25
== ~%DYNAHEIR_BANTER%~ @26
== ~%MINSC_BANTER%~ @27
== ~%DYNAHEIR_BANTER%~ @28
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @29
== ~%MINSC_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @30
== ~%DYNAHEIR_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @31
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @32
== ~%DYNAHEIR_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @33
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @34
== ~%DYNAHEIR_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @35
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @36
== ~%DYNAHEIR_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @37
== ~%MINSC_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @38
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @39
== ~%MINSC_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @5 
DO ~RestParty()~
EXIT

/* Edwin's missive to his superior */
CHAIN IF WEIGHT #-2 ~Global("X#Yegoriy","GLOBAL",1) Global("X#MIED2","LOCALS",0)~ THEN ~%MINSC_JOINED%~ MIED2
@40
DO ~SetGlobal("X#MIED2","LOCALS",1) SetGlobal("X#Yegoriy","GLOBAL",2)~
== ~%EDWIN_BANTER%~ @41
== ~%MINSC_BANTER%~ @42
== ~%EDWIN_BANTER%~ @43
= @44
= @45
== ~%MINSC_BANTER%~ @46
== ~%EDWIN_BANTER%~ @47
= @48
== ~%MINSC_BANTER%~ @49
== ~%EDWIN_BANTER%~ @50
EXIT

/* Dream Script */
/* Eldoth about Skie */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#MIEL1","LOCALS",1)~ THEN ~%MINSC_JOINED%~ MIEL1
@51
DO ~SetGlobal("X#MIEL1","LOCALS",2)~
== ~%ELDOTH_BANTER%~ @52
== ~%MINSC_BANTER%~ @53
== ~%ELDOTH_BANTER%~ @54
== ~%MINSC_BANTER%~ @55
== ~%ELDOTH_BANTER%~ @56
== ~%MINSC_BANTER%~ @57
== ~%ELDOTH_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @58
== ~%MINSC_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @59
== ~%ELDOTH_BANTER%~ @60
== ~%MINSC_BANTER%~ @61
= @62
== ~%ELDOTH_BANTER%~ @63
== ~%MINSC_BANTER%~ @64
== ~%MINSC_BANTER%~ @65
= @66
= @67 
== ~%MINSC_BANTER%~ @68
DO ~RestParty()~
EXIT

CHAIN3 ~%KHALID_BANTER%~ KhMin
@69
== ~%MINSC_BANTER%~ @70
== ~%KHALID_BANTER%~ @71
== ~%MINSC_BANTER%~ @72
== ~%KHALID_BANTER%~ @73
== ~%MINSC_BANTER%~ @74
== ~%MINSC_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @75
== ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @76
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @77
== ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @78
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @79
== ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @80
== ~%MINSC_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @81
= @5 
= @82
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @83
== ~%MINSC_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @84
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @85
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#MIAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIAJ1
@86
DO ~SetGlobal("X#MIAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @87
== ~%MINSC_BANTER%~ @88
== ~%AJANTIS_BANTER%~ @89
== ~%MINSC_BANTER%~ @90
== ~%AJANTIS_BANTER%~ @91
== ~%MINSC_BANTER%~ @92
== ~%AJANTIS_BANTER%~ @93
== ~%MINSC_BANTER%~ @94
== ~%AJANTIS_BANTER%~ @95
== ~%MINSC_BANTER%~ @96
= @97
== ~%AJANTIS_BANTER%~ @98
== ~%MINSC_BANTER%~ @99
== ~%AJANTIS_BANTER%~ @100
== ~%MINSC_BANTER%~ @101
== ~%AJANTIS_BANTER%~ @102
== ~%MINSC_BANTER%~ @103
== ~%AJANTIS_BANTER%~ @104
== ~%MINSC_BANTER%~ @105
== ~%AJANTIS_BANTER%~ @106
== ~%MINSC_BANTER%~ @107
== ~%AJANTIS_BANTER%~ @108
EXIT

CHAIN3 ~%AJANTIS_BANTER%~ AjBoo
@109
== ~%MINSC_BANTER%~ @110
== ~%AJANTIS_BANTER%~ @111
== ~%MINSC_BANTER%~ @112
== ~%AJANTIS_BANTER%~ @113
== ~%MINSC_BANTER%~ @114
== ~%AJANTIS_BANTER%~ @115
== ~%MINSC_BANTER%~ @116
== ~%AJANTIS_BANTER%~ @117
== ~%MINSC_BANTER%~ @118
== ~%AJANTIS_BANTER%~ @119
== ~%MINSC_BANTER%~ @120
== ~%AJANTIS_BANTER%~ @121
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("alora") InParty("dynaheir") Global("X#MIAL2","GLOBAL",0) !See([ENEMY]) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIAL2
@122
DO ~SetGlobal("X#MIAL2","GLOBAL",1)~
== ~%ALORA_BANTER%~ @123
== ~%MINSC_BANTER%~ @124
== ~%ALORA_BANTER%~ @125
== ~%MINSC_BANTER%~ @126
== ~%ALORA_BANTER%~ @127
== ~%MINSC_BANTER%~ @128
= @129
== ~%ALORA_BANTER%~ @130
== ~%MINSC_BANTER%~ @131
= @132
= @5 
== ~%ALORA_BANTER%~ @133
== ~%MINSC_BANTER%~ @134
= @5 
== ~%ALORA_BANTER%~ @135
== ~%MINSC_BANTER%~ @136
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#MIAL2","GLOBAL",1) Global("X#MIAL1","GLOBAL",0) !See([ENEMY]) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIAL1
@137
DO ~SetGlobal("X#MIAL1","GLOBAL",1)~
== ~%ALORA_BANTER%~ @138
== ~%MINSC_BANTER%~ @139
== ~%ALORA_BANTER%~ @140
== ~%MINSC_BANTER%~ @141
== ~%ALORA_BANTER%~ @142
== ~%MINSC_BANTER%~ @143
== ~%ALORA_BANTER%~ @144
== ~%MINSC_BANTER%~ @145
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#MIBR1","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIBR1
@146
DO ~SetGlobal("X#MIBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @147
== ~%MINSC_BANTER%~ @148
== ~%BRANWEN_BANTER%~ @149
= @150
== ~%MINSC_BANTER%~ @151
== ~%BRANWEN_BANTER%~ @152
== ~%MINSC_BANTER%~ @153
== ~%BRANWEN_BANTER%~ @154
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("P#CoranHasBaby","GLOBAL",1) InParty("coran") Global("X#MICO1","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MICO1
@155
DO ~SetGlobal("X#MICO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @156
= @5 
== ~%MINSC_BANTER%~ @157
= @5 
== ~%CORAN_BANTER%~ @158
== ~%MINSC_BANTER%~ @159
== ~%CORAN_BANTER%~ @160
EXIT

/* Timer Script */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#MIED1","LOCALS",0) CombatCounter(0) InParty("edwin") !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIED1
@161
DO ~SetGlobal("X#MIED1","LOCALS",1) SetGlobal("X#MinscIronLord","GLOBAL",1)~
== ~%EDWIN_BANTER%~ @162
== ~%MINSC_BANTER%~ @163
== ~%EDWIN_BANTER%~ @164
== ~%MINSC_BANTER%~ @165
== ~%EDWIN_BANTER%~ @166
== ~%MINSC_BANTER%~ @167
= @168
== ~%EDWIN_BANTER%~ @169
== ~%MINSC_BANTER%~ @170
== ~%EDWIN_BANTER%~ @171
== ~%MINSC_BANTER%~ @172
== ~%EDWIN_BANTER%~ @173
== ~%MINSC_BANTER%~ @174
== ~%EDWIN_BANTER%~ @175
== ~%MINSC_BANTER%~ @176
== ~%EDWIN_BANTER%~ @177
== ~%MINSC_BANTER%~ @178
== ~%EDWIN_BANTER%~ @179
== ~%MINSC_BANTER%~ @180
== ~%EDWIN_BANTER%~ @181
== ~%MINSC_BANTER%~ @182
== ~%EDWIN_BANTER%~ @183
== ~%MINSC_BANTER%~ @184
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("X#MIFA1","LOCALS",0) !StateCheck("faldorn",CD_STATE_NOTVALID) !See([ENEMY]) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%MINSC_BANTER%~ MIFA1
@185
DO ~SetGlobal("X#MIFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @186
== ~%MINSC_BANTER%~ @187
== ~%FALDORN_BANTER%~ @188
== ~%MINSC_BANTER%~ @189
== ~%FALDORN_BANTER%~ @190
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#MIGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIGA1
@191
DO ~SetGlobal("X#MIGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @192
== ~%MINSC_BANTER%~ @193
== ~%GARRICK_BANTER%~ @194
== ~%MINSC_BANTER%~ @195
== ~%GARRICK_BANTER%~ @196
== ~%MINSC_BANTER%~ @197
== ~%GARRICK_BANTER%~ @198
== ~%MINSC_BANTER%~ @199
== ~%GARRICK_BANTER%~ @200
EXIT

CHAIN3 ~%JAHEIRA_BANTER%~ JahBoo
@201
== ~%MINSC_BANTER%~ @202
== ~%JAHEIRA_BANTER%~ @203
== ~%MINSC_BANTER%~ @204
== ~%JAHEIRA_BANTER%~ @205
== ~%MINSC_BANTER%~ @206
== ~%JAHEIRA_BANTER%~ @207
== ~%MINSC_BANTER%~ @208
== ~%JAHEIRA_BANTER%~ @209
== ~%MINSC_BANTER%~ @210
== ~%JAHEIRA_BANTER%~ @211
== ~%MINSC_BANTER%~ @212
== ~%JAHEIRA_BANTER%~ @213
== ~%MINSC_BANTER%~ @214
== ~%JAHEIRA_BANTER%~ @215
== ~%MINSC_BANTER%~ @5 
= @216
== ~%JAHEIRA_BANTER%~ @217
== ~%MINSC_BANTER%~ @218
= @5 
= @219
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(CITY) InParty("jaheira") Global("X#MIJA2","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIJA2
@220
DO ~SetGlobal("X#MIJA2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @221
== ~%MINSC_BANTER%~ @222
== ~%JAHEIRA_BANTER%~ @223
== ~%MINSC_BANTER%~ @224
== ~%JAHEIRA_BANTER%~ @225
== ~%MINSC_BANTER%~ @226
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#MIKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIKA1
@227
DO ~SetGlobal("X#MIKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @228
== ~%MINSC_BANTER%~ @229
== ~%KAGAIN_BANTER%~ @230
== ~%MINSC_BANTER%~ @231
== ~%KAGAIN_BANTER%~ @232
== ~%MINSC_BANTER%~ @233
== ~%KAGAIN_BANTER%~ @234
== ~%MINSC_BANTER%~ @235
== ~%KAGAIN_BANTER%~ @236
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#MIKH1","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIKH1
@237
DO ~SetGlobal("X#MIKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @238
== ~%MINSC_BANTER%~ @239
== ~%KHALID_BANTER%~ @240
== ~%MINSC_BANTER%~ @241
== ~%KHALID_BANTER%~ @242
== ~%MINSC_BANTER%~ @243
= @5 
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) GlobalGT("Chapter","GLOBAL",%tutu_chapter_4%) InParty("kivan") Global("X#MIKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIKI1
@244
DO ~SetGlobal("X#MIKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @245
== ~%MINSC_BANTER%~ @246
== ~%KIVAN_BANTER%~ @247
== ~%MINSC_BANTER%~ @248
== ~%KIVAN_BANTER%~ @249
== ~%MINSC_BANTER%~ @250
== ~%KIVAN_BANTER%~ @251
== ~%MINSC_BANTER%~ @252
= @5 
== ~%KIVAN_BANTER%~ @253
EXIT


CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("montaron") Global("P#KIMO1","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%MINSC_BANTER%~ KIMO1
@254
DO ~SetGlobal("P#KIMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @255
== ~%MINSC_BANTER%~ @256
== ~%MONTARON_BANTER%~ @257
== ~%MINSC_BANTER%~ @258
== ~%MONTARON_BANTER%~ @259
== ~%MINSC_BANTER%~ @260
== ~%MONTARON_BANTER%~ @261
= @262
== ~%MINSC_BANTER%~ @263
== ~%MONTARON_BANTER%~ @264
== ~%MINSC_BANTER%~ @265
= @67 
= @266
= @67 
= @267
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#MIQU1","LOCALS",0)!See([ENEMY]) See("quayle") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIQU1
@268
DO ~SetGlobal("X#MIQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @269
== ~%MINSC_BANTER%~ @270
== ~%QUAYLE_BANTER%~ @271
== ~%MINSC_BANTER%~ @5 
== ~%MINSC_BANTER%~ @272
== ~%QUAYLE_BANTER%~ @273
== ~%MINSC_BANTER%~ @274
= @5 
= @275
== ~%QUAYLE_BANTER%~ @276
== ~%MINSC_BANTER%~ @277
== ~%QUAYLE_BANTER%~ @278
== ~%MINSC_BANTER%~ @279
== ~%QUAYLE_BANTER%~ @280
== ~%MINSC_BANTER%~ @281
== ~%QUAYLE_BANTER%~ @282
= @283
== ~%MINSC_BANTER%~ @5 
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#MISA1","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MISA1
@284
DO ~SetGlobal("X#MISA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @285
== ~%MINSC_BANTER%~ @286
== ~%SAFANA_BANTER%~ @287
== ~%MINSC_BANTER%~ @288
== ~%SAFANA_BANTER%~ @289
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#MITI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MITI1
@290
DO ~SetGlobal("X#MITI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @291
== ~%MINSC_BANTER%~ @292
== ~%TIAX_BANTER%~ @293
== ~%MINSC_BANTER%~ @294
== ~%TIAX_BANTER%~ @295
== ~%MINSC_BANTER%~ @296
= @67 
= @297
== ~%TIAX_BANTER%~ @298
== ~%MINSC_BANTER%~ @299
== ~%TIAX_BANTER%~ @300
== ~%MINSC_BANTER%~ @301
= @302
= @67 
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#MITI2","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MITI2
@303
DO ~SetGlobal("X#MITI2","LOCALS",1)~
== ~%TIAX_BANTER%~ @304
== ~%MINSC_BANTER%~ @305
== ~%TIAX_BANTER%~ @306
== ~%MINSC_BANTER%~ @307
== ~%TIAX_BANTER%~ @308
== ~%MINSC_BANTER%~ @309
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#MIVI1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIVI1
@310
DO ~SetGlobal("X#MIVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @311
= @312
== ~%MINSC_BANTER%~ @313
== ~%VICONIA_BANTER%~ @314
== ~%MINSC_BANTER%~ @315
= @316
== ~%VICONIA_BANTER%~ @317
== ~%MINSC_BANTER%~ @318
== ~%VICONIA_BANTER%~ @319
== ~%MINSC_BANTER%~ @320
= @5 
= @321
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#MIXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIXA1
@322
DO ~SetGlobal("X#MIXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @323
== ~%MINSC_BANTER%~ @324
== ~%XAN_BANTER%~ @325
== ~%MINSC_BANTER%~ @326
== ~%XAN_BANTER%~ @327
== ~%MINSC_BANTER%~ @328
== ~%XAN_BANTER%~ @329
== ~%MINSC_BANTER%~ @330
== ~%XAN_BANTER%~ @331
== ~%MINSC_BANTER%~ @332
== ~%XAN_BANTER%~ @333
== ~%MINSC_BANTER%~ @334
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#XAMI1","GLOBAL",1) Global("X#MIXA2","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIXA2
@335
DO ~SetGlobal("X#MIXA2","LOCALS",1)~
== ~%XAN_BANTER%~ @336
== ~%MINSC_BANTER%~ @337
== ~%XAN_BANTER%~ @338
== ~%MINSC_BANTER%~ @339
== ~%XAN_BANTER%~ @340
== ~%MINSC_BANTER%~ @341
== ~%XAN_BANTER%~ @342
== ~%MINSC_BANTER%~ @343
== ~%XAN_BANTER%~ @344
== ~%MINSC_BANTER%~ @345
== ~%XAN_BANTER%~ @346
== ~%MINSC_BANTER%~ @347
== ~%XAN_BANTER%~ @348
== ~%MINSC_BANTER%~ @5 
= @349
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") Global("X#MIXZ1","LOCALS",0) !See([ENEMY]) See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIXZ1
@350
DO ~SetGlobal("X#MIXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @351
== ~%MINSC_BANTER%~ @352
== ~%XZAR_BANTER%~ @353
== ~%MINSC_BANTER%~ @354
== ~%XZAR_BANTER%~ @355
== ~%MINSC_BANTER%~ @356
== ~%XZAR_BANTER%~ @357
== ~%MINSC_BANTER%~ @358
= @359
EXIT
