APPEND ~%FALDORN_JOINED%~

/* AtWaking */
/* Blanket folding with Jaheira */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#BlanketTalk","GLOBAL",1)~ THEN FAJA1
  SAY @0
  IF ~~ THEN DO ~SetGlobal("X#FAJA1","LOCALS",1) SetGlobal("X#BlanketTalk","GLOBAL",2) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",1800)~ EXTERN ~%JAHEIRA_BANTER%~ jahbitch
END

END

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#FAAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAAJ1
@1
DO ~SetGlobal("X#FAAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @2
== ~%FALDORN_BANTER%~ @3
== ~%AJANTIS_BANTER%~ @4
== ~%FALDORN_BANTER%~ @5
== ~%AJANTIS_BANTER%~ @6
== ~%FALDORN_BANTER%~ @7
== ~%AJANTIS_BANTER%~ @8
== ~%FALDORN_BANTER%~ @9
= @10
== ~%AJANTIS_BANTER%~ @11
== ~%FALDORN_BANTER%~ @12
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("ajantis") Global("X#FAAJ2","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAAJ2
@13
DO ~SetGlobal("X#FAAJ2","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @14
== ~%FALDORN_BANTER%~ IF ~!Class(Player1,PALADIN)~ THEN @15
== ~%FALDORN_BANTER%~ IF ~Class(Player1,PALADIN)~ THEN @16
== ~%AJANTIS_BANTER%~ @17
== ~%FALDORN_BANTER%~ @18
== ~%AJANTIS_BANTER%~ @19
= @20
== ~%FALDORN_BANTER%~ @21
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#FAAL1","LOCALS",0) !See([ENEMY]) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAAL1
@22
DO ~SetGlobal("X#FAAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @23
== ~%FALDORN_BANTER%~ @24
== ~%ALORA_BANTER%~ @25
== ~%FALDORN_BANTER%~ @26
== ~%ALORA_BANTER%~ @27
== ~%FALDORN_BANTER%~ @28
== ~%ALORA_BANTER%~ @29
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#FABR1","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FABR1
@30
DO ~SetGlobal("X#FABR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @31
== ~%FALDORN_BANTER%~ @32
== ~%BRANWEN_BANTER%~ @33
== ~%FALDORN_BANTER%~ @34
== ~%BRANWEN_BANTER%~ @35
= @36
== ~%FALDORN_BANTER%~ @37
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#FABR2","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FABR2
@38
DO ~SetGlobal("X#FABR2","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @39
== ~%FALDORN_BANTER%~ @40
== ~%BRANWEN_BANTER%~ @41
== ~%FALDORN_BANTER%~ @42
== ~%BRANWEN_BANTER%~ @43
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#FABR3","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FABR3
@44
DO ~SetGlobal("X#FABR3","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @45
== ~%FALDORN_BANTER%~ @46
= @47
== ~%BRANWEN_BANTER%~ @48
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#FACO1","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FACO1
@49
DO ~SetGlobal("X#FACO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @50
== ~%FALDORN_BANTER%~ @51
== ~%CORAN_BANTER%~ @52
= @53
== ~%FALDORN_BANTER%~ @54
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("P#CoFA3","GLOBAL",1) Global("X#FACO2","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FACO2
@55
DO ~SetGlobal("X#FACO2","LOCALS",1)~
== ~%CORAN_BANTER%~ @56
== ~%FALDORN_BANTER%~ @57
== ~%CORAN_BANTER%~ @58
== ~%FALDORN_BANTER%~ @59
== ~%CORAN_BANTER%~ @60
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#FACO3","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FACO3
@61
DO ~SetGlobal("X#FACO3","LOCALS",1)~
== ~%CORAN_BANTER%~ @62
== ~%FALDORN_BANTER%~ @63
== ~%CORAN_BANTER%~ @64
== ~%FALDORN_BANTER%~ @65
== ~%CORAN_BANTER%~ @66
== ~%FALDORN_BANTER%~ @67
== ~%CORAN_BANTER%~ @68
== ~%FALDORN_BANTER%~ @69
== ~%CORAN_BANTER%~ @70
= @71
== ~%FALDORN_BANTER%~ @72
== ~%CORAN_BANTER%~ @73
== ~%FALDORN_BANTER%~ @74
= @75
== ~%CORAN_BANTER%~ @76
= @77
== ~%FALDORN_BANTER%~ @78
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#FaldornHasRay","GLOBAL",1) InParty("dynaheir") Global("X#FADY1","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FADY1
@79
DO ~SetGlobal("X#FADY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @80
== ~%FALDORN_BANTER%~ @81
== ~%DYNAHEIR_BANTER%~ @82
== ~%FALDORN_BANTER%~ @83
== ~%DYNAHEIR_BANTER%~ @84
== ~%FALDORN_BANTER%~ @85
== ~%DYNAHEIR_BANTER%~ @86
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#FADY2","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FADY2
@87
DO ~SetGlobal("X#FADY2","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @88
== ~%FALDORN_BANTER%~ @89
== ~%DYNAHEIR_BANTER%~ @90
== ~%FALDORN_BANTER%~ @91
== ~%DYNAHEIR_BANTER%~ @92
== ~%FALDORN_BANTER%~ @93
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#FADY3","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FADY3
@94
DO ~SetGlobal("X#FADY3","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @95
== ~%FALDORN_BANTER%~ @96
== ~%DYNAHEIR_BANTER%~ @97
== ~%FALDORN_BANTER%~ @98
== ~%DYNAHEIR_BANTER%~ @99
== ~%FALDORN_BANTER%~ @100
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#FAED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAED1
@101
DO ~SetGlobal("X#FAED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @102
== ~%FALDORN_BANTER%~ @103
== ~%EDWIN_BANTER%~ @104
== ~%FALDORN_BANTER%~ @105
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("edwin") Global("X#FAED2","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAED2
@106
DO ~SetGlobal("X#FAED2","LOCALS",1)~
== ~%EDWIN_BANTER%~ @107
= @108
== ~%FALDORN_BANTER%~ @109
== ~%EDWIN_BANTER%~ @110
== ~%FALDORN_BANTER%~ @111
== ~%EDWIN_BANTER%~ @112
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("edwin") Global("X#FAED3","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAED3
@113
DO ~SetGlobal("X#FAED3","LOCALS",1)~
== ~%EDWIN_BANTER%~ @114
= @115
== ~%FALDORN_BANTER%~ @116
== ~%EDWIN_BANTER%~ @117
== ~%FALDORN_BANTER%~ @118
== ~%EDWIN_BANTER%~ @119
== ~%FALDORN_BANTER%~ @120
== ~%EDWIN_BANTER%~ @121
== ~%FALDORN_BANTER%~ @122
== ~%EDWIN_BANTER%~ @123
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("X#FAEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAEL1
@124
DO ~SetGlobal("X#FAEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @125
= @126
== ~%FALDORN_BANTER%~ @127
== ~%ELDOTH_BANTER%~ @128
== ~%FALDORN_BANTER%~ @129
== ~%ELDOTH_BANTER%~ @130
= @131
== ~%FALDORN_BANTER%~ @132
== ~%ELDOTH_BANTER%~ @133
== ~%FALDORN_BANTER%~ @134
== ~%ELDOTH_BANTER%~ @135
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("eldoth") Global("X#FAEL2","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAEL2
@136
DO ~SetGlobal("X#FAEL2","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @137
= @138
== ~%FALDORN_BANTER%~ @139
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("garrick") Global("X#FAGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAGA1
@140
DO ~SetGlobal("X#FAGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @141
== ~%FALDORN_BANTER%~ @142
== ~%GARRICK_BANTER%~ @143
== ~%FALDORN_BANTER%~ @144
== ~%GARRICK_BANTER%~ @145
== ~%FALDORN_BANTER%~ @146
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#FAGA2","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAGA2
@147
DO ~SetGlobal("X#FAGA2","LOCALS",1)~
== ~%GARRICK_BANTER%~ @148
== ~%FALDORN_BANTER%~ @149
== ~%GARRICK_BANTER%~ @150
== ~%FALDORN_BANTER%~ @151
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#FAIM1","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAIM1
@152
DO ~SetGlobal("X#FAIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @153
== ~%FALDORN_BANTER%~ @154
== ~%IMOEN_BANTER%~ @155
= @156
== ~%FALDORN_BANTER%~ @157
== ~%IMOEN_BANTER%~ @158
== ~%FALDORN_BANTER%~ @159
== ~%IMOEN_BANTER%~ @160
== ~%FALDORN_BANTER%~ @161
== ~%IMOEN_BANTER%~ @162
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(DUNGEON) InParty("%IMOEN_DV%") Global("X#FAIM2","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAIM2
@163
DO ~SetGlobal("X#FAIM2","LOCALS",1)~
== ~%IMOEN_BANTER%~ @164
== ~%FALDORN_BANTER%~ @165
== ~%IMOEN_BANTER%~ @166
== ~%FALDORN_BANTER%~ @167
== ~%IMOEN_BANTER%~ @168
== ~%FALDORN_BANTER%~ @169
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#FAJA2","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAJA2
@170
DO ~SetGlobal("X#FAJA2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @171
== ~%FALDORN_BANTER%~ @172
== ~%JAHEIRA_BANTER%~ @173
== ~%FALDORN_BANTER%~ @174
== ~%JAHEIRA_BANTER%~ @175
== ~%FALDORN_BANTER%~ @176
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") InParty("khalid") Global("X#FAJA3","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAJA3
@177
DO ~SetGlobal("X#FAJA3","LOCALS",1)~
== ~%FALDORN_BANTER%~ IF ~Gender(Player1,MALE)~ THEN @178
== ~%JAHEIRA_BANTER%~ @179
== ~%FALDORN_BANTER%~ @180
== ~%JAHEIRA_BANTER%~ @181
== ~%FALDORN_BANTER%~ @182
== ~%JAHEIRA_BANTER%~ @183
== ~%FALDORN_BANTER%~ @184
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#FAJA4","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAJA4
@185
DO ~SetGlobal("X#FAJA4","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @186
== ~%FALDORN_BANTER%~ @187
== ~%JAHEIRA_BANTER%~ @188
= @189
== ~%FALDORN_BANTER%~ @190
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#FAKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAKA1
@191
DO ~SetGlobal("X#FAKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @192
== ~%FALDORN_BANTER%~ @193
= @194
== ~%KAGAIN_BANTER%~ @195
== ~%FALDORN_BANTER%~ @196
== ~%KAGAIN_BANTER%~ @197
== ~%FALDORN_BANTER%~ @198
== ~%KAGAIN_BANTER%~ @199
== ~%FALDORN_BANTER%~ @200
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") InParty("jaheira") Global("X#FAKH1","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAKH1
@201
DO ~SetGlobal("X#FAKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @202
== ~%FALDORN_BANTER%~ @203
== ~%KHALID_BANTER%~ @204
== ~%FALDORN_BANTER%~ @205
== ~%KHALID_BANTER%~ @206
== ~%FALDORN_BANTER%~ @207
== ~%KHALID_BANTER%~ @208
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") InParty("jaheira") Global("X#FAKH2","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAKH2
@209
DO ~SetGlobal("X#FAKH2","LOCALS",1)~
== ~%KHALID_BANTER%~ @210
== ~%FALDORN_BANTER%~ @211
== ~%KHALID_BANTER%~ @212
== ~%FALDORN_BANTER%~ @213
== ~%KHALID_BANTER%~ @214
EXIT


CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#FAKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAKI1
@215
DO ~SetGlobal("X#FAKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @216
== ~%FALDORN_BANTER%~ @217
== ~%KIVAN_BANTER%~ @218
= @219
== ~%FALDORN_BANTER%~ @220
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#FAKI2","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAKI2
@221
DO ~SetGlobal("X#FAKI2","LOCALS",1)~
== ~%KIVAN_BANTER%~ @222
== ~%FALDORN_BANTER%~ @223
== ~%KIVAN_BANTER%~ @224
== ~%FALDORN_BANTER%~ @225
= @226
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#FAMI2","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAMI2
@227
DO ~SetGlobal("X#FAMI2","LOCALS",1)~
== ~%MINSC_BANTER%~ @228
== ~%FALDORN_BANTER%~ @229
== ~%MINSC_BANTER%~ @230
== ~%FALDORN_BANTER%~ @231
== ~%MINSC_BANTER%~ @232
== ~%FALDORN_BANTER%~ @233
== ~%MINSC_BANTER%~ @234
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#FAMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAMI1
@235
DO ~SetGlobal("X#FAMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @236
== ~%FALDORN_BANTER%~ @237
== ~%MINSC_BANTER%~ @238
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") InParty("xzar") Global("X#FAMO1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID) See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAMO1
@239
DO ~SetGlobal("X#FAMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @240
== ~%FALDORN_BANTER%~ @241
== ~%MONTARON_BANTER%~ @242
== ~%FALDORN_BANTER%~ @243
== ~%MONTARON_BANTER%~ @244
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#FAQU1","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAQU1
@245
DO ~SetGlobal("X#FAQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @246
== ~%FALDORN_BANTER%~ @247
== ~%QUAYLE_BANTER%~ @248
= @249
== ~%FALDORN_BANTER%~ @250
== ~%QUAYLE_BANTER%~ @251
== ~%FALDORN_BANTER%~ @252
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#FAQU2","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAQU2
@253
DO ~SetGlobal("X#FAQU2","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @254
== ~%FALDORN_BANTER%~ @134
== ~%QUAYLE_BANTER%~ @255
== ~%FALDORN_BANTER%~ @159
== ~%QUAYLE_BANTER%~ @256
== ~%FALDORN_BANTER%~ @257
== ~%QUAYLE_BANTER%~ @258
== ~%FALDORN_BANTER%~ @259
== ~%QUAYLE_BANTER%~ @260
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#FAQU3","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAQU3
@261
DO ~SetGlobal("X#FAQU3","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @262
== ~%FALDORN_BANTER%~ @263
== ~%QUAYLE_BANTER%~ @264
== ~%FALDORN_BANTER%~ @265
== ~%QUAYLE_BANTER%~ @266
== ~%FALDORN_BANTER%~ @257
== ~%QUAYLE_BANTER%~ @267
== ~%FALDORN_BANTER%~ @268
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("safana") Global("X#FASA1","GLOBAL",0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FASA1
@269
DO ~SetGlobal("X#FASA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @270
== ~%FALDORN_BANTER%~ @271
== ~%SAFANA_BANTER%~ @272
== ~%FALDORN_BANTER%~ @273
== ~%SAFANA_BANTER%~ @274
== ~%FALDORN_BANTER%~ @275
== ~%SAFANA_BANTER%~ @276
== ~%FALDORN_BANTER%~ @277
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#FASA1","GLOBAL",1) InParty("safana") Global("X#FASA2","GLOBAL",0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FASA2
@278
DO ~SetGlobal("X#FASA2","GLOBAL",1)~
== ~%SAFANA_BANTER%~ @279
== ~%FALDORN_BANTER%~ @280
== ~%SAFANA_BANTER%~ @281
== ~%FALDORN_BANTER%~ @282
== ~%SAFANA_BANTER%~ @283
== ~%FALDORN_BANTER%~ @284
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#FASA2","GLOBAL",1) Global("X#FASA3","GLOBAL",0) !See([ENEMY]) InParty("safana") See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FASA3
@285
DO ~SetGlobal("X#FASA3","GLOBAL",1)~
== ~%SAFANA_BANTER%~ @286
== ~%FALDORN_BANTER%~ @287
== ~%SAFANA_BANTER%~ @288
= @289
== ~%FALDORN_BANTER%~ @290
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#FASH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FASH1
@291
DO ~SetGlobal("X#FASH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @292
== ~%FALDORN_BANTER%~ @293
== ~%SHARTEEL_BANTER%~ @294
= @295
== ~%FALDORN_BANTER%~ @296
== ~%SHARTEEL_BANTER%~ @297
= @298
== ~%FALDORN_BANTER%~ @299
== ~%SHARTEEL_BANTER%~ @300
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#FASH2","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FASH2
@301
DO ~SetGlobal("X#FASH2","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @302
== ~%FALDORN_BANTER%~ @303
== ~%SHARTEEL_BANTER%~ @304
== ~%FALDORN_BANTER%~ @305
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#FASH3","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FASH3
@306
DO ~SetGlobal("X#FASH3","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @307
== ~%FALDORN_BANTER%~ @308
== ~%SHARTEEL_BANTER%~ @309
== ~%FALDORN_BANTER%~ @310
== ~%SHARTEEL_BANTER%~ @311
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") InParty("eldoth") Global("X#FASK1","LOCALS",0)!See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FASK1
@312
DO ~SetGlobal("X#FASK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @313
== ~%FALDORN_BANTER%~ @314
== ~%SKIE_BANTER%~ @315
== ~%FALDORN_BANTER%~ @316
== ~%SKIE_BANTER%~ @317
== ~%FALDORN_BANTER%~ @318
== ~%SKIE_BANTER%~ @319
== ~%FALDORN_BANTER%~ @320
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") Global("X#FASK2","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FASK2
@321
DO ~SetGlobal("X#FASK2","LOCALS",1)~
== ~%SKIE_BANTER%~ @322
== ~%FALDORN_BANTER%~ @323
== ~%SKIE_BANTER%~ @324
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#FATI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FATI1
@325
DO ~SetGlobal("X#FATI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @326
== ~%FALDORN_BANTER%~ @327
== ~%TIAX_BANTER%~ @328
== ~%FALDORN_BANTER%~ @329
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("tiax") Global("X#FATI2","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FATI2
@330
DO ~SetGlobal("X#FATI2","LOCALS",1)~
== ~%TIAX_BANTER%~ @331 
== ~%FALDORN_BANTER%~ @332
== ~%TIAX_BANTER%~ @333
== ~%FALDORN_BANTER%~ @334
== ~%TIAX_BANTER%~ @335
== ~%FALDORN_BANTER%~ @336
== ~%TIAX_BANTER%~ @337
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("tiax") Global("X#FATI3","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FATI3
@338
DO ~SetGlobal("X#FATI3","LOCALS",1)~
== ~%TIAX_BANTER%~ @339
== ~%FALDORN_BANTER%~ @340
== ~%TIAX_BANTER%~ @341
== ~%FALDORN_BANTER%~ @342
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(CITY) InParty("tiax") Global("X#FATI4","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FATI4
@343
DO ~SetGlobal("X#FATI4","LOCALS",1)~
== ~%TIAX_BANTER%~ @344
== ~%FALDORN_BANTER%~ @345
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @346
== ~%FALDORN_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @347
== ~%TIAX_BANTER%~ @348
= @349
== ~%FALDORN_BANTER%~ @350
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% TimeOfDay(DAY) InParty("viconia") Global("X#FAVI1","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%FALDORN_BANTER%~ FAVI1
@351
DO ~SetGlobal("X#FAVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @352
== ~%FALDORN_BANTER%~ @353
== ~%VICONIA_BANTER%~ @354
== ~%FALDORN_BANTER%~ @355
== ~%VICONIA_BANTER%~ @356
== ~%FALDORN_BANTER%~ @357
== ~%VICONIA_BANTER%~ @358
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% TimeOfDay(DAY) InParty("viconia") Global("X#FAVI2","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAVI2
@359
DO ~SetGlobal("X#FAVI2","LOCALS",1)~
== ~%VICONIA_BANTER%~ @360
== ~%FALDORN_BANTER%~ @361
== ~%VICONIA_BANTER%~ @362
= @363
== ~%FALDORN_BANTER%~ @364
== ~%VICONIA_BANTER%~ @365
== ~%FALDORN_BANTER%~ @366
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#FAVI3","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAVI3
@367
DO ~SetGlobal("X#FAVI3","LOCALS",1)~
== ~%VICONIA_BANTER%~ @368
== ~%FALDORN_BANTER%~ @369
== ~%VICONIA_BANTER%~ @370
== ~%FALDORN_BANTER%~ @371
== ~%VICONIA_BANTER%~ @372
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("xan") Global("X#FAXA1","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAXA1
@373
DO ~SetGlobal("X#FAXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @374
== ~%FALDORN_BANTER%~ @375
== ~%XAN_BANTER%~ @376
= @377
== ~%FALDORN_BANTER%~ @378
== ~%XAN_BANTER%~ @379
= @380
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#FaldornHasRay","GLOBAL",1) CombatCounter(0) InParty("xan") Global("X#FAXA2","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAXA2
@381
DO ~SetGlobal("X#FAXA2","LOCALS",1)~
== ~%XAN_BANTER%~ @382
== ~%FALDORN_BANTER%~ @383
== ~%XAN_BANTER%~ @384
== ~%FALDORN_BANTER%~ @385
== ~%XAN_BANTER%~ @386
== ~%FALDORN_BANTER%~ @387
== ~%XAN_BANTER%~ @388
== ~%FALDORN_BANTER%~ @389
== ~%XAN_BANTER%~ @390
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("xzar") Global("X#FAXZ1","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAXZ1
@391
DO ~SetGlobal("X#FAXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @392
= @393 
== ~%FALDORN_BANTER%~ @394
== ~%XZAR_BANTER%~ @395
== ~%FALDORN_BANTER%~ @396
== ~%XZAR_BANTER%~ @397
== ~%FALDORN_BANTER%~ @398
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("yeslick") Global("X#FAYE1","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("yeslick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FAYE1
@399
DO ~SetGlobal("X#FAYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @400
== ~%FALDORN_BANTER%~ @401
== ~%YESLICK_BANTER%~ @402
== ~%FALDORN_BANTER%~ @403
== ~%YESLICK_BANTER%~ @404
== ~%FALDORN_BANTER%~ @405
== ~%YESLICK_BANTER%~ @406
== ~%FALDORN_BANTER%~ @407
EXIT

CHAIN3 ~%JAHEIRA_BANTER%~ jahbitch
@408
== ~%FALDORN_BANTER%~ @409
== ~%JAHEIRA_BANTER%~ @410
== ~%FALDORN_BANTER%~ @411
== ~%JAHEIRA_BANTER%~ @412
== ~%FALDORN_BANTER%~ @413
EXIT
