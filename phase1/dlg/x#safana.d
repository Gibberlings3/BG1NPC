/* CONTENTS */
/* INTERJECTION IN ARKUSHULE */
/* Chats with PC */
/* SACO1 - flirt on wyvern map */
/* Unscripted NPC Banter */


/* INTERJECTION IN ARKUSHULE */

INTERJECT ~%tutu_var%ARKUSH~ 5 SafArkush5
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN
@0
== ~%tutu_var%ARKUSH~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN
@1
END
IF ~~ THEN DO ~SetGlobal("X#SafArkush5","GLOBAL",1) EscapeArea()~
EXIT

INTERJECT ~%tutu_var%ARKUSH~ 8 SafArkush8
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN
@2
== ~%tutu_var%ARKUSH~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN
@3
END
IF ~~ THEN DO ~SetGlobal("X#SafArkush8","GLOBAL",1) Enemy()~
EXIT

APPEND ~%SAFANA_JOINED%~

/* Chats with PC */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SaFriend5Talk","GLOBAL",1)~ THEN BEGIN SAPC1
SAY @4 
IF ~~ THEN REPLY @5 DO ~SetGlobal("X#SaFriend5Talk","GLOBAL",2)~ GOTO SAPC1.1
IF ~~ THEN REPLY @6 DO ~SetGlobal("X#SaFriend5Talk","GLOBAL",2)~ GOTO SAPC1.2
IF ~~ THEN REPLY @7 DO ~SetGlobal("X#SaFriend5Talk","GLOBAL",2)~ GOTO SAPC1.1
END

IF ~~ THEN BEGIN SAPC1.1
SAY @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SAPC1.2
SAY @9
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SaFriendTalk","GLOBAL",1)~ THEN BEGIN SAPC2
SAY @4 
IF ~~ THEN REPLY @5 DO ~SetGlobal("X#SaFriendTalk","GLOBAL",2)~ GOTO SAPC2.1
IF ~~ THEN REPLY @6 DO ~SetGlobal("X#SaFriendTalk","GLOBAL",2)~ GOTO SAPC2.2
IF ~~ THEN REPLY @7 DO ~SetGlobal("X#SaFriendTalk","GLOBAL",2)~ GOTO SAPC2.1
IF ~~ THEN REPLY @10 DO ~SetGlobal("X#SaFriendTalk","GLOBAL",2)~ GOTO SAPC2.3
END

IF ~~ THEN BEGIN SAPC2.1
SAY @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SAPC2.2
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SAPC2.3
SAY @11
IF ~~ THEN EXIT
END

END

/* SACO1 - flirt on wyvern map */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#SafanaCoranFlirt","LOCALS",1)~ THEN ~%SAFANA_JOINED%~ SACO1
@29
DO ~SetGlobal("X#SafanaCoranFlirt","LOCALS",2)~
== ~%CORAN_BANTER%~ @30
== ~%SAFANA_BANTER%~ @31
EXIT

/* SASK1 NW Baldurs Gate by Skies house */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#SafanaSkieShopping","LOCALS",1)~ THEN ~%SAFANA_JOINED%~ SASK1
@12 
DO ~SetGlobal("X#SafanaSkieShopping","LOCALS",2)~
== ~%SKIE_BANTER%~ @13
= @14
== ~%SAFANA_BANTER%~ @15
DO ~TakePartyGold(100)~
EXIT

/* Unscripted NPC Banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("X#SAAJ1","LOCALS",0) !See([ENEMY]) InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAAJ1
@16 
DO ~SetGlobal("X#SAAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @17
== ~%SAFANA_BANTER%~ @18
== ~%AJANTIS_BANTER%~ @19
== ~%SAFANA_BANTER%~ @20
DO ~GiveItemCreate("X#SABOX","ajantis",1,0,0)~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SABR1","LOCALS",0) CombatCounter(0) InParty("branwen") !See([ENEMY]) See("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SABR1
@21 
DO ~SetGlobal("X#SABR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @22
== ~%SAFANA_BANTER%~ @23
== ~%BRANWEN_BANTER%~ @24
== ~%SAFANA_BANTER%~ @25
= @26
== ~%BRANWEN_BANTER%~ @27
== ~%SAFANA_BANTER%~ @28
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(CITY) InParty("coran") Global("X#SACO2","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SACO2
@32
DO ~SetGlobal("X#SACO2","LOCALS",1)~
== ~%CORAN_BANTER%~ @33
== ~%SAFANA_BANTER%~ @34
== ~%CORAN_BANTER%~ @35
== ~%SAFANA_BANTER%~ @36
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SACO3","LOCALS",0) CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("coran") !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SACO3
@37
DO ~SetGlobal("X#SACO3","LOCALS",1)~
== ~%CORAN_BANTER%~ @38
== ~%SAFANA_BANTER%~ @39
== ~%CORAN_BANTER%~ @40
== ~%SAFANA_BANTER%~ @41
== ~%CORAN_BANTER%~ @42
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#SADY1","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SADY1
@43
DO ~SetGlobal("X#SADY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @44
== ~%SAFANA_BANTER%~ @45
== ~%DYNAHEIR_BANTER%~ @46
== ~%SAFANA_BANTER%~ @47
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#SAED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAED1
@48
DO ~SetGlobal("X#SAED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @49
== ~%SAFANA_BANTER%~ @50
== ~%EDWIN_BANTER%~ @51
== ~%SAFANA_BANTER%~ @52
= @53
== ~%EDWIN_BANTER%~ @54
== ~%SAFANA_BANTER%~ @55
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("eldoth") InParty("skie") Global("X#SAEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAEL1
@56 
DO ~SetGlobal("X#SAEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @57
== ~%SAFANA_BANTER%~ @58
= @59
= @60
= @61
== ~%ELDOTH_BANTER%~ @62
== ~%SAFANA_BANTER%~ @63
== ~%ELDOTH_BANTER%~ @64
== ~%SAFANA_BANTER%~ @65
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("faldorn") Global("X#SAFA1","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAFA1
@66 
DO ~SetGlobal("X#SAFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @67
== ~%SAFANA_BANTER%~ @68
= @69
== ~%FALDORN_BANTER%~ @70
== ~%SAFANA_BANTER%~ @71
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#SAGA1","GLOBAL",0) !See([ENEMY]) InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAGA1
@72 
DO ~SetGlobal("X#SAGA1","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @73
== ~%SAFANA_BANTER%~ @74
== ~%GARRICK_BANTER%~ @75
= @76
= @77
== ~%SAFANA_BANTER%~ @78
== ~%GARRICK_BANTER%~ @79
= @80
== ~%SAFANA_BANTER%~ @81
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#SAGA1","GLOBAL",1) Global("X#SAGA2","GLOBAL",0) !See([ENEMY]) InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAGA2
@82 
DO ~SetGlobal("X#SAGA2","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @83
== ~%SAFANA_BANTER%~ @84
== ~%GARRICK_BANTER%~ @85
= @86
== ~%SAFANA_BANTER%~ @87
== ~%GARRICK_BANTER%~ @88
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#SAGA2","GLOBAL",1) Global("X#SAGA3","GLOBAL",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAGA3
@89 
DO ~SetGlobal("X#SAGA3","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @90
= @91
== ~%SAFANA_BANTER%~ @92
= @93
EXIT

/* has spell WHICH ADDS five percent TO IMOENs ABILITY TO OPEN LOCKS */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#SAIM1","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAIM1
@94 
DO ~SetGlobal("X#SAIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @95
== ~%SAFANA_BANTER%~ @96
DO ~ActionOverride("%IMOEN_DV%",ReallyForceSpellRES("x#imsaf",Myself))~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#SAIM2","GLOBAL",0) Global("X#SAIM1","GLOBAL",1) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAIM2
@97 
DO ~SetGlobal("X#SAIM2","GLOBAL",1)~
== ~%IMOEN_BANTER%~ @98
== ~%SAFANA_BANTER%~ @99
== ~%IMOEN_BANTER%~ @100
== ~%SAFANA_BANTER%~ @101
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") InParty("khalid") Global("X#SAKH2","LOCALS",1) Global("X#SAJA1","LOCALS",0) !See([ENEMY]) See("jaheira") See("khalid") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAJA1
@102 
DO ~SetGlobal("X#SAJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @103 
== ~%SAFANA_BANTER%~ @104
== ~%JAHEIRA_BANTER%~ @105 
== ~%SAFANA_BANTER%~ @106
== ~%JAHEIRA_BANTER%~ @107 
== ~%SAFANA_BANTER%~ @108
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#SAKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAKA1
@109 
DO ~SetGlobal("X#SAKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @110
== ~%SAFANA_BANTER%~ @111
== ~%KAGAIN_BANTER%~ @112
== ~%SAFANA_BANTER%~ @113
== ~%KAGAIN_BANTER%~ @114
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#SAKH1","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAKH1
@115 
DO ~SetGlobal("X#SAKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @116
== ~%SAFANA_BANTER%~ @117
== ~%KHALID_BANTER%~ @118
== ~%SAFANA_BANTER%~ @119
== ~%KHALID_BANTER%~ @120
== ~%SAFANA_BANTER%~ @121
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") InParty("jaheira") Global("X#SAKH2","LOCALS",0) !See([ENEMY]) See("khalid") See("jaheira") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAKH2
@122 
DO ~SetGlobal("X#SAKH2","LOCALS",1)~
== ~%KHALID_BANTER%~ @123
== ~%SAFANA_BANTER%~ @124
== ~%KHALID_BANTER%~ @125
== ~%SAFANA_BANTER%~ @126
== ~%KHALID_BANTER%~ @127
== ~%SAFANA_BANTER%~ @128
= @129
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("X#SAKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAKI1
@130
DO ~SetGlobal("X#SAKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @131
== ~%SAFANA_BANTER%~ @132
== ~%KIVAN_BANTER%~ @133
== ~%SAFANA_BANTER%~ @134
= @135
= @136
== ~%KIVAN_BANTER%~ @137
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#SAMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAMI1
@138 
DO ~SetGlobal("X#SAMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @139
= @140
== ~%SAFANA_BANTER%~ @141
== ~%MINSC_BANTER%~ @142
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") Global("X#SAMO1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAMO1
@143 
DO ~SetGlobal("X#SAMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @144
== ~%SAFANA_BANTER%~ @145
== ~%MONTARON_BANTER%~ @146
== ~%SAFANA_BANTER%~ @147
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#SASH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SASH1
@148 
DO ~SetGlobal("X#SASH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @149
== ~%SAFANA_BANTER%~ @150
= @151
== ~%SHARTEEL_BANTER%~ @152
== ~%SAFANA_BANTER%~ @153
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") InParty("eldoth") Global("X#SASK2","LOCALS",0) !See([ENEMY]) See("skie") See("eldoth") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SASK2
@154 
DO ~SetGlobal("X#SASK2","LOCALS",1)~
== ~%SKIE_BANTER%~ @155
== ~%SAFANA_BANTER%~ @156
== ~%SKIE_BANTER%~ @157
== ~%SAFANA_BANTER%~ @158
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") InParty("eldoth") Global("X#SASK3","LOCALS",0) !See([ENEMY]) See("skie") See("eldoth") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SASK3
@159 
DO ~SetGlobal("X#SASK3","LOCALS",1)~
== ~%SKIE_BANTER%~ @160
== ~%SAFANA_BANTER%~ @161
== ~%SKIE_BANTER%~ @162
== ~%SAFANA_BANTER%~ @163
= @164
== ~%SKIE_BANTER%~ @165
== ~%SAFANA_BANTER%~ @166
= @167
== ~%SKIE_BANTER%~ @168
== ~%SAFANA_BANTER%~ @169
= @170
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#SATI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SATI1
@171 
DO ~SetGlobal("X#SATI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @172
== ~%SAFANA_BANTER%~ @173
= @174
= @175
== ~%TIAX_BANTER%~ @176
== ~%SAFANA_BANTER%~ @177
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#SATI2","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SATI2
@178 
DO ~SetGlobal("X#SATI2","LOCALS",1)~
== ~%TIAX_BANTER%~ @179
= @180
== ~%SAFANA_BANTER%~ @181
== ~%TIAX_BANTER%~ @182
= @183
== ~%SAFANA_BANTER%~ @184
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#SAVI1","GLOBAL",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAVI1
@185 
DO ~SetGlobal("X#SAVI1","GLOBAL",1)~
== ~%VICONIA_BANTER%~ @186
== ~%SAFANA_BANTER%~ @187
= @188
== ~%VICONIA_BANTER%~ @189
= @190
== ~%SAFANA_BANTER%~ @191
EXIT


CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#SAXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAXA1
@192 
DO ~SetGlobal("X#SAXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @193
== ~%SAFANA_BANTER%~ @194
= @195
== ~%XAN_BANTER%~ @196
== ~%SAFANA_BANTER%~ @197
= @198
== ~%XAN_BANTER%~ @199
== ~%SAFANA_BANTER%~ @200
EXIT


CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") InParty("montaron") Global("X#SAXZ1","LOCALS",0) !See([ENEMY]) See("xzar") See("montaron") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAXZ1
@201
DO ~SetGlobal("X#SAXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @202
== ~%SAFANA_BANTER%~ @203
= @204
== ~%XZAR_BANTER%~ @205
== ~%SAFANA_BANTER%~ @206
== ~%XZAR_BANTER%~ @207
== ~%SAFANA_BANTER%~ @208
EXIT
