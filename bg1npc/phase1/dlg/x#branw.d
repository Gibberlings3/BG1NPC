/* PC talk Script */
APPEND ~%BRANWEN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("P#BrFriendTalk","GLOBAL",1)~ THEN BEGIN PCChat1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("P#BrFriendTalk","GLOBAL",2) RealSetGlobalTimer("P#BrFriendTalkTime","GLOBAL",18000)~ GOTO PCChat1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("P#BrFriendTalk","GLOBAL",2) RealSetGlobalTimer("P#BrFriendTalkTime","GLOBAL",18000)~ GOTO PCChat1.2
END

IF ~~ THEN BEGIN PCChat1.1
SAY @3
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCChat1.2
SAY @4
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("P#BrFriendTalk","GLOBAL",3)~ THEN BEGIN PCChat2
SAY @5 
IF ~~ THEN REPLY @6 DO ~SetGlobal("P#BrFriendTalk","GLOBAL",4) RealSetGlobalTimer("P#BrFriendTalkTime","GLOBAL",18000)~ GOTO PCChat2.1
IF ~~ THEN REPLY @7 DO ~SetGlobal("P#BrFriendTalk","GLOBAL",4) RealSetGlobalTimer("P#BrFriendTalkTime","GLOBAL",18000)~ GOTO PCChat2.2
END

IF ~~ THEN BEGIN PCChat2.2
SAY @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCChat2.1
SAY @9
= @10
IF ~~ THEN REPLY @11 GOTO PCChat2.3
IF ~~ THEN REPLY @12 GOTO PCChat2.4
IF ~~ THEN REPLY @13 GOTO PCChat2.5
IF ~~ THEN REPLY @14 GOTO PCChat2.6
END

IF ~~ THEN BEGIN PCChat2.3
SAY @15
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCChat2.4
SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCChat2.5
SAY @17 
= @18
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCChat2.6
SAY @19
= @20
IF ~~ THEN REPLY @21 GOTO PCChat2.7
IF ~~ THEN REPLY @22 GOTO PCChat2.8
IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN REPLY @23 GOTO PCChat2.9
IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN REPLY @24 GOTO PCChat2.9
END

IF ~~ THEN BEGIN PCChat2.7
SAY @25
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCChat2.8
SAY @26
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCChat2.9
SAY @27
IF ~~ THEN EXIT
END

END

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("P#Branwen_Ajantis1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Ajantis1Chain
@28 DO ~SetGlobal("P#Branwen_Ajantis1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @29
== ~%BRANWEN_BANTER%~ @30
== ~%AJANTIS_BANTER%~ @31
== ~%BRANWEN_BANTER%~ @32
== ~%AJANTIS_BANTER%~ @33
== ~%BRANWEN_BANTER%~ @34
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @35
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @36
== ~%BRANWEN_BANTER%~ @37
== ~%AJANTIS_BANTER%~ @38
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("P#Branwen_Ajantis2","LOCALS",0) CombatCounter(0) InParty("ajantis") !See([ENEMY]) See("ajantis") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Ajantis2Chain
@39 DO ~SetGlobal("P#Branwen_Ajantis2","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @40
== ~%BRANWEN_BANTER%~ @41
== ~%AJANTIS_BANTER%~ @42
== ~%BRANWEN_BANTER%~ @43
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("P#Branwen_Alora1","LOCALS",0) CombatCounter(0) InParty("alora") !See([ENEMY]) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Alora1Chain
@44 DO ~SetGlobal("P#Branwen_Alora1","LOCALS",1)~
== ~%ALORA_BANTER%~ @45
== ~%BRANWEN_BANTER%~ @46
== ~%ALORA_BANTER%~ @47
== ~%BRANWEN_BANTER%~ @48
== ~%ALORA_BANTER%~ @49
== ~%ALORA_BANTER%~ @50
== ~%BRANWEN_BANTER%~ @51
== ~%ALORA_BANTER%~ @52
== ~%BRANWEN_BANTER%~ @53
== ~%ALORA_BANTER%~ @54
== ~%BRANWEN_BANTER%~ @55
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("P#Branwen_Alora2","LOCALS",0) CombatCounter(0) InParty("alora") !See([ENEMY]) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Alora2Chain
@56 DO ~SetGlobal("P#Branwen_Alora2","LOCALS",1)~
== ~%ALORA_BANTER%~ @57
== ~%BRANWEN_BANTER%~ @58
== ~%ALORA_BANTER%~ @59
== ~%BRANWEN_BANTER%~ @60
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("P#Branwen_Coran1","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Coran1Chain
@61 DO ~SetGlobal("P#Branwen_Coran1","LOCALS",1)~
== ~%CORAN_BANTER%~ @62
== ~%BRANWEN_BANTER%~ @63
== ~%CORAN_BANTER%~ @64
== ~%BRANWEN_BANTER%~ @65
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") InParty("minsc") Global("P#Branwen_Dynaheir1","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Dyna1Chain
@66 DO ~SetGlobal("P#Branwen_Dynaheir1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @67
== ~%BRANWEN_BANTER%~ @68
== ~%DYNAHEIR_BANTER%~ @69
== ~%DYNAHEIR_BANTER%~ @70
== ~%BRANWEN_BANTER%~ @71
== ~%DYNAHEIR_BANTER%~ @72
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("P#Branwen_Dynaheir2","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Dyna2Chain
@73 
DO ~SetGlobal("P#Branwen_Dynaheir2","LOCALS",1)~
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @74
== ~%DYNAHEIR_BANTER%~ @75
== ~%BRANWEN_BANTER%~ @76
== ~%DYNAHEIR_BANTER%~ @77
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("P#Branwen_Edwin1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID) LevelGT("edwin",4)~ THEN ~%BRANWEN_BANTER%~ Edwin1Chain
@78 DO ~SetGlobal("P#Branwen_Edwin1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @79
== ~%BRANWEN_BANTER%~ @80
== ~%BRANWEN_BANTER%~ @81
== ~%EDWIN_BANTER%~ @82
== ~%BRANWEN_BANTER%~ @83
== ~%EDWIN_BANTER%~ @84
== ~%BRANWEN_BANTER%~ @85
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("P#Branwen_Edwin2","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Edwin2Chain
@86 DO ~SetGlobal("P#Branwen_Edwin2","LOCALS",1)~
== ~%EDWIN_BANTER%~ @87
== ~%BRANWEN_BANTER%~ @88
== ~%EDWIN_BANTER%~ @89
== ~%BRANWEN_BANTER%~ @90
== ~%EDWIN_BANTER%~ @91
== ~%BRANWEN_BANTER%~ @92
== ~%EDWIN_BANTER%~ @93
== ~%BRANWEN_BANTER%~ @94
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("P#Branwen_Eldoth1","LOCALS",0) !See([ENEMY]) See("eldoth") !Dead("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Eldoth1Chain
@95 DO ~SetGlobal("P#Branwen_Eldoth1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @96
== ~%BRANWEN_BANTER%~ @97
== ~%ELDOTH_BANTER%~ @98
== ~%BRANWEN_BANTER%~ @99
== ~%ELDOTH_BANTER%~ @100
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") Global("P#Branwen_Eldoth2","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Eldoth2Chain
@101 DO ~SetGlobal("P#Branwen_Eldoth2","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @102
== ~%BRANWEN_BANTER%~ @103
== ~%ELDOTH_BANTER%~ @104
== ~%BRANWEN_BANTER%~ @105
== ~%ELDOTH_BANTER%~ @106
== ~%BRANWEN_BANTER%~ @107
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("P#Branwen_Faldorn1","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Faldorn1Chain
@108 DO ~SetGlobal("P#Branwen_Faldorn1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @109
== ~%BRANWEN_BANTER%~ @110
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("P#Branwen_Faldorn2","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Faldorn2Chain
@111 DO ~SetGlobal("P#Branwen_Faldorn2","LOCALS",1)~
== ~%FALDORN_BANTER%~ @112
== ~%BRANWEN_BANTER%~ @113
== ~%FALDORN_BANTER%~ @114
== ~%BRANWEN_BANTER%~ @115
== ~%FALDORN_BANTER%~ @116
== ~%BRANWEN_BANTER%~ @117
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("P#Branwen_Garrick1","LOCALS",0) !See([ENEMY]) InMyArea("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Garrick1Chain
@118 DO ~SetGlobal("P#Branwen_Garrick1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @119
== ~%GARRICK_BANTER%~ @120
== ~%BRANWEN_BANTER%~ @121
== ~%GARRICK_BANTER%~ @122
== ~%BRANWEN_BANTER%~ @123
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("P#Branwen_Garrick2","LOCALS",0) !See([ENEMY]) InMyArea("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Garrick2Chain
@124 DO ~SetGlobal("P#Branwen_Garrick2","LOCALS",1)~
== ~%GARRICK_BANTER%~ @125
== ~%GARRICK_BANTER%~ @126
== ~%BRANWEN_BANTER%~ @127
== ~%GARRICK_BANTER%~ @128
== ~%GARRICK_BANTER%~ @129
== ~%BRANWEN_BANTER%~ @130
== ~%GARRICK_BANTER%~ @131
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("P#Branwen_Imoen1","LOCALS",0) !See([ENEMY]) InMyArea("%IMOEN_DV%")  !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Imoen1Chain
@132 DO ~SetGlobal("P#Branwen_Imoen1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @133
== ~%BRANWEN_BANTER%~ @134
== ~%IMOEN_BANTER%~ @135
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("P#Branwen_Jaheira1","LOCALS",0) !See([ENEMY]) InMyArea("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Jaheira1Chain
@136 DO ~SetGlobal("P#Branwen_Jaheira1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @137
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @138
== ~%JAHEIRA_BANTER%~ @139
== ~%JAHEIRA_BANTER%~ @140
== ~%BRANWEN_BANTER%~ @141
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("P#Branwen_Jaheira2","LOCALS",0) !See([ENEMY]) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Jaheira2Chain
@142 DO ~SetGlobal("P#Branwen_Jaheira2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @143
== ~%BRANWEN_BANTER%~ @144
== ~%JAHEIRA_BANTER%~ @145
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("P#Branwen_Kagain1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Kagain1Chain
@146 DO ~SetGlobal("P#Branwen_Kagain1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @147
== ~%KAGAIN_BANTER%~ @148
== ~%BRANWEN_BANTER%~ @149
== ~%KAGAIN_BANTER%~ @150
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("P#Branwen_Kagain2","LOCALS",0) CombatCounter(0) InParty("kagain") !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Kagain2Chain
@151 DO ~SetGlobal("P#Branwen_Kagain2","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @152
== ~%BRANWEN_BANTER%~ @153
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @154
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @155
== ~%KAGAIN_BANTER%~ @156
== ~%BRANWEN_BANTER%~ @157
== ~%KAGAIN_BANTER%~ @158
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("P#Branwen_Khalid1","LOCALS",0) CombatCounter(0) InParty("khalid") !See([ENEMY]) InMyArea("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Khalid1Chain
@159 DO ~SetGlobal("P#Branwen_Khalid1","LOCALS",1)~
== ~%KHALID_BANTER%~ @160
== ~%BRANWEN_BANTER%~ @161
== ~%KHALID_BANTER%~ @162
== ~%KHALID_BANTER%~ @163
== ~%BRANWEN_BANTER%~ @164
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("P#Branwen_Khalid2","LOCALS",0) !See([ENEMY]) InMyArea("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Khalid2Chain
@165 DO ~SetGlobal("P#Branwen_Khalid2","LOCALS",1)~
== ~%KHALID_BANTER%~ @166
== ~%BRANWEN_BANTER%~ @167
== ~%KHALID_BANTER%~ @33
== ~%BRANWEN_BANTER%~ @168
== ~%KHALID_BANTER%~ @169
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @170
== ~%KHALID_BANTER%~ @171
== ~%BRANWEN_BANTER%~ @172
== ~%KHALID_BANTER%~ @173
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("P#Branwen_Kivan1","LOCALS",0) !See([ENEMY]) InMyArea("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Kivan1Chain
@174 
DO ~SetGlobal("P#Branwen_Kivan1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @175
== ~%BRANWEN_BANTER%~ @176
== ~%KIVAN_BANTER%~ @177
== ~%BRANWEN_BANTER%~ @178
== ~%KIVAN_BANTER%~ @179
== ~%BRANWEN_BANTER%~ @180
== ~%BRANWEN_BANTER%~ @181
== ~%KIVAN_BANTER%~ @182
== ~%BRANWEN_BANTER%~ @183
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("P#Branwen_Kivan2","LOCALS",0) !See([ENEMY]) InMyArea("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Kivan2Chain
@184 DO ~SetGlobal("P#Branwen_Kivan2","LOCALS",1)~
== ~%KIVAN_BANTER%~ @185
== ~%BRANWEN_BANTER%~ @186
== ~%KIVAN_BANTER%~ @187
== ~%BRANWEN_BANTER%~ @188
== ~%KIVAN_BANTER%~ @189
== ~%BRANWEN_BANTER%~ @190
== ~%KIVAN_BANTER%~ @191
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @192
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @193
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @194

EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("P#Branwen_Minsc1","LOCALS",0) CombatCounter(0) InParty("minsc") !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Minsc1Chain
@195 DO ~SetGlobal("P#Branwen_Minsc1","LOCALS",1)~
== ~%MINSC_BANTER%~ @196
== ~%BRANWEN_BANTER%~ @197
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @198
== ~%MINSC_BANTER%~ @199
== ~%BRANWEN_BANTER%~ @200
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") Global("P#Branwen_Montaron1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Monta1Chain
@201 DO ~SetGlobal("P#Branwen_Montaron1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @202
== ~%BRANWEN_BANTER%~ @203
== ~%MONTARON_BANTER%~ @204
== ~%BRANWEN_BANTER%~ @205
== ~%MONTARON_BANTER%~ @206
== ~%BRANWEN_BANTER%~ @207
== ~%MONTARON_BANTER%~ @208
== ~%BRANWEN_BANTER%~ @209
== ~%MONTARON_BANTER%~ @210
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("P#Branwen_Quayle1","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Quayle1Chain
@211 DO ~SetGlobal("P#Branwen_Quayle1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @212
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @213
== ~%BRANWEN_BANTER%~ @214
== ~%QUAYLE_BANTER%~ @215
== ~%BRANWEN_BANTER%~ @216
== ~%QUAYLE_BANTER%~ @217
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("P#Branwen_Quayle2","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Quayle2Chain
@218 DO ~SetGlobal("P#Branwen_Quayle2","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @219
== ~%BRANWEN_BANTER%~ @220
== ~%QUAYLE_BANTER%~ @221
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("P#Branwen_Safana1","GLOBAL",0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID) !AreaType(CITY)~ THEN ~%BRANWEN_BANTER%~ Safana1Chain
@222 DO ~SetGlobal("P#Branwen_Safana1","GLOBAL",1)~
== ~%SAFANA_BANTER%~ @223
== ~%BRANWEN_BANTER%~ @224
== ~%SAFANA_BANTER%~ @225
== ~%BRANWEN_BANTER%~ @226
== ~%SAFANA_BANTER%~ @227
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("P#Branwen_Safana1","GLOBAL",1) Global("P#Branwen_SafanaSex","LOCALS",0) InParty("safana") OR(2) Global("P#BranMatch","GLOBAL",0) Global("P#BranwenRomanceActive","GLOBAL",3) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ BranwenNookieChain
@228 DO ~SetGlobal("P#Branwen_SafanaSex","LOCALS",1)~
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @229
== ~%BRANWEN_BANTER%~ @230
== ~%SAFANA_BANTER%~ @231
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !InParty("skie")~ THEN @232
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("P#Branwen_Safana2","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Safana2Chain
@233 DO ~SetGlobal("P#Branwen_Safana2","LOCALS",1)~
== ~%SAFANA_BANTER%~ @234
== ~%BRANWEN_BANTER%~ @235
== ~%SAFANA_BANTER%~ @236
== ~%BRANWEN_BANTER%~ @237
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("P#Branwen_SharTeel1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Shar1Chain
@238 DO ~SetGlobal("P#Branwen_SharTeel1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @239
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @240
== ~%BRANWEN_BANTER%~ @241
== ~%SHARTEEL_BANTER%~ @242
== ~%BRANWEN_BANTER%~ @243
== ~%SHARTEEL_BANTER%~ @244
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("P#Branwen_SharTeel2","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Shar2Chain
@245 DO ~SetGlobal("P#Branwen_SharTeel2","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @246
== ~%BRANWEN_BANTER%~ @247
== ~%SHARTEEL_BANTER%~ @248
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @249
== ~%BRANWEN_BANTER%~ @250
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("P#Branwen_SharTeel3","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Shar3Chain
@251 DO ~SetGlobal("P#Branwen_SharTeel3","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @252
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @253
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @254
== ~%SHARTEEL_BANTER%~ IF ~OR(2) InParty("minsc") InParty("ajantis") OR(2) !Dead("minsc") !Dead("ajantis")~ THEN
@255
== ~%BRANWEN_BANTER%~ @256
== ~%SHARTEEL_BANTER%~ @257
== ~%SHARTEEL_BANTER%~ @258
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") Global("P#Branwen_Skie1","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Skie1Chain
@259 DO ~SetGlobal("P#Branwen_Skie1","LOCALS",1)~
== ~%SKIE_BANTER%~ @260
== ~%BRANWEN_BANTER%~ @261
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @262
== ~%SKIE_BANTER%~ @263
== ~%BRANWEN_BANTER%~ @264
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") Global("P#Branwen_Skie2","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Skie2Chain
@265 DO ~SetGlobal("P#Branwen_Skie2","LOCALS",1)~
== ~%SKIE_BANTER%~ @266
== ~%BRANWEN_BANTER%~ @267
== ~%SKIE_BANTER%~ @268
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @269
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("P#Branwen_Tiax1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Tiax1Chain
@270 DO ~SetGlobal("P#Branwen_Tiax1","LOCALS",1)~
== ~%TIAX_BANTER%~ @271
== ~%BRANWEN_BANTER%~ @272
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @273
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @274
== ~%TIAX_BANTER%~ @275
== ~%BRANWEN_BANTER%~ @276
== ~%TIAX_BANTER%~ @277
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("P#Branwen_Tiax2","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Tiax2Chain
@278 DO ~SetGlobal("P#Branwen_Tiax2","LOCALS",1)~
== ~%TIAX_BANTER%~ @279
== ~%BRANWEN_BANTER%~ @280
== ~%TIAX_BANTER%~ @281
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @282
== ~%BRANWEN_BANTER%~ @283
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @284
== ~%BRANWEN_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @285
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("P#Branwen_Viccy1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Viconia1Chain
@286 DO ~SetGlobal("P#Branwen_Viccy1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @287
== ~%BRANWEN_BANTER%~ @288
== ~%VICONIA_BANTER%~ @289
== ~%BRANWEN_BANTER%~ @290
== ~%VICONIA_BANTER%~ @291
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("P#Branwen_Xan1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Xan1Chain
@292 DO ~SetGlobal("P#Branwen_Xan1","LOCALS",1)~
== ~%XAN_BANTER%~ @293
== ~%BRANWEN_BANTER%~ @294
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @295
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @296
== ~%BRANWEN_BANTER%~ @297
== ~%XAN_BANTER%~ @298
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("P#Branwen_Xan2","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Xan2Chain
@299 DO ~SetGlobal("P#Branwen_Xan2","LOCALS",1)~
== ~%XAN_BANTER%~ @300
== ~%BRANWEN_BANTER%~ @301
== ~%XAN_BANTER%~ @302
== ~%BRANWEN_BANTER%~ @303
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") Global("P#Branwen_Xzar1","LOCALS",0) !See([ENEMY]) See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Xzar1Chain
@304 DO ~SetGlobal("P#Branwen_Xzar1","LOCALS",1)~
== ~%XZAR_BANTER%~ @305
== ~%BRANWEN_BANTER%~ @306
== ~%XZAR_BANTER%~ @307
== ~%BRANWEN_BANTER%~ @308
== ~%XZAR_BANTER%~ @309
== ~%BRANWEN_BANTER%~ @310
== ~%XZAR_BANTER%~ @311
== ~%BRANWEN_BANTER%~ @312
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") Global("P#Branwen_Xzar2","LOCALS",0) !See([ENEMY]) See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Xzar2Chain
@313 DO ~SetGlobal("P#Branwen_Xzar2","LOCALS",1)~
== ~%XZAR_BANTER%~ @314
== ~%BRANWEN_BANTER%~ @315
== ~%XZAR_BANTER%~ @316
== ~%BRANWEN_BANTER%~ @317
== ~%XZAR_BANTER%~ @318
== ~%BRANWEN_BANTER%~ @319
== ~%XZAR_BANTER%~ @320
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("P#Branwen_Yeslick1","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Yeslick1Chain
@321 DO ~SetGlobal("P#Branwen_Yeslick1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @322
== ~%BRANWEN_BANTER%~ @323
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) HPPercentLT("yeslick",60) InParty("yeslick") Global("P#Branwen_Yeslick2","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck(Player1,CD_STATE_NOTVALID) !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ Yeslick2Chain
@324 DO ~SetGlobal("P#Branwen_Yeslick2","LOCALS",1)~
== ~%YESLICK_BANTER%~ @325
== ~%BRANWEN_BANTER%~ @326
EXIT
