/* CONTENTS */
/* Friend talks */
///* Friend Talk 1 */
///* Friend talk 2 */
///* Friend talk 3 */
/* NPC Banters */


APPEND ~%KAGAIN_JOINED%~

/* Friend talks */
///* Friend Talk 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KaFriendTalk","GLOBAL",1)~ THEN BEGIN KAPC1
SAY @0 
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#KaFriendTalk","GLOBAL",2) SetGlobal("X#KaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#KaFriendTalkTime","GLOBAL",18000)~ GOTO KAPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#KaFriendTalk","GLOBAL",2) SetGlobal("X#KaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#KaFriendTalkTime","GLOBAL",18000)~ GOTO KAPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#KaFriendTalk","GLOBAL",2) SetGlobal("X#KaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#KaFriendTalkTime","GLOBAL",18000)~ GOTO KAPC1.3
END

IF ~~ THEN BEGIN KAPC1.1
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KAPC1.2
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KAPC1.3
SAY @6
IF ~~ THEN EXIT
END

///* Friend talk 2 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KaFriendTalk","GLOBAL",3)~ THEN BEGIN KAPC2
SAY @7 
IF ~~ THEN REPLY @8 DO ~SetGlobal("X#KaFriendTalk","GLOBAL",4) SetGlobal("X#KaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#KaFriendTalkTime","GLOBAL",18000)~ GOTO KAPC2.1
IF ~~ THEN REPLY @9 DO ~SetGlobal("X#KaFriendTalk","GLOBAL",4) SetGlobal("X#KaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#KaFriendTalkTime","GLOBAL",18000)~ GOTO KAPC2.2
IF ~~ THEN REPLY @10 DO ~SetGlobal("X#KaFriendTalk","GLOBAL",4) SetGlobal("X#KaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#KaFriendTalkTime","GLOBAL",18000)~ GOTO KAPC2.3
END

IF ~~ THEN BEGIN KAPC2.1
SAY @11
IF ~~ THEN REPLY @12 GOTO KAPC2.4
IF ~~ THEN REPLY @13 GOTO KAPC2.5
END

IF ~~ THEN BEGIN KAPC2.2
SAY @14
IF ~~ THEN REPLY @15 GOTO KAPC2.4
IF ~~ THEN REPLY @16 GOTO KAPC2.5
END

IF ~~ THEN BEGIN KAPC2.3
SAY @17
IF ~~ THEN REPLY @18 GOTO KAPC2.4
IF ~~ THEN REPLY @13 GOTO KAPC2.5
END

IF ~~ THEN BEGIN KAPC2.4
SAY @19
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KAPC2.5
SAY @20
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

///* Friend talk 3 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KaFriendTalk","GLOBAL",5)~ THEN BEGIN KAPC3
SAY @21 
IF ~~ THEN REPLY @22 DO ~SetGlobal("X#KaFriendTalk","GLOBAL",6) SetGlobal("X#KaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#KaFriendTalkTime","GLOBAL",18000)~ GOTO KAPC3.1
END

IF ~~ THEN BEGIN KAPC3.1
SAY @23
IF ~~ THEN REPLY @24 GOTO KAPC3.2
IF ~~ THEN REPLY @25 GOTO KAPC3.3
IF ~~ THEN REPLY @26 GOTO KAPC3.4
END

IF ~~ THEN BEGIN KAPC3.2
SAY @27
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KAPC3.3
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KAPC3.4
SAY @29
IF ~~ THEN EXIT
END

END

/* NPC Banters */
/* Dream Script */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#KagFald1","LOCALS",1)~ THEN ~%KAGAIN_JOINED%~ KAFA1
@30
DO ~SetGlobal("X#KagFald1","LOCALS",2)~
== ~%FALDORN_BANTER%~ @31
== ~%KAGAIN_BANTER%~ @32
== ~%FALDORN_BANTER%~ @33
== ~%KAGAIN_BANTER%~ @34
== ~%FALDORN_BANTER%~ @35
== ~%KAGAIN_BANTER%~ @36
DO ~RestParty()~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#KAAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAAJ1
@37 
DO ~SetGlobal("X#KAAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @38
== ~%KAGAIN_BANTER%~ @39
== ~%AJANTIS_BANTER%~ @40
== ~%KAGAIN_BANTER%~ @41
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#KAAL1","LOCALS",0)!See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(CITY)~ THEN ~%KAGAIN_BANTER%~ KAAL1
@42 
DO ~SetGlobal("X#KAAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @43
== ~%KAGAIN_BANTER%~ @44
== ~%ALORA_BANTER%~ @45
== ~%KAGAIN_BANTER%~ @46
== ~%ALORA_BANTER%~ @47
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#KABR1","LOCALS",0) !See([ENEMY]) InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KABR1
@48
DO ~SetGlobal("X#KABR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @49
== ~%KAGAIN_BANTER%~ @50
== ~%BRANWEN_BANTER%~ @51
== ~%KAGAIN_BANTER%~ @52
== ~%BRANWEN_BANTER%~ @53
== ~%KAGAIN_BANTER%~ @54
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#KACO1","LOCALS",0) !See([ENEMY]) InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KACO1
@55
DO ~SetGlobal("X#KACO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @56
== ~%KAGAIN_BANTER%~ @57
== ~%CORAN_BANTER%~ @58
== ~%KAGAIN_BANTER%~ @59
== ~%CORAN_BANTER%~ @60
== ~%KAGAIN_BANTER%~ @61
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) InParty("coran") Global("X#KACO2","LOCALS",0) !See([ENEMY]) InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KACO2
@62
DO ~SetGlobal("X#KACO2","LOCALS",1)~
== ~%CORAN_BANTER%~ @63
== ~%KAGAIN_BANTER%~ @64
== ~%CORAN_BANTER%~ @65
== ~%KAGAIN_BANTER%~ @66
== ~%CORAN_BANTER%~ @67
== ~%KAGAIN_BANTER%~ @68
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") InParty("minsc") Global("X#KADY1","LOCALS",0) !See([ENEMY]) InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KADY1
@69
DO ~SetGlobal("X#KADY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @70
== ~%KAGAIN_BANTER%~ @71
== ~%DYNAHEIR_BANTER%~ @72
== ~%KAGAIN_BANTER%~ @73
== ~%DYNAHEIR_BANTER%~ @74
== ~%KAGAIN_BANTER%~ @75
== ~%DYNAHEIR_BANTER%~ @76
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#KAED1","LOCALS",0) !See([ENEMY]) InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAED1
@77
DO ~SetGlobal("X#KAED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @78
== ~%KAGAIN_BANTER%~ @79
== ~%EDWIN_BANTER%~ @80
== ~%KAGAIN_BANTER%~ @81
== ~%EDWIN_BANTER%~ @82
== ~%KAGAIN_BANTER%~ @83
== ~%EDWIN_BANTER%~ @84
== ~%KAGAIN_BANTER%~ @85
== ~%EDWIN_BANTER%~ @86
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#KAED2","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAED2
@87
DO ~SetGlobal("X#KAED2","LOCALS",1)~
== ~%EDWIN_BANTER%~ @88
== ~%KAGAIN_BANTER%~ @89
== ~%EDWIN_BANTER%~ @90
= @91
== ~%KAGAIN_BANTER%~ @92
== ~%EDWIN_BANTER%~ @93
== ~%KAGAIN_BANTER%~ @94
== ~%EDWIN_BANTER%~ @95
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") InParty("skie") Global("X#KAEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAEL1
@96
DO ~SetGlobal("X#KAEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @97
== ~%KAGAIN_BANTER%~ @98
== ~%ELDOTH_BANTER%~ @99
== ~%KAGAIN_BANTER%~ @100
== ~%ELDOTH_BANTER%~ @101
== ~%KAGAIN_BANTER%~ @102
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#KAGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAGA1
@103 
DO ~SetGlobal("X#KAGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @104
== ~%KAGAIN_BANTER%~ @105
== ~%GARRICK_BANTER%~ @106
== ~%KAGAIN_BANTER%~ @107
== ~%GARRICK_BANTER%~ @108
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#KAIM1","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) OR(3) !Class(Player1,MAGE) !Class(Player1,BARD) !Class(Player1,CLERIC)~ THEN ~%KAGAIN_BANTER%~ KAIM1
@109 
DO ~SetGlobal("X#KAIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @110
== ~%KAGAIN_BANTER%~ @111
== ~%IMOEN_BANTER%~ @112
== ~%KAGAIN_BANTER%~ @113
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") InParty("khalid") Global("X#KAJA1","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAJA1
@114 
DO ~SetGlobal("X#KAJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @115 
== ~%KAGAIN_BANTER%~ @116
== ~%JAHEIRA_BANTER%~ @117 
== ~%KAGAIN_BANTER%~ @118
== ~%JAHEIRA_BANTER%~ @119 
== ~%KAGAIN_BANTER%~ @120
== ~%JAHEIRA_BANTER%~ @121 
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("jaheira") Global("X#KAJA2","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAJA2
@122 
DO ~SetGlobal("X#KAJA2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @123 
== ~%KAGAIN_BANTER%~ @124
== ~%JAHEIRA_BANTER%~ @125 
== ~%KAGAIN_BANTER%~ @126
== ~%JAHEIRA_BANTER%~ @127 
== ~%KAGAIN_BANTER%~ @128
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") InParty("jaheira") Global("X#KAKH1","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAKH1
@129
DO ~SetGlobal("X#KAKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @130
== ~%KAGAIN_BANTER%~ @131
== ~%KHALID_BANTER%~ @132
== ~%KAGAIN_BANTER%~ @133
== ~%KHALID_BANTER%~ @134
== ~%KAGAIN_BANTER%~ @135
== ~%KHALID_BANTER%~ @136
== ~%KAGAIN_BANTER%~ @137
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#KAKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAKI1
@138
DO ~SetGlobal("X#KAKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @139
== ~%KAGAIN_BANTER%~ @140
== ~%KIVAN_BANTER%~ @141
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) InParty("kivan") Global("X#KAKI2","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAKI2
@142
DO ~SetGlobal("X#KAKI2","LOCALS",1)~
== ~%KIVAN_BANTER%~ @143
== ~%KAGAIN_BANTER%~ @144
== ~%KIVAN_BANTER%~ @145
== ~%KAGAIN_BANTER%~ @146
== ~%KIVAN_BANTER%~ @147
== ~%KAGAIN_BANTER%~ @148
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#KAMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAMI1
@149 
DO ~SetGlobal("X#KAMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @150
== ~%KAGAIN_BANTER%~ @151
== ~%MINSC_BANTER%~ @152
== ~%KAGAIN_BANTER%~ @153
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#KAMI2","GLOBAL",0) !See([ENEMY]) InParty("minsc") See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAMI2
@154 
DO ~SetGlobal("X#KAMI2","GLOBAL",1)~
== ~%MINSC_BANTER%~ @155
== ~%KAGAIN_BANTER%~ @156
== ~%MINSC_BANTER%~ @157
== ~%KAGAIN_BANTER%~ @158
== ~%MINSC_BANTER%~ @159
== ~%KAGAIN_BANTER%~ @160
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#KAMI2","GLOBAL",1) Global("X#KAMI3","LOCALS",0) InParty("minsc") !See([ENEMY]) See("minsc") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAMI3
@161 
DO ~SetGlobal("X#KAMI3","LOCALS",1)~
== ~%MINSC_BANTER%~ @162
== ~%KAGAIN_BANTER%~ @163
== ~%MINSC_BANTER%~ @164
== ~%KAGAIN_BANTER%~ @165
== ~%MINSC_BANTER%~ @166
== ~%KAGAIN_BANTER%~ @167
== ~%MINSC_BANTER%~ @168
== ~%KAGAIN_BANTER%~ @169
== ~%MINSC_BANTER%~ @170
== ~%KAGAIN_BANTER%~ @171
= @172
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) ReputationGT("kagain",12) InParty("montaron") Global("X#KAMO1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAMO1
@173 
DO ~SetGlobal("X#KAMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @174
== ~%KAGAIN_BANTER%~ @175
== ~%MONTARON_BANTER%~ @176
== ~%KAGAIN_BANTER%~ @177
== ~%MONTARON_BANTER%~ @178
== ~%KAGAIN_BANTER%~ @179
== ~%MONTARON_BANTER%~ @180
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") Global("X#KAMO2","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAMO2
@181 
DO ~SetGlobal("X#KAMO2","LOCALS",1)~
== ~%MONTARON_BANTER%~ @182
== ~%KAGAIN_BANTER%~ @183
== ~%MONTARON_BANTER%~ @184
== ~%KAGAIN_BANTER%~ @185
== ~%MONTARON_BANTER%~ @186
== ~%KAGAIN_BANTER%~ @187
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#KAQU1","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAQU1
@188 
DO ~SetGlobal("X#KAQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @189
== ~%KAGAIN_BANTER%~ @190
== ~%QUAYLE_BANTER%~ @191
= @192
== ~%KAGAIN_BANTER%~ @193
== ~%QUAYLE_BANTER%~ @194
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#KASA1","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KASA1
@195 
DO ~SetGlobal("X#KASA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @196
== ~%KAGAIN_BANTER%~ @197
== ~%SAFANA_BANTER%~ @198
== ~%KAGAIN_BANTER%~ @199
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#KASH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KASH1
@200 
DO ~SetGlobal("X#KASH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @201
== ~%KAGAIN_BANTER%~ @202
== ~%SHARTEEL_BANTER%~ @203
== ~%KAGAIN_BANTER%~ @204
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") InParty("eldoth") Global("X#KASK1","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KASK1
@205 
DO ~SetGlobal("X#KASK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @206
== ~%KAGAIN_BANTER%~ @207
== ~%SKIE_BANTER%~ @208
== ~%KAGAIN_BANTER%~ @209
== ~%SKIE_BANTER%~ @210
== ~%KAGAIN_BANTER%~ @211
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#KATI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KATI1
@212 
DO ~SetGlobal("X#KATI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @213
== ~%KAGAIN_BANTER%~ @214
== ~%TIAX_BANTER%~ @215
== ~%KAGAIN_BANTER%~ @216
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#KATI2","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KATI2
@217 
DO ~SetGlobal("X#KATI2","LOCALS",1)~
== ~%TIAX_BANTER%~ @218
== ~%KAGAIN_BANTER%~ @219
== ~%TIAX_BANTER%~ @220
== ~%KAGAIN_BANTER%~ @221
== ~%TIAX_BANTER%~ @222
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#KAVI1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAVI1
@223 
DO ~SetGlobal("X#KAVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @224
= @225
== ~%KAGAIN_BANTER%~ @226
== ~%VICONIA_BANTER%~ @227
== ~%KAGAIN_BANTER%~ @228
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#KAXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAXA1
@229 
DO ~SetGlobal("X#KAXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @230
== ~%KAGAIN_BANTER%~ @231
== ~%XAN_BANTER%~ @232
== ~%KAGAIN_BANTER%~ @233
== ~%XAN_BANTER%~ @234
== ~%KAGAIN_BANTER%~ @235
== ~%XAN_BANTER%~ @236
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#KAXA2","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAXA2
@237 
DO ~SetGlobal("X#KAXA2","LOCALS",1)~
== ~%XAN_BANTER%~ @238
== ~%KAGAIN_BANTER%~ @239
== ~%XAN_BANTER%~ @240
== ~%KAGAIN_BANTER%~ @241
== ~%XAN_BANTER%~ @242
== ~%KAGAIN_BANTER%~ @243
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") InParty("montaron") Global("X#KAXZ1","LOCALS",0) !See([ENEMY]) See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%KAGAIN_BANTER%~ KAXZ1
@244
DO ~SetGlobal("X#KAXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @245
== ~%KAGAIN_BANTER%~ @246
== ~%XZAR_BANTER%~ @247
== ~%KAGAIN_BANTER%~ @248
== ~%XZAR_BANTER%~ @249
== ~%KAGAIN_BANTER%~ @250
EXIT
