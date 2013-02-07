APPEND ~%MONTARON_JOINED%~

/* Dream Script */
/* Montaron on the art of poison */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MOPC1","GLOBAL",1)~ THEN BEGIN MOPC1
SAY @0 
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#MOPC1","GLOBAL",2)~ GOTO MOPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#MOPC1","GLOBAL",2)~ GOTO MOPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#MOPC1","GLOBAL",2)~ GOTO MOPC1.3
END

IF ~~ THEN BEGIN MOPC1.1
SAY @4
IF ~~ THEN REPLY @3 GOTO MOPC1.3
IF ~~ THEN REPLY @5 GOTO MOPC1.2
END

IF ~~ THEN BEGIN MOPC1.2
SAY @6
IF ~~ THEN REPLY @7 GOTO MOPC1.4
IF ~~ THEN REPLY @8 GOTO MOPC1.5
IF ~~ THEN REPLY @3 GOTO MOPC1.3
END

IF ~~ THEN BEGIN MOPC1.3
SAY @9
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN MOPC1.4
SAY @10
IF ~~ THEN REPLY @11 GOTO MOPC1.6
IF ~~ THEN REPLY @3 GOTO MOPC1.3
END

IF ~~ THEN BEGIN MOPC1.5
SAY @12
IF ~~ THEN REPLY @11 GOTO MOPC1.6
IF ~~ THEN REPLY @3 GOTO MOPC1.3
END

IF ~~ THEN BEGIN MOPC1.6
SAY @13
IF ~~ THEN REPLY @14 GOTO MOPC1.7
IF ~~ THEN REPLY @3 GOTO MOPC1.3
END

IF ~~ THEN BEGIN MOPC1.7
SAY @15
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#MontyYesliMines","GLOBAL",1)~ THEN BEGIN MOYE1
SAY @16
IF ~~ THEN DO ~SetGlobal("X#MontyYesliMines","GLOBAL",2)~ EXTERN ~%YESLICK_BANTER%~ Mines
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#MOXA1","LOCALS",1)~ THEN BEGIN MOXA1
SAY @17
IF ~~ THEN DO ~SetGlobal("X#MOXA1","LOCALS",2)~ EXTERN ~%XAN_BANTER%~ MoXaMul
END

END

CHAIN3 ~%YESLICK_BANTER%~ Mines
@18
== ~%MONTARON_BANTER%~ @19
== ~%YESLICK_BANTER%~ @20
== ~%MONTARON_BANTER%~ @21
== ~%YESLICK_BANTER%~ @22
== ~%MONTARON_BANTER%~ @23
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) TimeOfDay(DAY) InParty("ajantis") Global("X#MOAJ1","LOCALS",0) !AreaType(DUNGEON) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOAJ1
@24
DO ~SetGlobal("X#MOAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @25
== ~%MONTARON_BANTER%~ @26
== ~%AJANTIS_BANTER%~ @27
== ~%MONTARON_BANTER%~ @28
== ~%AJANTIS_BANTER%~ @29
== ~%MONTARON_BANTER%~ @30
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#MOAL1","LOCALS",0) !See([ENEMY]) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOAL1
@31
DO ~SetGlobal("X#MOAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @32
== ~%MONTARON_BANTER%~ @33
== ~%ALORA_BANTER%~ @34
== ~%MONTARON_BANTER%~ @35
== ~%ALORA_BANTER%~ @36
== ~%MONTARON_BANTER%~ @37
== ~%ALORA_BANTER%~ @38
== ~%MONTARON_BANTER%~ @39
== ~%ALORA_BANTER%~ @40
== ~%MONTARON_BANTER%~ @41
== ~%ALORA_BANTER%~ @42
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#MOBR1","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOBR1
@43
DO ~SetGlobal("X#MOBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @44
== ~%MONTARON_BANTER%~ @45
== ~%BRANWEN_BANTER%~ @46
== ~%MONTARON_BANTER%~ @47
== ~%BRANWEN_BANTER%~ @48
== ~%MONTARON_BANTER%~ @49
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#MOCO1","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOCO1
@50
DO ~SetGlobal("X#MOCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @51
== ~%MONTARON_BANTER%~ @52
== ~%CORAN_BANTER%~ @53
== ~%MONTARON_BANTER%~ @54
== ~%CORAN_BANTER%~ @55
== ~%MONTARON_BANTER%~ @56
== ~%CORAN_BANTER%~ @57
== ~%MONTARON_BANTER%~ @58
== ~%CORAN_BANTER%~ @59
== ~%MONTARON_BANTER%~ @60
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") InParty("minsc") InParty("xzar") Global("X#MODY1","LOCALS",0) !See([ENEMY]) See("dynaheir") See("minsc") See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MODY1
@61
DO ~SetGlobal("X#MODY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @62
== ~%MONTARON_BANTER%~ @63
== ~%DYNAHEIR_BANTER%~ @64
== ~%MONTARON_BANTER%~ @65
= @66
== ~%DYNAHEIR_BANTER%~ @67
== ~%MONTARON_BANTER%~ @68
= @69
== ~%DYNAHEIR_BANTER%~ @70
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#MOED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOED1
@71
DO ~SetGlobal("X#MOED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @72
== ~%MONTARON_BANTER%~ @73
== ~%EDWIN_BANTER%~ @74
== ~%MONTARON_BANTER%~ @75
== ~%EDWIN_BANTER%~ @76
== ~%MONTARON_BANTER%~ @77
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#MOED2","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOED2
@78
DO ~SetGlobal("X#MOED2","LOCALS",1)~
== ~%EDWIN_BANTER%~ @79
== ~%MONTARON_BANTER%~ @80
== ~%EDWIN_BANTER%~ @81
== ~%MONTARON_BANTER%~ @82
== ~%EDWIN_BANTER%~ @83
== ~%MONTARON_BANTER%~ @84
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("X#MOEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOEL1
@85
DO ~SetGlobal("X#MOEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @86
== ~%MONTARON_BANTER%~ @87
== ~%ELDOTH_BANTER%~ @88
== ~%MONTARON_BANTER%~ @89
= @90
== ~%ELDOTH_BANTER%~ @91
== ~%MONTARON_BANTER%~ @92
== ~%ELDOTH_BANTER%~ @93
== ~%MONTARON_BANTER%~ @94
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("faldorn") InParty("xzar") Global("X#MOFA1","LOCALS",0) !See([ENEMY]) See("faldorn") See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOFA1
@95
DO ~SetGlobal("X#MOFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @96
== ~%MONTARON_BANTER%~ @97
== ~%FALDORN_BANTER%~ @98
== ~%MONTARON_BANTER%~ @99
== ~%FALDORN_BANTER%~ @100
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#MOGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOGA1
@101
DO ~SetGlobal("X#MOGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @102
== ~%MONTARON_BANTER%~ @103
== ~%GARRICK_BANTER%~ @104
== ~%MONTARON_BANTER%~ @105
== ~%GARRICK_BANTER%~ @106
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("%IMOEN_DV%") Global("X#MOIM1","GLOBAL",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOIM1
@107
DO ~SetGlobal("X#MOIM1","GLOBAL",1)~
== ~%IMOEN_BANTER%~ @108
== ~%MONTARON_BANTER%~ @109
== ~%IMOEN_BANTER%~ @110
== ~%MONTARON_BANTER%~ @111
== ~%IMOEN_BANTER%~ @112
== ~%MONTARON_BANTER%~ @113
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("jaheira") Global("X#MOJA1","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOJA1
@114
DO ~SetGlobal("X#MOJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @115
== ~%MONTARON_BANTER%~ @116
== ~%JAHEIRA_BANTER%~ @117
== ~%MONTARON_BANTER%~ @118
== ~%JAHEIRA_BANTER%~ @119
== ~%MONTARON_BANTER%~ @120
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#MOKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOKA1
@121
DO ~SetGlobal("X#MOKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @122
== ~%MONTARON_BANTER%~ @123
== ~%KAGAIN_BANTER%~ @124
== ~%MONTARON_BANTER%~ @125
== ~%KAGAIN_BANTER%~ @126
== ~%MONTARON_BANTER%~ @127
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#MOKH1","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOKH1
@128
DO ~SetGlobal("X#MOKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @129
== ~%MONTARON_BANTER%~ @130
== ~%KHALID_BANTER%~ @131
== ~%MONTARON_BANTER%~ @132
== ~%KHALID_BANTER%~ @133
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") InParty("jaheira") InParty("xzar") Global("X#MOKH2","LOCALS",0) !See([ENEMY]) See("khalid") See("jaheira") See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOKH2
@134
DO ~SetGlobal("X#MOKH2","LOCALS",1)~
== ~%KHALID_BANTER%~ @135
== ~%MONTARON_BANTER%~ @136
== ~%KHALID_BANTER%~ @137
== ~%MONTARON_BANTER%~ @138
== ~%KHALID_BANTER%~ @139
== ~%MONTARON_BANTER%~ @140
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("kivan") Global("X#MOKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOKI1
@141
DO ~SetGlobal("X#MOKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @142
== ~%MONTARON_BANTER%~ @143
== ~%KIVAN_BANTER%~ @144
== ~%MONTARON_BANTER%~ @145
== ~%KIVAN_BANTER%~ @146
== ~%MONTARON_BANTER%~ @147
== ~%KIVAN_BANTER%~ @148
== ~%MONTARON_BANTER%~ @149
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#MOMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOMI1
@150
DO ~SetGlobal("X#MOMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @151
== ~%MONTARON_BANTER%~ @152
== ~%MINSC_BANTER%~ @153
== ~%MONTARON_BANTER%~ @154
== ~%MINSC_BANTER%~ @155
== ~%MONTARON_BANTER%~ @156
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#MOQU1","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOQU1
@157
DO ~SetGlobal("X#MOQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @158
== ~%MONTARON_BANTER%~ @159
== ~%QUAYLE_BANTER%~ @160
== ~%MONTARON_BANTER%~ @161
== ~%QUAYLE_BANTER%~ @162
== ~%MONTARON_BANTER%~ @163
== ~%QUAYLE_BANTER%~ @164
== ~%MONTARON_BANTER%~ @165
== ~%QUAYLE_BANTER%~ @166
== ~%MONTARON_BANTER%~ @167
== ~%QUAYLE_BANTER%~ @168
== ~%MONTARON_BANTER%~ @169
== ~%QUAYLE_BANTER%~ @170
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#MOSA1","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOSA1
@171
DO ~SetGlobal("X#MOSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @172
== ~%MONTARON_BANTER%~ @173
== ~%SAFANA_BANTER%~ @174
== ~%MONTARON_BANTER%~ @175
== ~%SAFANA_BANTER%~ @176
== ~%MONTARON_BANTER%~ @177
== ~%SAFANA_BANTER%~ @178
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#MOSH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOSH1
@179
DO ~SetGlobal("X#MOSH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @180
== ~%MONTARON_BANTER%~ @181
== ~%SHARTEEL_BANTER%~ @182
== ~%MONTARON_BANTER%~ @183
== ~%SHARTEEL_BANTER%~ @184
== ~%MONTARON_BANTER%~ @185
== ~%SHARTEEL_BANTER%~ @186
== ~%MONTARON_BANTER%~ @187
== ~%SHARTEEL_BANTER%~ @188
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") InParty("eldoth") Global("X#MOSK1","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOSK1
@189
DO ~SetGlobal("X#MOSK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @190
== ~%MONTARON_BANTER%~ @191
== ~%SKIE_BANTER%~ @192
== ~%MONTARON_BANTER%~ @193
== ~%SKIE_BANTER%~ @194
== ~%MONTARON_BANTER%~ @195
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#MOTI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOTI1
@196
DO ~SetGlobal("X#MOTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @197
== ~%MONTARON_BANTER%~ @198
== ~%TIAX_BANTER%~ @199
== ~%MONTARON_BANTER%~ @200
== ~%TIAX_BANTER%~ @201
== ~%MONTARON_BANTER%~ @202
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#MOVI1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%MONTARON_BANTER%~ MOVI1
@203
DO ~SetGlobal("X#MOVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @204
== ~%MONTARON_BANTER%~ @205
== ~%VICONIA_BANTER%~ @206
== ~%MONTARON_BANTER%~ @207
== ~%VICONIA_BANTER%~ @208
== ~%MONTARON_BANTER%~ @209
== ~%VICONIA_BANTER%~ @210
== ~%MONTARON_BANTER%~ @211
EXIT

CHAIN ~%XAN_BANTER%~ MoXaMul
@212
DO ~SetGlobal("X#MOXA1","LOCALS",2)~
== ~%MONTARON_BANTER%~ @213
== ~%XAN_BANTER%~ @214
== ~%MONTARON_BANTER%~ @215
== ~%XAN_BANTER%~ @216
EXIT
