/* PC talk Script */

APPEND ~%ALORA_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AlFriendTalk","GLOBAL",1)~ THEN BEGIN ALPC1
SAY @0
IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#AlFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#AlFriendTalkTime","GLOBAL",3600)~ EXTERN ~%IMOEN_BANTER%~ ALPCwIM
IF ~OR(3) !InParty("%IMOEN_DV%") !InMyArea("%IMOEN_DV%") StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#AlFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#AlFriendTalkTime","GLOBAL",3600)~ GOTO AL1PCTALK
END 

IF ~~ AL1PCTALK
SAY @1
IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !InParty("xan")~ THEN REPLY @2 DO ~SetGlobal("X#AlPC1","LOCALS",1)~ GOTO ALPC1.1KIV
IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)!InParty("kivan")~ THEN REPLY @2 DO ~SetGlobal("X#AlPC1","LOCALS",1)~ GOTO ALPC1.1XAN
IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN REPLY @2 DO ~SetGlobal("X#AlPC1","LOCALS",1)~ GOTO ALPC1.1KX
IF ~!InParty("xan") !InParty("kivan")~ THEN REPLY @2 DO ~SetGlobal("X#AlPC1","LOCALS",1)~ GOTO ALPC1.1
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#AlPC1","LOCALS",1)~ GOTO ALPC1.2
IF ~~ THEN REPLY @4 DO ~SetGlobal("X#AlPC1","LOCALS",1)~ GOTO ALPC1.3
END

IF ~~ ALPC1.1KIV
SAY @5
IF ~~ THEN REPLY @6 GOTO ALPC1.4
IF ~~ THEN REPLY @7 GOTO ALPC1.5
IF ~~ THEN REPLY @8 GOTO ALPC1.6
END

IF ~~ ALPC1.1XAN
SAY @9
IF ~~ THEN REPLY @6 GOTO ALPC1.4
IF ~~ THEN REPLY @10 GOTO ALPC1.5
IF ~~ THEN REPLY @8 GOTO ALPC1.6
END

IF ~~ THEN BEGIN ALPC1.1KX
SAY @11
IF ~~ THEN REPLY @6 GOTO ALPC1.4
IF ~~ THEN REPLY @12 GOTO ALPC1.5
IF ~~ THEN REPLY @8 GOTO ALPC1.6
END

IF ~~ THEN BEGIN ALPC1.1
SAY @13
IF ~~ THEN REPLY @6 GOTO ALPC1.4
IF ~~ THEN REPLY @14 GOTO ALPC1.5
IF ~~ THEN REPLY @8 GOTO ALPC1.6
END

IF ~~ THEN BEGIN ALPC1.2
SAY @15
IF ~InParty("kivan") !InParty("xan")~ THEN REPLY @16 GOTO ALPC1.1KIV
IF ~InParty("xan") !InParty("kivan")~ THEN REPLY @16 GOTO ALPC1.1XAN
IF ~InParty("xan") InParty("kivan")~ THEN REPLY @16 GOTO ALPC1.1KX
IF ~!InParty("xan") !InParty("kivan")~ THEN REPLY @16 GOTO ALPC1.1
IF ~~ THEN REPLY @17 GOTO ALPC1.3
END

IF ~~ THEN BEGIN ALPC1.3
SAY @18
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ALPC1.4
SAY @19
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ALPC1.5
SAY @20
IF ~~ THEN REPLY @17 GOTO ALPC1.3
IF ~~ THEN REPLY @6 GOTO ALPC1.4
END

IF ~~ THEN BEGIN ALPC1.6
SAY @21
IF ~~ THEN GOTO NPC_React
END
END

CHAIN3 ~%ALORA_JOINED%~ NPC_React
@22
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @23
== ~%BRANWEN_BANTER%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @24
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @25
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @26
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @27
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @28
== ~%SKIE_BANTER%~ IF ~InParty("eldoth") InParty("skie")~ THEN @29
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InParty("skie")~ THEN @30
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @31
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @32
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @33
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @34
== ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @35
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @36
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !InParty("khalid")~ THEN @37
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @38
== ~%KHALID_BANTER%~ IF ~!InParty("jaheira") InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @39
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @40
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @41
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InParty("minsc")~ THEN @42
== ~%MINSC_BANTER%~ IF ~InParty("dynaheir") InParty("minsc")~ THEN @43
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @44
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @45
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @46
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @47
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @48
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @49
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @50
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @51
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @52
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InParty("xzar")~ THEN @53
== ~%XZAR_BANTER%~ IF ~InParty("montaron") InParty("xzar")~ THEN @54
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @55
EXIT

APPEND ~%IMOEN_BANTER%~

IF ~~ THEN BEGIN ALPCwIM
SAY @56
IF ~~ THEN EXTERN ~%ALORA_JOINED%~ AL1PCTALK
END
END

APPEND ~%ALORA_JOINED%~

/* PC Talk Script */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AlFriendTalk","GLOBAL",3)~ THEN BEGIN ALIM3
SAY @57 
IF ~~ THEN DO ~SetGlobal("X#AlFriendTalk","GLOBAL",4) RealSetGlobalTimer("X#AlFriendTalkTime","GLOBAL",18000)~ EXTERN ~%IMOEN_BANTER%~ AL3IMCHAIN
END

IF ~~ THEN BEGIN AL3IMTALK
SAY @58
IF ~~ THEN REPLY @59 GOTO ALIM1.1
IF ~~ THEN REPLY @60 GOTO ALIM1.2
IF ~~ THEN REPLY @61 GOTO ALIM1.3
END

IF ~~ THEN BEGIN ALIM1.1
SAY @62
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ALIM1.2
SAY @63
IF ~~ THEN EXIT
END
END

CHAIN3 ~%ALORA_JOINED%~ ALIM1.3
@64
== ~%IMOEN_BANTER%~ @65
EXIT

CHAIN3 ~%IMOEN_BANTER%~ AL3IMCHAIN
@66
== ~%ALORA_BANTER%~ @67
== ~%IMOEN_BANTER%~ @68
== ~%ALORA_BANTER%~ @69
== ~%IMOEN_BANTER%~ @70
END ~%ALORA_JOINED%~ AL3IMTALK

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") !Class(Player1,PALADIN) Global("X#AlAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALAJ1
@71 
DO ~SetGlobal("X#AlAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @72
== ~%ALORA_BANTER%~ @73
== ~%AJANTIS_BANTER%~ @74
== ~%ALORA_BANTER%~ @75
== ~%AJANTIS_BANTER%~ @76
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#AlAJ1","LOCALS",1) Global("X#AlAJ2","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALAJ2
@77 
DO ~SetGlobal("X#AlAJ2","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @78
== ~%ALORA_BANTER%~ @79
== ~%AJANTIS_BANTER%~ @80
== ~%ALORA_BANTER%~ @81
== ~%AJANTIS_BANTER%~ @82
== ~%ALORA_BANTER%~ @83
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("coran") Global("X#AlCO1","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALCO1
@84
DO ~SetGlobal("X#AlCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @85
== ~%ALORA_BANTER%~ @86
== ~%CORAN_BANTER%~ @87
== ~%ALORA_BANTER%~ @88
== ~%CORAN_BANTER%~ @89
== ~%ALORA_BANTER%~ @90
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#AlCO1","LOCALS",1) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) Global("X#AlCO2","LOCALS",0) InParty("coran") !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALCO2
@91
DO ~SetGlobal("X#AlCO2","LOCALS",1)~
== ~%CORAN_BANTER%~ @92
== ~%ALORA_BANTER%~ @93
== ~%CORAN_BANTER%~ @94
== ~%ALORA_BANTER%~ @95
== ~%CORAN_BANTER%~ @96
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) Global("X#AlCO3","LOCALS",0) InParty("coran") !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALCO3
@97
DO ~SetGlobal("X#AlCO3","LOCALS",1)~
== ~%CORAN_BANTER%~ @98
== ~%ALORA_BANTER%~ @99
== ~%CORAN_BANTER%~ @100
== ~%ALORA_BANTER%~ @101
== ~%CORAN_BANTER%~ @102
== ~%ALORA_BANTER%~ @103
== ~%CORAN_BANTER%~ @104
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#AlDY1","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALDY1
@105
DO ~SetGlobal("X#AlDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @106
== ~%ALORA_BANTER%~ @107
== ~%DYNAHEIR_BANTER%~ @108
== ~%ALORA_BANTER%~ @109
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") InParty("minsc") Global("X#AlDY2","LOCALS",0) !See([ENEMY]) See("dynaheir") See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALDY2
@110
DO ~SetGlobal("X#AlDY2","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @111
== ~%ALORA_BANTER%~ @112
== ~%DYNAHEIR_BANTER%~ @113
== ~%MINSC_BANTER%~ @114
== ~%ALORA_BANTER%~ @115
== ~%MINSC_BANTER%~ @116
== ~%ALORA_BANTER%~ @117
== ~%MINSC_BANTER%~ @118
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#AlED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALED1
@119
DO ~SetGlobal("X#AlED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @120
== ~%ALORA_BANTER%~ @121
== ~%EDWIN_BANTER%~ @122
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#ALED2","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALED2
@123 
DO ~SetGlobal("X#ALED2","LOCALS",1)~
== ~%EDWIN_BANTER%~ @124
== ~%ALORA_BANTER%~ @125
== ~%EDWIN_BANTER%~ @126
== ~%ALORA_BANTER%~ @127
== ~%EDWIN_BANTER%~ @128
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#AlED3","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALED3
@129 
DO ~SetGlobal("X#AlED3","LOCALS",1)~
== ~%EDWIN_BANTER%~ @130
== ~%ALORA_BANTER%~ @131
== ~%EDWIN_BANTER%~ @132
== ~%ALORA_BANTER%~ @133
== ~%EDWIN_BANTER%~ @134
== ~%ALORA_BANTER%~ @135
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#AlED4","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALED4
@136 
DO ~SetGlobal("X#AlED4","LOCALS",1)~
== ~%EDWIN_BANTER%~ @137
== ~%ALORA_BANTER%~ @138
== ~%EDWIN_BANTER%~ @139
== ~%ALORA_BANTER%~ @140
== ~%EDWIN_BANTER%~ @141
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#AlED5","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALED5
@142 
DO ~SetGlobal("X#AlED5","LOCALS",1)~
== ~%EDWIN_BANTER%~ @143
== ~%ALORA_BANTER%~ @144
== ~%EDWIN_BANTER%~ @145
== ~%ALORA_BANTER%~ @146
== ~%EDWIN_BANTER%~ @147
== ~%ALORA_BANTER%~ @148
== ~%EDWIN_BANTER%~ @149
== ~%ALORA_BANTER%~ @150
== ~%EDWIN_BANTER%~ @151
== ~%ALORA_BANTER%~ @152
== ~%EDWIN_BANTER%~ @153
== ~%ALORA_BANTER%~ @154
== ~%EDWIN_BANTER%~ @155
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("X#AlEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALEL1
@156 
DO ~SetGlobal("X#AlEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @157
== ~%ALORA_BANTER%~ @158
== ~%ELDOTH_BANTER%~ @159
== ~%ALORA_BANTER%~ @160
== ~%ELDOTH_BANTER%~ @161
== ~%ALORA_BANTER%~ @162
== ~%ELDOTH_BANTER%~ @163
== ~%ALORA_BANTER%~ @164
== ~%ELDOTH_BANTER%~ @165
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("X#AlEL2","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALEL2
@166 
DO ~SetGlobal("X#AlEL2","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @167
== ~%ALORA_BANTER%~ @168
== ~%ELDOTH_BANTER%~ @169
== ~%ELDOTH_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @170
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @171
== ~%ELDOTH_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @172
== ~%ALORA_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @173
== ~%ELDOTH_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @174
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("X#AlFA1","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALFA1
@175 
DO ~SetGlobal("X#AlFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @176
== ~%ALORA_BANTER%~ @177
== ~%FALDORN_BANTER%~ @178
= @179
= @180
== ~%ALORA_BANTER%~ @181
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("X#AlFA2","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALFA2
@182 
DO ~SetGlobal("X#AlFA2","LOCALS",1)~
== ~%FALDORN_BANTER%~ @183
== ~%ALORA_BANTER%~ @184
== ~%FALDORN_BANTER%~ @185
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#AlGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALGA1
@186 
DO ~SetGlobal("X#AlGA1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @187
== ~%GARRICK_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @188
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @189
== ~%ALORA_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @190
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @191
== ~%ALORA_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @192
== ~%GARRICK_BANTER%~ @193
== ~%ALORA_BANTER%~ @194
== ~%GARRICK_BANTER%~ @195
== ~%ALORA_BANTER%~ @196
== ~%GARRICK_BANTER%~ @197
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#AlGA2","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALGA2
@198 
DO ~SetGlobal("X#AlGA2","LOCALS",1)~
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @199
== ~%GARRICK_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @200
== ~%GARRICK_BANTER%~ IF ~OR(3) !InParty("eldoth") !InMyArea("eldoth") StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @201
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#AlIM1","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALIM1
@202 
DO ~SetGlobal("X#AlIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @203
== ~%ALORA_BANTER%~ @204
== ~%IMOEN_BANTER%~ @205
== ~%ALORA_BANTER%~ @206
== ~%IMOEN_BANTER%~ @207
== ~%ALORA_BANTER%~ @208
== ~%IMOEN_BANTER%~ @209
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#AlIM2","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALIM2
@210 
DO ~SetGlobal("X#AlIM2","LOCALS",1)~
== ~%IMOEN_BANTER%~ @211
== ~%ALORA_BANTER%~ @212
== ~%IMOEN_BANTER%~ @213
== ~%ALORA_BANTER%~ @214
== ~%IMOEN_BANTER%~ @215
== ~%ALORA_BANTER%~ @216
== ~%IMOEN_BANTER%~ @217
== ~%ALORA_BANTER%~ @218
== ~%IMOEN_BANTER%~ @219
== ~%ALORA_BANTER%~ @220
== ~%IMOEN_BANTER%~ @221
== ~%ALORA_BANTER%~ @222
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#AlJA1","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALJA1
@223 
DO ~SetGlobal("X#AlJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @224 
== ~%ALORA_BANTER%~ @225
== ~%JAHEIRA_BANTER%~ @226 
== ~%ALORA_BANTER%~ @227
== ~%JAHEIRA_BANTER%~ @228
== ~%ALORA_BANTER%~ @229
== ~%JAHEIRA_BANTER%~ @230
== ~%ALORA_BANTER%~ @231
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @232
== ~%JAHEIRA_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @233
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @234
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#AlKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALKA1
@235 
DO ~SetGlobal("X#AlKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @236
== ~%ALORA_BANTER%~ @237
== ~%KAGAIN_BANTER%~ @238
== ~%ALORA_BANTER%~ @239
== ~%KAGAIN_BANTER%~ @240
== ~%ALORA_BANTER%~ @241
== ~%KAGAIN_BANTER%~ @242
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#AlKA1","LOCALS",1) Global("X#AlKA2","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALKA2
@243 
DO ~SetGlobal("X#AlKA2","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @238
== ~%ALORA_BANTER%~ @244
== ~%KAGAIN_BANTER%~ @245
== ~%ALORA_BANTER%~ @246
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#AlKA2","LOCALS",1) Global("X#AlKA3","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALKA3
@247 
DO ~SetGlobal("X#AlKA3","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @248
== ~%ALORA_BANTER%~ @249
== ~%KAGAIN_BANTER%~ @250
== ~%ALORA_BANTER%~ @251
== ~%KAGAIN_BANTER%~ @252
== ~%ALORA_BANTER%~ @253
== ~%KAGAIN_BANTER%~ @254
== ~%ALORA_BANTER%~ @255
== ~%KAGAIN_BANTER%~ @256
== ~%ALORA_BANTER%~ @257
== ~%KAGAIN_BANTER%~ @258
== ~%ALORA_BANTER%~ @259
== ~%KAGAIN_BANTER%~ @260
== ~%ALORA_BANTER%~ @261
== ~%KAGAIN_BANTER%~ @262
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#AlKA3","LOCALS",1) Global("X#AlKA4","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALKA4
@263 
DO ~SetGlobal("X#AlKA4","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @264
== ~%ALORA_BANTER%~ @265
== ~%KAGAIN_BANTER%~ @266
== ~%ALORA_BANTER%~ @267
== ~%KAGAIN_BANTER%~ @268
== ~%ALORA_BANTER%~ @269
== ~%KAGAIN_BANTER%~ @270
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#AlKA4","LOCALS",1) Global("X#AlKA5","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALKA5
@271 
DO ~SetGlobal("X#AlKA5","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @272
== ~%ALORA_BANTER%~ @273
== ~%KAGAIN_BANTER%~ @274
== ~%ALORA_BANTER%~ @275
== ~%KAGAIN_BANTER%~ @276
== ~%ALORA_BANTER%~ @277
== ~%KAGAIN_BANTER%~ @278
== ~%ALORA_BANTER%~ @279
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") InParty("jaheira") Global("X#AlKH1","LOCALS",0) !See([ENEMY]) See("khalid") See("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALKH1
@280
DO ~SetGlobal("X#AlKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @281
== ~%ALORA_BANTER%~ @282
== ~%KHALID_BANTER%~ @283
== ~%JAHEIRA_BANTER%~ @284
== ~%KHALID_BANTER%~ @285
== ~%JAHEIRA_BANTER%~ @286
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#AlMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALMI1
@287 
DO ~SetGlobal("X#AlMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @288
== ~%ALORA_BANTER%~ @289
== ~%MINSC_BANTER%~ @290
== ~%ALORA_BANTER%~ @291
== ~%MINSC_BANTER%~ @292
== ~%ALORA_BANTER%~ @293
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#AlMI2","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALMI2
@294 
DO ~SetGlobal("X#AlMI2","LOCALS",1)~
== ~%MINSC_BANTER%~ @295
== ~%ALORA_BANTER%~ @296
== ~%MINSC_BANTER%~ @297
== ~%ALORA_BANTER%~ @298
== ~%MINSC_BANTER%~ @299
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#AlMI3","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALMI3
@300 
DO ~SetGlobal("X#AlMI3","LOCALS",1)~
== ~%MINSC_BANTER%~ @301
== ~%ALORA_BANTER%~ @302
== ~%MINSC_BANTER%~ @303
== ~%ALORA_BANTER%~ @304
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#AlSH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID) AreaType(CITY)~ THEN ~%ALORA_BANTER%~ ALSH1
@305 
DO ~SetGlobal("X#AlSH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @306
== ~%ALORA_BANTER%~ @307
== ~%SHARTEEL_BANTER%~ @308
== ~%ALORA_BANTER%~ @309
== ~%SHARTEEL_BANTER%~ @310
== ~%ALORA_BANTER%~ @311
== ~%SHARTEEL_BANTER%~ @312
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#AlTI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%ALORA_BANTER%~ ALTI1
@313 
DO ~SetGlobal("X#AlTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @314
== ~%ALORA_BANTER%~ @315
== ~%TIAX_BANTER%~ @316
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#AlXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALXA1
@317 
DO ~SetGlobal("X#AlXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @318
== ~%ALORA_BANTER%~ @319
== ~%XAN_BANTER%~ @320
== ~%ALORA_BANTER%~ @321
== ~%XAN_BANTER%~ @322
== ~%ALORA_BANTER%~ @323
== ~%XAN_BANTER%~ @324
== ~%ALORA_BANTER%~ @325
== ~%XAN_BANTER%~ @326
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#AlXA2","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALXA2
@327 
DO ~SetGlobal("X#AlXA2","LOCALS",1)~
== ~%XAN_BANTER%~ @328
== ~%ALORA_BANTER%~ @329
== ~%XAN_BANTER%~ @330
== ~%ALORA_BANTER%~ @331
== ~%XAN_BANTER%~ @332
== ~%ALORA_BANTER%~ @333
== ~%XAN_BANTER%~ @334
== ~%ALORA_BANTER%~ @335
== ~%XAN_BANTER%~ @336
== ~%ALORA_BANTER%~ @337
== ~%XAN_BANTER%~ @338
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#AlBR1","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%ALORA_BANTER%~ ALBR1
@339
DO ~SetGlobal("X#AlBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @340
== ~%ALORA_BANTER%~ @341
== ~%BRANWEN_BANTER%~ @342
== ~%ALORA_BANTER%~ @343
== ~%BRANWEN_BANTER%~ @344
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @345
== ~%BRANWEN_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @346
== ~%ALORA_BANTER%~ @347
EXIT

