/* CONTENTS */
/* Mulahey friend talk */
/* Elminster */
/* Quayle */
/* Unscripted banter */

APPEND ~%KHALID_JOINED%~

/* Mulahey friend talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KhFriendTalk","GLOBAL",1)~ THEN BEGIN KHPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#KhFriendTalk","GLOBAL",2)~ GOTO KHPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#KhFriendTalk","GLOBAL",2)~ GOTO KHPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#KhFriendTalk","GLOBAL",2)~ GOTO KHPC1.3
END

IF ~~ THEN BEGIN KHPC1.1
SAY @4
IF ~~ THEN REPLY @5 GOTO KHPC1.4
IF ~~ THEN REPLY @6 GOTO KHPC1.4
IF ~~ THEN REPLY @7 GOTO KHPC1.3
END


IF ~~ THEN BEGIN KHPC1.2
SAY @8
IF ~~ THEN REPLY @9 GOTO KHPC1.5
IF ~~ THEN REPLY @10 GOTO KHPC1.6
IF ~~ THEN REPLY @11 GOTO KHPC1.3
END

IF ~~ THEN BEGIN KHPC1.3
SAY @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KHPC1.4
SAY @13
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KHPC1.5
SAY @14
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KHPC1.6
SAY @15
IF ~~ THEN EXIT
END

/* Elminster */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KhElminster","GLOBAL",1)~ THEN BEGIN KHPC2
SAY @16
IF ~~ THEN REPLY @17 DO ~SetGlobal("X#KhElminster","GLOBAL",2)~ GOTO KHPC2.1
IF ~~ THEN REPLY @18 DO ~SetGlobal("X#KhElminster","GLOBAL",2)~ GOTO KHPC2.2
IF ~~ THEN REPLY @19 DO ~SetGlobal("X#KhElminster","GLOBAL",2)~ GOTO KHPC2.3
END

IF ~~ THEN BEGIN KHPC2.1
SAY @20
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KHPC2.2
SAY @21
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KHPC2.3
SAY @22
IF ~~ THEN EXIT
END

END

/* AREA SCRIPT */
/* Quayle */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#KHQU1","GLOBAL",1)~ THEN ~%KHALID_JOINED%~ KHQU1
@23
DO ~SetGlobal("X#KHQU1","GLOBAL",2)~
== ~%QUAYLE_BANTER%~ @24
== ~%KHALID_BANTER%~ @25
== ~%QUAYLE_BANTER%~ @26
== ~%KHALID_BANTER%~ @27
== ~%QUAYLE_BANTER%~ @28
EXIT

/* Unscripted banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#KHAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHAJ1
@29
DO ~SetGlobal("X#KHAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @30
== ~%KHALID_BANTER%~ @31
== ~%AJANTIS_BANTER%~ @32
== ~%KHALID_BANTER%~ @33
== ~%AJANTIS_BANTER%~ @34
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#KHAL1","LOCALS",0) !See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHAL1
@35
DO ~SetGlobal("X#KHAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @36
== ~%KHALID_BANTER%~ @37
== ~%ALORA_BANTER%~ @38
== ~%KHALID_BANTER%~ @39
== ~%ALORA_BANTER%~ @40
== ~%KHALID_BANTER%~ @41
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#KHBR1","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHBR1
@42
DO ~SetGlobal("X#KHBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @43
== ~%KHALID_BANTER%~ @44
== ~%BRANWEN_BANTER%~ @45
== ~%KHALID_BANTER%~ @46
== ~%BRANWEN_BANTER%~ @47
== ~%KHALID_BANTER%~ @48
== ~%BRANWEN_BANTER%~ @49
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#KHCO1","LOCALS",0) !See([ENEMY]) InParty("coran") See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHCO1
@50
DO ~SetGlobal("X#KHCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @51
== ~%KHALID_BANTER%~ @52
== ~%CORAN_BANTER%~ @53
== ~%KHALID_BANTER%~ @54
== ~%CORAN_BANTER%~ @55
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") InParty("minsc") Global("X#KHDY1","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHDY1
@56
DO ~SetGlobal("X#KHDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @57
== ~%KHALID_BANTER%~ @58
== ~%DYNAHEIR_BANTER%~ @59
== ~%KHALID_BANTER%~ @60
== ~%DYNAHEIR_BANTER%~ @61
== ~%KHALID_BANTER%~ @62
== ~%DYNAHEIR_BANTER%~ @63
== ~%KHALID_BANTER%~ @64
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#KHED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHED1
@65
DO ~SetGlobal("X#KHED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @66
== ~%KHALID_BANTER%~ @67
== ~%EDWIN_BANTER%~ @68
== ~%KHALID_BANTER%~ @69
== ~%EDWIN_BANTER%~ @70
== ~%KHALID_BANTER%~ @71
== ~%EDWIN_BANTER%~ @72
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") !InParty("skie") GlobalLT("SilvershieldEstate","GLOBAL",2) Global("X#KHEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHEL1
@73
DO ~SetGlobal("X#KHEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @74
== ~%KHALID_BANTER%~ @75
== ~%ELDOTH_BANTER%~ @76
== ~%KHALID_BANTER%~ @77
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("X#KHFA1","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHFA1
@78
DO ~SetGlobal("X#KHFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @79
== ~%KHALID_BANTER%~ @80
== ~%FALDORN_BANTER%~ @81
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#KHGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHGA1
@82
DO ~SetGlobal("X#KHGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @83
== ~%KHALID_BANTER%~ @84
== ~%GARRICK_BANTER%~ @85
== ~%KHALID_BANTER%~ @86
== ~%GARRICK_BANTER%~ @87
== ~%KHALID_BANTER%~ @88
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) !See([ENEMY]) InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) Global("X#KHIM1","LOCALS",0)~ THEN ~%KHALID_BANTER%~ KHIM1
@89
DO ~SetGlobal("X#KHIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @90
== ~%KHALID_BANTER%~ @91
== ~%IMOEN_BANTER%~ @92
== ~%KHALID_BANTER%~ @93
== ~%IMOEN_BANTER%~ @94
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#KHJA1","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHJA1
@95
DO ~SetGlobal("X#KHJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @96
== ~%KHALID_BANTER%~ @97
== ~%JAHEIRA_BANTER%~ @98
== ~%KHALID_BANTER%~ @99
== ~%JAHEIRA_BANTER%~ @100
== ~%KHALID_BANTER%~ @101
== ~%JAHEIRA_BANTER%~ @102
== ~%KHALID_BANTER%~ @103
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#KHJA2","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHJA2
@104
DO ~SetGlobal("X#KHJA2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @105
== ~%KHALID_BANTER%~ @106
== ~%JAHEIRA_BANTER%~ @107
== ~%KHALID_BANTER%~ @108
== ~%JAHEIRA_BANTER%~ @109
== ~%KHALID_BANTER%~ @110
== ~%JAHEIRA_BANTER%~ @111
== ~%KHALID_BANTER%~ @112
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#KHJA3","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHJA3
@113
DO ~SetGlobal("X#KHJA3","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @114
== ~%KHALID_BANTER%~ @115
== ~%JAHEIRA_BANTER%~ @116
== ~%KHALID_BANTER%~ @117
== ~%JAHEIRA_BANTER%~ @118
== ~%KHALID_BANTER%~ @119
== ~%JAHEIRA_BANTER%~ @120
== ~%KHALID_BANTER%~ @121
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("P#CoKH1","GLOBAL",1) InParty("jaheira") Global("X#KHJA4","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHJA4
@122
DO ~SetGlobal("X#KHJA4","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @123
== ~%KHALID_BANTER%~ @124
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#KHKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHKA1
@125
DO ~SetGlobal("X#KHKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @126
== ~%KHALID_BANTER%~ @127
== ~%KAGAIN_BANTER%~ @128
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") InParty("jaheira") InMyArea("jaheira") Global("X#KHKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHKI1
@129
DO ~SetGlobal("X#KHKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @130
== ~%KHALID_BANTER%~ @131
== ~%KIVAN_BANTER%~ @132
== ~%KHALID_BANTER%~ @133
== ~%KIVAN_BANTER%~ @134
== ~%KHALID_BANTER%~ @135
== ~%KIVAN_BANTER%~ @136
== ~%KHALID_BANTER%~ @137
== ~%KIVAN_BANTER%~ @138
== ~%KHALID_BANTER%~ @139
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#KHMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHMI1
@140
DO ~SetGlobal("X#KHMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @141
== ~%KHALID_BANTER%~ @142
== ~%MINSC_BANTER%~ @143
== ~%KHALID_BANTER%~ @144
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") InParty("jaheira") InMyArea("jaheira") Global("X#KHMO1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHMO1
@145
DO ~SetGlobal("X#KHMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @146
== ~%KHALID_BANTER%~ @147
== ~%MONTARON_BANTER%~ @148
== ~%KHALID_BANTER%~ @149
== ~%MONTARON_BANTER%~ @150
== ~%KHALID_BANTER%~ @151
== ~%MONTARON_BANTER%~ @152
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#KHSA1","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHSA1
@153
DO ~SetGlobal("X#KHSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @154
== ~%KHALID_BANTER%~ @155
== ~%SAFANA_BANTER%~ @156
== ~%KHALID_BANTER%~ @157
== ~%SAFANA_BANTER%~ @158
== ~%KHALID_BANTER%~ @159
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) TimeOfDay(DAY) InParty("sharteel") InParty("jaheira") Global("X#KHSH1","LOCALS",0) !See([ENEMY]) See("sharteel") See("jaheira") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHSH1
@160
DO ~SetGlobal("X#KHSH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @161
== ~%KHALID_BANTER%~ @162
== ~%SHARTEEL_BANTER%~ @163
== ~%KHALID_BANTER%~ @164
== ~%SHARTEEL_BANTER%~ @165
== ~%KHALID_BANTER%~ @166
== ~%JAHEIRA_BANTER%~ @167
== ~%SHARTEEL_BANTER%~ @168
== ~%KHALID_BANTER%~ @169
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") InParty("eldoth") Global("X#KHSK1","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHSK1
@170
DO ~SetGlobal("X#KHSK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @171
== ~%KHALID_BANTER%~ @172
== ~%SKIE_BANTER%~ @173
== ~%KHALID_BANTER%~ @174
== ~%SKIE_BANTER%~ @175
== ~%KHALID_BANTER%~ @176
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#KHTI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHTI1
@177
DO ~SetGlobal("X#KHTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @178
== ~%KHALID_BANTER%~ @179
== ~%TIAX_BANTER%~ @180
== ~%KHALID_BANTER%~ @181
== ~%TIAX_BANTER%~ @182
== ~%KHALID_BANTER%~ @183
== ~%TIAX_BANTER%~ @184
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") InParty("jaheira") InMyArea("jaheira") Global("X#KHVI1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHVI1
@185
DO ~SetGlobal("X#KHVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @186
== ~%KHALID_BANTER%~ @187
== ~%VICONIA_BANTER%~ @188
== ~%KHALID_BANTER%~ @189
== ~%VICONIA_BANTER%~ @190
== ~%KHALID_BANTER%~ @191
== ~%VICONIA_BANTER%~ @192
== ~%KHALID_BANTER%~ @193
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#KHXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHXA1
@194
DO ~SetGlobal("X#KHXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @195
== ~%KHALID_BANTER%~ @196
== ~%XAN_BANTER%~ @197
== ~%KHALID_BANTER%~ @198
== ~%XAN_BANTER%~ @199
== ~%KHALID_BANTER%~ @200
== ~%XAN_BANTER%~ @201
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") Global("X#KHXZ1","LOCALS",0) !See([ENEMY]) See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHXZ1
@202
DO ~SetGlobal("X#KHXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @203
== ~%KHALID_BANTER%~ @204
== ~%XZAR_BANTER%~ @205
== ~%KHALID_BANTER%~ @206
== ~%XZAR_BANTER%~ @207
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("X#KHYE1","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHYE1
@208
DO ~SetGlobal("X#KHYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @209
== ~%KHALID_BANTER%~ @210
== ~%YESLICK_BANTER%~ @211
EXIT
