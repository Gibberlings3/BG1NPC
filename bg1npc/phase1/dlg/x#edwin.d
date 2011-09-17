/* CONTENTS */
/* Edwin tries to talk Xan out of eating */
/* Tiax fetches Edwin food */
/* Ajantis and Helm's watchfulness */
/* Alora - people are talking */
/* Branwen - manly women */
/* Coran - beautiful women */
/* Dynaheir banter - bickering */
/* Eldoth - mastery of the bedchamber */
/* Eldoth - speaks of Skie */
/* Garrick banter */
/* Imoen banter */
/* Jaheira - Jaheira's noble birth */
/* Jaheira - on courage */
/* Kagain banter */
/* Khalid banter */
/* Kivan banter */
/* Minsc banter */
/* Montaron banter */
/* Quayle banter */
/* Safana banter */
/* Shar-Teel banter */
/* Skie banter */
/* Viconia banter */
/* Yeslick banter */

/* Dream Script */
/* Edwin tries to talk Xan out of eating */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinXanEating1","GLOBAL",1)~ THEN ~%EDWIN_JOINED%~ EDXA1
@0
DO ~SetGlobal("X#EdwinXanEating1","GLOBAL",2)~
== ~%XAN_BANTER%~ @1
== ~%EDWIN_BANTER%~ @2
== ~%XAN_BANTER%~ @3
== ~%EDWIN_BANTER%~ @4
== ~%XAN_BANTER%~ @5
== ~%EDWIN_BANTER%~ @6
DO ~RestParty()~
EXIT

/* Dream Script */
/* Tiax fetches Edwin food */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinTiaxFood1","GLOBAL",1)~ THEN ~%EDWIN_JOINED%~ EDTI1
@7 
DO ~SetGlobal("X#EdwinTiaxFood1","GLOBAL",2)~
== ~%TIAX_BANTER%~ @8
== ~%EDWIN_BANTER%~ @9
== ~%TIAX_BANTER%~ @10
== ~%EDWIN_BANTER%~ @11
== ~%TIAX_BANTER%~ @12
== ~%EDWIN_BANTER%~ @13
== ~%TIAX_BANTER%~ @14
DO ~RestParty()~
EXIT

/* Ajantis and Helm's watchfulness */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDAJ1","LOCALS",0) InParty("ajantis") !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDAJ1
@15 
DO ~SetGlobal("X#EDAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @16
== ~%EDWIN_BANTER%~ @17
== ~%AJANTIS_BANTER%~ @18
== ~%EDWIN_BANTER%~ @19
EXIT

/* Alora - people are talking */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDAL1","LOCALS",0) InParty("alora") !See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDAL1
@20 
DO ~SetGlobal("X#EDAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @21
== ~%EDWIN_BANTER%~ @22
== ~%ALORA_BANTER%~ @23
== ~%ALORA_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @24
== ~%EDWIN_BANTER%~ @25
== ~%ALORA_BANTER%~ @26
== ~%EDWIN_BANTER%~ @27
== ~%ALORA_BANTER%~ @28
== ~%EDWIN_BANTER%~ @29  
EXIT

/* Branwen - manly women */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDBR1","LOCALS",0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDBR1
@30 
DO ~SetGlobal("X#EDBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @31
== ~%EDWIN_BANTER%~ @32
== ~%BRANWEN_BANTER%~ @33
== ~%EDWIN_BANTER%~ @34
EXIT

/* Coran - beautiful women */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDCO1","LOCALS",0) InParty("coran") !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) AreaType(CITY)~ THEN ~%EDWIN_BANTER%~ EDCO1
@35
DO ~SetGlobal("X#EDCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @36
== ~%EDWIN_BANTER%~ @37
== ~%CORAN_BANTER%~ @38
== ~%EDWIN_BANTER%~ @39
== ~%CORAN_BANTER%~ @40
== ~%EDWIN_BANTER%~ @41
== ~%CORAN_BANTER%~ @42
== ~%EDWIN_BANTER%~ @43
EXIT

/* Dynaheir banter - bickering */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDDY1","LOCALS",0) InParty("dynaheir") !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDDY1
@44
DO ~SetGlobal("X#EDDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @45
== ~%EDWIN_BANTER%~ @46
== ~%DYNAHEIR_BANTER%~ @47
== ~%EDWIN_BANTER%~ @48
== ~%DYNAHEIR_BANTER%~ @49
== ~%EDWIN_BANTER%~ @50
== ~%DYNAHEIR_BANTER%~ @51
== ~%EDWIN_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @52
EXIT

/* Eldoth - mastery of the bedchamber */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDEL1","LOCALS",0) !See([ENEMY]) InParty("eldoth") See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDEL1
@53 
DO ~SetGlobal("X#EDEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @54
== ~%EDWIN_BANTER%~ @55
== ~%ELDOTH_BANTER%~ @56
== ~%EDWIN_BANTER%~ @57
== ~%ELDOTH_BANTER%~ @58
== ~%EDWIN_BANTER%~ @59
== ~%ELDOTH_BANTER%~ @60
EXIT

/* Eldoth - speaks of Skie */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDEL2","LOCALS",0) !See([ENEMY]) InParty("eldoth") See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) InParty("skie") See("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDEL2
@61 
DO ~SetGlobal("X#EDEL2","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @62
== ~%EDWIN_BANTER%~ @63
== ~%ELDOTH_BANTER%~ @64
== ~%EDWIN_BANTER%~ @65
== ~%ELDOTH_BANTER%~ @66
EXIT

/* Garrick banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDGA1","LOCALS",0) !See([ENEMY]) InParty("garrick") See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDGA1
@67 
DO ~SetGlobal("X#EDGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @68
== ~%EDWIN_BANTER%~ @69
== ~%GARRICK_BANTER%~ @70
== ~%EDWIN_BANTER%~ @71
EXIT

/* Imoen banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDIM1","LOCALS",0) !See([ENEMY]) InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDIM1
@72 
DO ~SetGlobal("X#EDIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @73
== ~%EDWIN_BANTER%~ @74
== ~%IMOEN_BANTER%~ @75
== ~%EDWIN_BANTER%~ @76
== ~%IMOEN_BANTER%~ @77
EXIT

/* Jaheira - Jaheira's noble birth */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDJA1","LOCALS",0) !See([ENEMY]) InParty("jaheira") See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDJA1
@78 
DO ~SetGlobal("X#EDJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @79
== ~%EDWIN_BANTER%~ @80
== ~%JAHEIRA_BANTER%~ @81
== ~%EDWIN_BANTER%~ @82
EXIT

/* Jaheira - on courage */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) !See([ENEMY]) InParty("jaheira") See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("X#EDJA2","LOCALS",0)~ THEN ~%EDWIN_BANTER%~ EDJA2
@83 
DO ~SetGlobal("X#EDJA2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @84
== ~%EDWIN_BANTER%~ @85
EXIT

/* Kagain banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) !See([ENEMY]) InParty("kagain") See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) Global("X#EDKA1","LOCALS",0)~ THEN ~%EDWIN_BANTER%~ EDKA1
@86 
DO ~SetGlobal("X#EDKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @87
== ~%EDWIN_BANTER%~ @88
== ~%KAGAIN_BANTER%~ @89
== ~%EDWIN_BANTER%~ @90
== ~%KAGAIN_BANTER%~ @91
== ~%EDWIN_BANTER%~ @92
EXIT

/* Khalid banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDKH1","LOCALS",0) !See([ENEMY]) InParty("khalid") See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDKH1
@93 
DO ~SetGlobal("X#EDKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @94
== ~%EDWIN_BANTER%~ @95
== ~%KHALID_BANTER%~ @96
== ~%EDWIN_BANTER%~ @97
== ~%KHALID_BANTER%~ @98
== ~%EDWIN_BANTER%~ @99
EXIT

/* Kivan banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDKI1","LOCALS",0) !See([ENEMY]) InParty("kivan") See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDKI1
@100 
DO ~SetGlobal("X#EDKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @101
== ~%EDWIN_BANTER%~ @102
== ~%KIVAN_BANTER%~ @103
== ~%EDWIN_BANTER%~ @104
== ~%KIVAN_BANTER%~ @105
== ~%EDWIN_BANTER%~ @106
== ~%KIVAN_BANTER%~ @107
== ~%EDWIN_BANTER%~ @108
== ~%KIVAN_BANTER%~ @109
== ~%EDWIN_BANTER%~ @110
EXIT

/* Minsc banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDMI1","LOCALS",0) !See([ENEMY]) InParty("minsc") See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDMI1
@111 
DO ~SetGlobal("X#EDMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @112
== ~%EDWIN_BANTER%~ @113
== ~%MINSC_BANTER%~ @114
== ~%EDWIN_BANTER%~ @115
== ~%MINSC_BANTER%~ @116
== ~%EDWIN_BANTER%~ @117
EXIT

/* Montaron banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDMO1","LOCALS",0) !See([ENEMY]) InParty("montaron") See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) InParty("xzar") See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDMO1
@118 
DO ~SetGlobal("X#EDMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @119
== ~%EDWIN_BANTER%~ @120
== ~%MONTARON_BANTER%~ @121
== ~%EDWIN_BANTER%~ @122
== ~%MONTARON_BANTER%~ @123
== ~%EDWIN_BANTER%~ @124
== ~%MONTARON_BANTER%~ @125
EXIT

/* Quayle banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDQU1","LOCALS",0) !See([ENEMY]) InParty("quayle") See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDQU1
@126 
DO ~SetGlobal("X#EDQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @127
== ~%EDWIN_BANTER%~ @128
== ~%QUAYLE_BANTER%~ @129
== ~%EDWIN_BANTER%~ @130
== ~%QUAYLE_BANTER%~ @131
== ~%EDWIN_BANTER%~ @132
EXIT

/* Safana banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDSA1","LOCALS",0) !See([ENEMY]) InParty("safana") See("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDSA1
@133 
DO ~SetGlobal("X#EDSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @134
== ~%EDWIN_BANTER%~ @135
== ~%SAFANA_BANTER%~ @136
== ~%EDWIN_BANTER%~ @137
== ~%SAFANA_BANTER%~ @138
== ~%EDWIN_BANTER%~ @139
== ~%SAFANA_BANTER%~ @140
== ~%EDWIN_BANTER%~ @141
== ~%SAFANA_BANTER%~ @142
EXIT

/* Shar-Teel banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDSH1","LOCALS",0) !See([ENEMY]) InParty("sharteel") See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDSH1
@143 
DO ~SetGlobal("X#EDSH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @144
== ~%EDWIN_BANTER%~ @145
== ~%SHARTEEL_BANTER%~ @146
== ~%EDWIN_BANTER%~ @147
== ~%SHARTEEL_BANTER%~ @148
== ~%EDWIN_BANTER%~ @149
== ~%SHARTEEL_BANTER%~ @150
== ~%EDWIN_BANTER%~ @151
== ~%SHARTEEL_BANTER%~ @152
== ~%EDWIN_BANTER%~ @153
EXIT

/* Skie banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDSK1","LOCALS",0) !See([ENEMY]) InParty("skie") See("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDSK1
@154 
DO ~SetGlobal("X#EDSK1","LOCALS",1)~
== ~%SKIE_BANTER%~ @155
== ~%EDWIN_BANTER%~ @156
== ~%SKIE_BANTER%~ @157
== ~%EDWIN_BANTER%~ @158
== ~%SKIE_BANTER%~ @159
== ~%EDWIN_BANTER%~ @160
== ~%SKIE_BANTER%~ @161
== ~%EDWIN_BANTER%~ @162
== ~%SKIE_BANTER%~ @163
== ~%EDWIN_BANTER%~ @164
== ~%SKIE_BANTER%~ @165
== ~%EDWIN_BANTER%~ @166
EXIT

/* Viconia banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDVI1","LOCALS",0) !See([ENEMY]) InParty("viconia") See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDVI1
@167 
DO ~SetGlobal("X#EDVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @168
== ~%EDWIN_BANTER%~ @169
== ~%VICONIA_BANTER%~ @170
== ~%EDWIN_BANTER%~ @171
== ~%VICONIA_BANTER%~ @172
== ~%EDWIN_BANTER%~ @173
EXIT

/* Yeslick banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#EDYE1","LOCALS",0) !See([ENEMY]) InParty("yeslick") See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDYE1
@174
DO ~SetGlobal("X#EDYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @175
== ~%EDWIN_BANTER%~ @176
== ~%YESLICK_BANTER%~ @177
== ~%EDWIN_BANTER%~ @178
== ~%YESLICK_BANTER%~ @179
== ~%EDWIN_BANTER%~ @180
== ~%YESLICK_BANTER%~ @181
== ~%EDWIN_BANTER%~ @182
EXIT
