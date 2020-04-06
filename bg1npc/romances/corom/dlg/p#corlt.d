APPEND ~%CORAN_JOINED%~

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",2)~ THEN BEGIN CoLoveTalk1
SAY @0
IF ~~ DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + others
END

IF ~~ CO3PCTALK
SAY @1
++ @2 DO ~SetGlobal("P#CoPC3","GLOBAL",1)~ + COPC3.1
++ @3 DO ~SetGlobal("P#CoPC3","GLOBAL",1)~ + COPC3.2
++ @4 DO ~SetGlobal("P#CoPC3","GLOBAL",1)~ + COPC3.3
END

IF ~~ COPC3.1
SAY @5
++ @6 + COPC3.4
++ @7 + COPC3.2
END

IF ~~ COPC3.2
SAY @8
IF ~OR(3) !InParty("quayle") !InMyArea("quayle") StateCheck("quayle",CD_STATE_NOTVALID)~ THEN + COPC3.2NOQUAYLE
IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN + COPC3.2QUAYLE
END

IF ~~ COPC3.2NOQUAYLE
SAY @9
++ @10 + COPC3.5
++ @11 + COPC3.6
++ @12 + COPC3.6
END

IF ~~ THEN BEGIN COPC3.2.1QUAYLE
  SAY @13
++ @10 + COPC3.5
++ @11 + COPC3.6
++ @12 + COPC3.6
END

IF ~~ COPC3.4
SAY @14
IF ~~ THEN EXIT
END

IF ~~ COPC3.5
SAY @15
IF ~~ THEN EXIT
END

IF ~~ COPC3.6
SAY @16
IF ~~ THEN EXIT
END

IF ~~ COPC3.3
SAY @17
++ @18 + COPC3.7
++ @19 + COPC3.8
++ @20 + COPC3.4
END

IF ~~ COPC3.7
SAY @21
++ @22 + COPC3.2
++ @23 + COPC3.2
++ @24 + COPC3.4
END

IF ~~ COPC3.8
SAY @25
+ ~Race(Player1,ELF)~ + @26 + COPC3.2
+ ~Race(Player1,ELF)~ + @27 + COPC3.4
++ @28 + COPC3.2
++ @29 + COPC3.2
++ @30 + COPC3.9
END

IF ~~ COPC3.9
SAY @31
IF ~~ THEN EXIT
END
END

CHAIN3 ~%CORAN_JOINED%~ others
@32
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @33
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @34
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @35
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @36
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @37
END ~%CORAN_JOINED%~ CO3PCTALK

CHAIN3 ~%CORAN_JOINED%~ COPC3.2QUAYLE
~~
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @39
== ~%CORAN_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @40
END ~%CORAN_JOINED%~ COPC3.2.1QUAYLE

APPEND ~%CORAN_JOINED%~

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",4)~ THEN BEGIN CoLoveTalk2
SAY @41 
++ @42 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COPC5.1
++ @43 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COPC5.2
++ @44 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COPC5.3
++ @45 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COPC5.4
END

IF ~~ COPC5.1
SAY @46
++ @47 + COPC5.5
++ @48 + COPC5.5
END

IF ~~ COPC5.2
SAY @49
IF ~~ THEN EXIT
END

IF ~~ COPC5.3
SAY @50
++ @47 + COPC5.5
++ @48 + COPC5.5
++ @51 + COPC5.4
END

IF ~~ COPC5.4
SAY @52
IF ~~ THEN EXIT
END

IF ~~ COPC5.5
SAY @53
++ @54 + COPC5.6
++ @55 + COPC5.7
++ @56 + COPC5.8
END

IF ~~ COPC5.6
SAY @57
++ @58 + COPC5.9
++ @59 + COPC5.10
++ @60 + COPC5.11
END


IF ~~ COPC5.8
SAY @61
IF ~~ THEN EXIT
END

IF ~~ COPC5.9
SAY @62
IF ~~ THEN EXIT
END

IF ~~ COPC5.10
SAY @63
IF ~~ THEN EXIT
END

IF ~~ COPC5.7
SAY @64
++ @58 + COPC5.9
++ @59 + COPC5.10
++ @60 + COPC5.11
END

IF ~~ COPC5.11
SAY @65
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",6)~ THEN BEGIN CoLoveTalk3
SAY @66
= @67
= @68
++ @69 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT1.1
++ @70 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT1.2
++ @71 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT1.3
++ @72 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT1.2
END

IF ~~ COLT1.1
SAY @73
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @74 + COLT1.4
++ @75 + COLT1.3
++ @76 + COLT1.5
++ @77 + COLT1.6
END

IF ~~ COLT1.2
SAY @78
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @74 + COLT1.4
++ @79 + COLT1.3
++ @76 + COLT1.5
++ @77 + COLT1.6
END

IF ~~ COLT1.3
SAY @80
++ @81 + COLT1.7
++ @82 + COLT1.8
++ @83 + COLT1.9
END

IF ~~ COLT1.4
SAY @84
++ @85 + COLT1.10
++ @86 + COLT1.5
++ @87 + COLT1.3
END

IF ~~ COLT1.5
SAY @88
IF ~~ THEN DO ~GiveItemCreate("X#CFLOW",Player1,1,0,0)~ EXIT
END

IF ~~ COLT1.6
SAY @89
IF ~~ THEN EXIT
END

IF ~~ COLT1.7
SAY @90
= @91
= @92
= @93
++ @94 + COLT1.11
++ @95 + COLT1.12
++ @96 + COLT1.13
++ @97 + COLT1.14
END

IF ~~ COLT1.8
SAY @98
= @92
= @99
++ @94 + COLT1.11
++ @95 + COLT1.12
++ @96 + COLT1.13
++ @97 + COLT1.14
END

IF ~~ COLT1.9
SAY @100
= @101
= @102
++ @94 + COLT1.11
++ @95 + COLT1.12
++ @96 + COLT1.13
++ @97 + COLT1.14
END

IF ~~ COLT1.10
SAY @103
IF ~~ THEN EXIT
END

IF ~~ COLT1.11
SAY @104
IF ~~ THEN EXIT
END
 
IF ~~ COLT1.12
SAY @105
IF ~~ THEN DO ~GiveItemCreate("X#CFLOW",Player1,1,0,0)~ EXIT
END

IF ~~ COLT1.13
SAY @106
IF ~~ THEN DO ~GiveItemCreate("X#CFLOW",Player1,1,0,0)~ EXIT
END

IF ~~ COLT1.14
SAY @107
IF ~~ THEN DO ~GiveItemCreate("X#CFLOW",Player1,1,0,0)~ EXIT
END 

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",8)~ THEN BEGIN CoLoveTalk4
SAY @108
++ @109 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COPC10.1
++ @110 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COPC10.2
++ @111 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COPC10.3
++ @112 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COPC10.4
END

IF ~~ COPC10.1
SAY @113
++ @114 + COPC10.5
++ @115 + COPC10.6
++ @116 + COPC10.7
END

IF ~~ COPC10.2
SAY @117
++ @118 + COPC10.8
++ @119 + COPC10.9
++ @120 + COPC10.4
END

IF ~~ COPC10.3
SAY @121
++ @122 + COPC10.10
++ @123 + COPC10.11
++ @124 + COPC10.12
++ @125 + COPC10.13
END

IF ~~ COPC10.4
SAY @126
++ @122 + COPC10.10
++ @123 + COPC10.11
++ @124 + COPC10.12
++ @127 + COPC10.13
END

IF ~~ COPC10.7
SAY @128
++ @122 + COPC10.10
++ @123 + COPC10.11
++ @124 + COPC10.12
++ @127 + COPC10.13
END

IF ~~ COPC10.5
SAY @129
IF ~~ THEN EXIT
END

IF ~~ COPC10.6
SAY @130
IF ~~ THEN EXIT
END

IF ~~ COPC10.8
SAY @131
IF ~~ THEN EXIT
END

IF ~~ COPC10.9
SAY @132
IF ~~ THEN EXIT
END

IF ~~ COPC10.10
SAY @133
IF ~~ THEN EXIT
END

IF ~~ COPC10.11
SAY @134
++ @135 + COPC10.14
++ @136 + COPC10.14
++ @137 + COPC10.10
END

IF ~~ COPC10.12
SAY @138
IF ~~ THEN EXIT
END

IF ~~ COPC10.13
SAY @139
++ @140 + COPC10.15
++ @141 + COPC10.16
++ @142 + COPC10.17
END

IF ~~ COPC10.14
SAY @143
++ @144 + COPC10.12
++ @145 + COPC10.18
++ @146 + COPC10.19
++ @147 + COPC10.20
END

IF ~~ COPC10.15
SAY @148
IF ~~ THEN EXIT
END

IF ~~ COPC10.16
SAY @149
IF ~~ THEN EXIT
END

IF ~~ COPC10.17
SAY @150
IF ~~ THEN EXIT
END

IF ~~ COPC10.18
SAY @151
IF ~~ THEN EXIT
END

IF ~~ COPC10.19
SAY @152
++ @144 + COPC10.12
++ @127 + COPC10.13
++ @153 + COPC10.18
END

IF ~~ COPC10.20
SAY @154
++ @155 + COPC10.12
++ @127 + COPC10.13
++ @153 + COPC10.18
++ @156 + COPC10.15
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",10)~ THEN BEGIN CoLoveTalk5
SAY @157
++ @158 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT2.1
++ @159 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT2.2
++ @160 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT2.3
++ @161 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT2.4
++ @162 DO ~SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2) IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT2.5
END

IF ~~ COLT2.1
SAY @163
++ @164 + COLT2.6
++ @165 + COLT2.7
++ @166 + COLT2.4
++ @167 + COLT2.8
END

IF ~~ COLT2.2
SAY @168
+ ~Race(Player1,ELF)~ + @169 + COLT2.9ELF
+ ~Race(Player1,ELF)~ + @170 + COLT2.9ELF
+ ~!Race(Player1,ELF)~ + @169 + COLT2.9NELF
+ ~!Race(Player1,ELF)~ + @170 + COLT2.9NELF
++ @171 + COLT2.10
++ @172 + COLT2.11
END

IF ~~ COLT2.3
SAY @173
++ @174 + COLT2.12
++ @175 + COLT2.13
++ @176 DO ~SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~ + COLT2.5
END

IF ~~ COLT2.4
SAY @177
++ @178 DO ~SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~ + COLT2.14
+ ~Class(Player1,BARD)~ + @179 DO ~SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~ + COLT2.5
++ @180 DO ~SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~ + COLT2.5
+ ~Race(Player1,ELF)~ + @181 + COLT2.9ELF
+ ~!Race(Player1,ELF)~ + @181 + COLT2.9NELF
END

IF ~~ COLT2.5
SAY @182
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~
EXIT
END

IF ~~ COLT2.6
SAY @183
++ @184 + COLT2.15
++ @185 + COLT2.16
++ @186 DO ~SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~ + COLT2.5
END

IF ~~ COLT2.7
SAY @187
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.8
SAY @188
++ @189 + COLT2.17
++ @190 DO ~SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~ + COLT2.5
++ @191 + COLT2.18
+ ~Race(Player1,ELF)~ + @192 + COLT2.9ELF
+ ~!Race(Player1,ELF)~ + @192 + COLT2.9NELF
END

IF ~~ COLT2.9NELF
SAY @193
++ @194 + COLT2.19
++ @195 + COLT2.20
++ @196 + COLT2.19
++ @197 DO ~SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~ + COLT2.5
END

IF ~~ COLT2.9ELF
SAY @198
++ @194 + COLT2.19
++ @199 + COLT2.20
++ @196 + COLT2.19
++ @197 DO ~SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~ + COLT2.5
END

IF ~~ COLT2.11
SAY @200
++ @194 + COLT2.19
++ @199 + COLT2.20
++ @196 + COLT2.19
++ @197 + COLT2.5
END

IF ~~ COLT2.10
SAY @201
= @202
= @203
= @204
++ @205 + COLT2.21
++ @206 EXIT
++ @207 + COLT2.21
++ @208 + COLT2.5
END
 
IF ~~ COLT2.12
SAY @209
++ @210 + COLT2.22
++ @211 + COLT2.19
++ @212 + COLT2.23
END 

IF ~~ COLT2.13
SAY @213
++ @214 + COLT2.19
++ @215 + COLT2.5
++ @216 + COLT2.10
END

IF ~~ COLT2.14
SAY @217
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~
EXIT
END

IF ~~ COLT2.15
SAY @218
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.16
SAY @219
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.17
SAY @220 
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.18
SAY @221
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.19
SAY @222
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.20
SAY @223
++ @197 + COLT2.5
++ @224 + COLT2.24
++ @225 + COLT2.25
END

IF ~~ COLT2.21
SAY @226
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.22
SAY @227
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.23
SAY @228
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.24
SAY @229
++ @230 + COLT2.5
++ @231 + COLT2.25
++ @232 + COLT2.26
END

IF ~~ COLT2.25
SAY @233
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT2.26
SAY @234
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",12)~ THEN BEGIN CoLoveTalk6
SAY @235
++ @236 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT4.1
++ @237 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT4.2
++ @238 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT4.3
++ @239 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT4.4
END

IF ~~ COLT4.1
SAY @240
++ @241 + COLT4.5
++ @242 + COLT4.6
++ @243 + COLT4.7
END

IF ~~ COLT4.2
SAY @244
++ @245 + COLT4.8
++ @246 + COLT4.7
++ @247 + COLT4.10
++ @248 + COLT4.11
END

IF ~~ COLT4.3
SAY @249
++ @245 + COLT4.8
++ @246 + COLT4.7
++ @250 + COLT4.10
++ @251 + COLT4.11
END

IF ~~ COLT4.4
SAY @252
++ @253 + COLT4.12
++ @254 + COLT4.13
++ @255 + COLT4.14
++ @251 + COLT4.11
END

IF ~~ COLT4.5
SAY @256
++ @245 + COLT4.8
++ @246 + COLT4.7
++ @247 + COLT4.10
++ @257 + COLT4.11
END

IF ~~ COLT4.6
SAY @258
++ @245 + COLT4.8
++ @246 + COLT4.7
++ @250 + COLT4.10
++ @251 + COLT4.11
END

IF ~~ COLT4.7
SAY @259
++ @260 + COLT4.15
++ @261 + COLT4.15
++ @262 + COLT4.16
END

IF ~~ COLT4.8
SAY @263
IF ~~ THEN EXIT
END

IF ~~ COLT4.10
SAY @264
IF ~~ THEN EXIT
END

IF ~~ COLT4.11
SAY @265
++ @260 + COLT4.15
++ @261 + COLT4.15
++ @262 + COLT4.16
END

IF ~~ COLT4.12
SAY @266
IF ~~ THEN + COLT4.14
END

IF ~~ COLT4.13
SAY @267
++ @260 + COLT4.15
++ @261 + COLT4.15
++ @262 + COLT4.16
END

IF ~~ COLT4.14
SAY @268
++ @260 + COLT4.15
++ @261 + COLT4.15
++ @262 + COLT4.16
END

IF ~~ COLT4.15
SAY @269
++ @270 + COLT4.17
++ @271 + COLT4.18
++ @272 + COLT4.19
END

IF ~~ COLT4.16
SAY @273
IF ~~ THEN EXIT
END

IF ~~ COLT4.17
SAY @274
++ @275 + COLT4.20
++ @276 + COLT4.21
+ ~Class(Player1,BARD)~ + @277 + COLT4.22
END

IF ~~ COLT4.18
SAY @278
++ @275 + COLT4.20
++ @276 + COLT4.21
+ ~Class(Player1,BARD)~ + @277 + COLT4.22
END

IF ~~ COLT4.19
SAY @279
++ @275 + COLT4.20
++ @276 + COLT4.21
+ ~Class(Player1,BARD)~ + @277 + COLT4.22
END

IF ~~ COLT4.20
SAY @280
IF ~~ THEN EXIT
END

IF ~~ COLT4.21
SAY @281
IF ~~ THEN EXIT
END

IF ~~ COLT4.22
SAY @282
IF ~~ THEN EXIT
END

/* AtRest */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",14)~ THEN BEGIN CoLoveTalk7
SAY @283
++ @284 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT5.1
+ ~!Class(Player1,THIEF_ALL)~ + @285 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT5.2
++ @286 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT5.1
++ @287 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT5.3
END

IF ~~ COLT5.1
SAY @288
++ @289 + COLT5.4
++ @290 + COLT5.5
++ @291 + COLT5.6
END

IF ~~ COLT5.2
SAY @292
++ @293 + COLT5.7
++ @294 + COLT5.6
++ @295 + COLT5.8
++ @296 + COLT5.9
+ ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ + @297 + COLT5.10
END

IF ~~ COLT5.3
SAY @298
++ @289 + COLT5.4
++ @290 + COLT5.5
++ @299 + COLT5.6
++ @287 + COLT5.11
END

IF ~~ COLT5.4
SAY @300
++ @301 + COLT5.12
++ @302 + COLT5.13
++ @303 + COLT5.14
END

IF ~~ COLT5.5
SAY @304
++ @301 + COLT5.12
++ @302 + COLT5.13
++ @303 + COLT5.14
++ @305 + COLT5.15
END

IF ~~ COLT5.6
SAY @306
++ @301 + COLT5.12
++ @302 + COLT5.13
++ @303 + COLT5.14
END

IF ~~ COLT5.7
SAY @307
++ @301 + COLT5.12
++ @308 + COLT5.25
++ @309 + COLT5.14
END

IF ~~ COLT5.8
SAY @310
++ @301 + COLT5.12
++ @302 + COLT5.13
++ @311 + COLT5.14
END

IF ~~ COLT5.9
SAY @312
++ @301 + COLT5.12
++ @302 + COLT5.13
++ @303 + COLT5.14
END

 IF ~~ COLT5.10
SAY @313
IF ~~ THEN + COLT5.1
END

IF ~~ COLT5.11
SAY @307
++ @301 + COLT5.12
++ @302 + COLT5.13
++ @303 + COLT5.14
++ @314 + COLT5.16
END 

IF ~~ COLT5.12
SAY @315
++ @316 + COLT5.17
++ @317 + COLT5.18
++ @318 + COLT5.19
++ @319 + COLT5.20
END

IF ~~ COLT5.13
SAY @320
++ @321 + COLT5.21
++ @322 + COLT5.22
++ @323 + COLT5.23
++ @324 + COLT5.24
END

IF ~~ COLT5.14
SAY @325
++ @321 + COLT5.21
++ @323 + COLT5.23
++ @324 + COLT5.24
END

IF ~~ COLT5.15
SAY @326
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT5.16
SAY @327
++ @328 + COLT5.17
++ @317 + COLT5.18
++ @318 + COLT5.19
++ @319 + COLT5.20
++ @329 + COLT5.26
END

IF ~~ COLT5.17
SAY @330
++ @321 + COLT5.21
++ @323 + COLT5.23
++ @324 + COLT5.24
END

IF ~~ COLT5.18
SAY @331
++ @321 + COLT5.21
++ @323 + COLT5.23
++ @324 + COLT5.24
END

IF ~~ COLT5.19
SAY @332
++ @321 + COLT5.21
++ @323 + COLT5.23
++ @324 + COLT5.24
END

IF ~~ COLT5.20
SAY @333
++ @321 + COLT5.21
++ @323 + COLT5.23
++ @324 + COLT5.24
++ @334 + COLT5.21
END

IF ~~ COLT5.21
SAY @335
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT5.22
SAY @336
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~
EXIT
END

IF ~~ COLT5.23
SAY @337
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranLover","GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~
EXIT
END

IF ~~ COLT5.24
SAY @338
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT5.25
SAY @339
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ COLT5.26
SAY @340
++ @341 + COLT5.21
++ @329 + COLT5.27
++ @342 + COLT5.25
++ @343 + COLT5.23
END

IF ~~ COLT5.27
SAY @344
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",16)~ THEN BEGIN CoLoveTalk8
SAY @345
++ @346 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1)~ + COFL1
++ @347 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RestParty()~ EXIT
++ @348 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ COFL1
SAY @349
++ @350 DO ~RestParty()~ EXIT
++ @351 + COFL2
++ @352 + COFL3
++ @353 + COFL4
++ @354 + COFL5
END

IF ~~ COFL2
SAY @355
++ @356 + COFL6
++ @357 + COFL8
++ @358 DO ~RestParty()~ EXIT
++ @359 DO ~RestParty()~ EXIT
++ @360 DO ~RestParty()~ EXIT
END

IF ~~ COFL5
SAY @361
++ @356 + COFL6
++ @362 + COFL7
++ @363 + COFL8
++ @358 DO ~RestParty()~ EXIT
++ @364 DO ~RestParty()~ EXIT
END

IF ~~ COFL9
SAY @365
++ @356 + COFL6
++ @362 + COFL7
++ @357 + COFL8
++ @358 DO ~RestParty()~ EXIT
++ @366 DO ~RestParty()~ EXIT
++ @367 + COFL16
++ @368 DO ~RestParty()~ EXIT
END

IF ~~ COFL10
SAY @369
++ @356 + COFL6
++ @362 + COFL7
++ @357 + COFL8
++ @370 DO ~RestParty()~ EXIT
++ @371 DO ~RestParty()~ EXIT
END

IF ~~ COFL11
SAY @372
++ @356 + COFL6
++ @362 + COFL7
++ @357 + COFL8
++ @358 DO ~RestParty()~ EXIT
++ @373 DO ~RestParty()~ EXIT
END

IF ~~ COFL3
SAY @374
++ @375 + COFL9
++ @376 + COFL10
++ @377 + COFL2
++ @378 DO ~RestParty()~ EXIT
END

IF ~~ COFL4
SAY @379
++ @380 + COFL11
++ @381 DO ~RestParty()~ EXIT
++ @382 + COFL12
END

IF ~~ COFL6
SAY @383
++ @384 + COFL7
++ @385 + COFL7
++ @386 + COFL17 
END

IF ~~ COFL7
SAY @387
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COFL8
SAY @388
++ @389 + COFL6
++ @390 DO ~RestParty() SetGlobal("P#CoranRomancePath", "GLOBAL",2) SetGlobal("P#CoranLover","GLOBAL",1)~ EXIT
++ @391 + COFL13
++ @392 + COFL14
++ @393 + COFL13
++ @394 + COFL18
END

IF ~~ COFL12
SAY @395
++ @396 + COFL6
++ @397 DO ~RestParty() SetGlobal("P#CoranRomancePath", "GLOBAL",2) SetGlobal("P#CoranLover","GLOBAL",1)~ EXIT
++ @392 + COFL14
++ @398 + COFL18
END

IF ~~ COFL13
SAY @399
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COFL14
SAY @400
++ @401 + COFL7
++ @402 DO ~RestParty() SetGlobal("P#CoranRomancePath", "GLOBAL",2) SetGlobal("P#CoranLover","GLOBAL",1)~ EXIT
++ @403 + COFL15
END

IF ~~ COFL15
SAY @404 
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath", "GLOBAL",2) SetGlobal("P#CoranLover","GLOBAL",1)~ EXIT
END

IF ~~ COFL16
SAY @405
= @406
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COFL17
SAY @406
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COFL18
SAY @407
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",18)~ THEN BEGIN CoLoveTalk9
SAY @408
= @409
= @410
++ @411 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COAD1.1
++ @412 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COAD1.2
++ @413 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COAD1.3
++ @414 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COAD1.4
END

IF ~~ COAD1.1
SAY @415
IF ~~ THEN + COAD1.1A
END

IF ~~ COAD1.1A
SAY @416
++ @417 + COAD1.5
++ @418 + COAD1.5
++ @419 + COAD1.6
++ @420 + COAD1.7
++ @421 DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ THEN COAD1.2
SAY @422
IF ~~ THEN + COAD1.1A
END

IF ~~ THEN COAD1.3
SAY @423
IF ~~ THEN + COAD1.1A
END

IF ~~ THEN COAD1.4
SAY @424
IF ~~ THEN + COAD1.1A
END

IF ~~ COAD1.5
SAY @425 
IF ~~ THEN EXIT
END

IF ~~ COAD1.6
SAY @426 
IF ~~ THEN + COAD1.5
END

IF ~~ COAD1.7
SAY @427 
IF ~~ THEN + COAD1.5
END


IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",20)~ THEN BEGIN CoLoveTalk10
SAY @428
++ @429 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT6.1
++ @430 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT6.2
++ @431 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT6.3
END

IF ~~ COLT6.1 
SAY @432
+ ~!Race(Player1,ELF)~ + @433 + COLT6.4
+ ~Race(Player1,ELF)~ + @434 + COLT6.4
++ @435 + COLT6.5
++ @436 + COLT6.6
++ @437 + COLT6.7
END

IF ~~ COLT6.2
SAY @438
++ @439 + COLT6.8
++ @440 + COLT6.9
++ @441 + COLT6.10
END

IF ~~ COLT6.3
SAY @442
+ ~!Race(Player1,ELF)~ + @443 + COLT6.4
+ ~Race(Player1,ELF)~ + @434 + COLT6.4
++ @435 + COLT6.5
++ @436 + COLT6.6
++ @437 + COLT6.7
END

IF ~~ COLT6.4
SAY @444
++ @439+ COLT6.8
++ @440+ COLT6.9
++ @441 + COLT6.10
END

IF ~~ COLT6.5
SAY @445
= @446
+ ~!Race(Player1,ELF)~ + @447 + COLT6.11
++ @448 + COLT6.4
++ @436 + COLT6.6
END

IF ~~ COLT6.6
SAY @449
++ @450 + COLT6.12
++ @451 + COLT6.13
++ @452 + COLT6.14
++ @453 + COLT6.15
END

IF ~~ COLT6.7
SAY @454
++ @455 + COLT6.16
++ @456 + COLT6.17
++ @457 + COLT6.18
END

IF ~~ COLT6.8
SAY @458
= @459
++ @460 + COLT6.19
++ @461 + COLT6.20
++ @462 + COLT6.10
END

IF ~~ COLT6.9
SAY @463
= @464
++ @465 + COLT6.21
++ @466 + COLT6.22
++ @467 + COLT6.6
+ ~!Race(Player1,ELF)~ + @468 + COLT6.23
END 

IF ~~ COLT6.10
SAY @469
= @470
++ @465 + COLT6.21
++ @466 + COLT6.22
++ @467 + COLT6.6
+ ~!Race(Player1,ELF)~ + @471 + COLT6.23
END

IF ~~ COLT6.11
SAY @472
++ @473 + COLT6.21
++ @467 + COLT6.6
+ ~!Race(Player1,ELF)~ + @471 + COLT6.23
++ @474 + COLT6.24
END

IF ~~ COLT6.12
SAY @475
IF ~~ THEN EXIT
END

IF ~~ COLT6.13
SAY @476
IF ~~ THEN EXIT
END

IF ~~ COLT6.14
SAY @477
= @478
=@479
++ @455 + COLT6.16
++ @456 + COLT6.17
++ @457 + COLT6.18
END

IF ~~ COLT6.15
SAY @480
= @470
++ @465 + COLT6.21
++ @466 + COLT6.22
++ @467 + COLT6.6
+ ~!Race(Player1,ELF)~ + @471 + COLT6.23
END

IF ~~ COLT6.16
SAY @481
IF ~~ THEN EXIT
END

IF ~~ COLT6.17
SAY @482
IF ~~ THEN EXIT
END

IF ~~ COLT6.18
SAY @483
IF ~~ THEN EXIT
END

IF ~~ COLT6.19
SAY @484
IF ~~ THEN EXIT
END

IF ~~ COLT6.20
SAY @485
= @486
++ @465 + COLT6.21
++ @466 + COLT6.22
++ @467 + COLT6.6
+ ~!Race(Player1,ELF)~ + @471 + COLT6.23
END

IF ~~ COLT6.21
SAY @487
++ @488 + COLT6.25
++ @489 + COLT6.26
++ @490 + COLT6.7
END

IF ~~ COLT6.22
SAY @491
IF ~~ THEN EXIT
END

IF ~~ COLT6.23
SAY @492
IF ~~ THEN EXIT
END

IF ~~ COLT6.24
SAY @493
IF ~~ THEN EXIT
END

IF ~~ COLT6.25
SAY @494
IF ~~ THEN EXIT
END

IF ~~ COLT6.26
SAY @495
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",22)~ THEN BEGIN CoLoveTalk11
SAY @496
++ @497 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT7.1
++ @498 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT7.2
++ @499 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT7.3
++ @500 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT7.4
END

IF ~~ COLT7.1
SAY @501
++ @502 + COLT7.5
+ ~!Race(Player1,ELF)~ + @503 + COLT7.5
++ @504 + COLT7.5
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @505 + COLT7.5
++ @506 + COLT7.6
END

IF ~~ COLT7.2
SAY @507
++ @502 + COLT7.5
+ ~!Race(Player1,ELF)~ + @503 + COLT7.5
++ @504 + COLT7.5
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @505 + COLT7.5
++ @506 + COLT7.6
END

IF ~~ COLT7.3
SAY @508
++ @502 + COLT7.5
+ ~!Race(Player1,ELF)~ + @503 + COLT7.5
++ @504 + COLT7.5
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @505 + COLT7.5
++ @506 + COLT7.6
END

IF ~~ COLT7.4
SAY @509
++ @502 + COLT7.5
+ ~!Race(Player1,ELF)~ + @503 + COLT7.5
++ @504 + COLT7.5
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @505 + COLT7.5
++ @506 + COLT7.6
END 

IF ~~ COLT7.5
SAY @510
++ @511 + COLT7.7
++ @512 + COLT7.8
++ @513 + COLT7.6
++ @514 + COLT7.9
END 

IF ~~ COLT7.6
SAY @515
IF ~~ THEN EXIT
END

IF ~~ COLT7.7
SAY @516
= @517
++ @518 + COLT7.10
++ @519 + COLT7.11
++ @520 + COLT7.9
++ @521 + COLT7.12
END

IF ~~ COLT7.8
SAY @522
IF ~~ THEN + COLT7.7
END

IF ~~ COLT7.9
SAY @523
++ @524 + COLT7.13
++ @525 + COLT7.14
++ @526 + COLT7.12
END

IF ~~ COLT7.10
SAY @527
IF ~~ THEN + COLT7.10A
END

IF ~~ COLT7.11
SAY @528
IF ~~ THEN + COLT7.10A
END

IF ~~ COLT7.10A
SAY @529
++ @530 + COLT7.15
++ @531 + COLT7.15
++ @532 + COLT7.15
END

IF ~~ COLT7.12
SAY @533
IF ~~ THEN EXIT
END

IF ~~ COLT7.12A
SAY @534
IF ~~ THEN + COLT7.20
END

IF ~~ COLT7.13
SAY @535
++ @536 + COLT7.17
++ @537 + COLT7.18
++ @538 + COLT7.6
END

IF ~~ COLT7.14
SAY @539
IF ~~ THEN EXIT
END

IF ~~ COLT7.15
SAY @540
++ @541 + COLT7.16
+ ~Class(Player1,THIEF_ALL)~ + @542 + COLT7.16
++ @543 + COLT7.16
++ @521 + COLT7.12
END

IF ~~ COLT7.16
SAY @544
++ @545 + COLT7.19
++ @546 + COLT7.19
++ @547 + COLT7.12A
++ @548 + COLT7.21
END

IF ~~ COLT7.17
SAY @549
IF ~~ THEN EXIT
END

IF ~~ COLT7.18
SAY @550
IF ~~ THEN EXIT
END

IF ~~ COLT7.19
SAY @551
IF ~~ THEN + COLT7.20
END

IF ~~ COLT7.21
SAY @552
IF ~~ THEN + COLT7.20
END

IF ~~ COLT7.20
SAY @553
++ @554 + COLT7.13
++ @525 + COLT7.14
++ @526 + COLT7.12
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",24)~ THEN BEGIN CoLoveTalk12
SAY @555
++ @556 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT8.1
++ @557 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT8.2
++ @558 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT8.3
++ @559 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT8.4
END

IF ~~ COLT8.1
SAY @560
++ @561 + COLT8.5
++ @562 + COLT8.6
++ @563 + COLT8.2
END

IF ~~ COLT8.2
SAY @564
IF ~~ THEN + COLT8.8
END

IF ~~ COLT8.3
SAY @565
IF ~~ THEN + COLT8.8
END

IF ~~ COLT8.4
SAY @566
IF ~~ THEN + COLT8.8
END

IF ~~ COLT8.5
SAY @567
= @568
= @569
++ @570 + COLT8.10
++ @571 + COLT8.6
END

IF ~~ COLT8.6
SAY @572
IF ~~ THEN EXIT
END

IF ~~ COLT8.8
SAY @573
= @574
++ @575 + COLT8.9
++ @570 + COLT8.10
++ @571 + COLT8.6
END

IF ~~ COLT8.9
SAY @576 
IF ~~ THEN + COLT8.10
END

IF ~~ COLT8.10
SAY @577
++ @578 + COLT8.11
++ @579 + COLT8.12
++ @580 + COLT8.13
++ @581 + COLT8.14
END

IF ~~ COLT8.11
SAY @582
IF ~~ THEN + COLT8.19
END

IF ~~ COLT8.12
SAY @583
= @584
= @585
= @586
++ @587 + COLT8.15
++ @588 + COLT8.16
++ @589 + COLT8.17
++ @590 + COLT8.18
++ @591 + COLT8.17
END

IF ~~ COLT8.13
SAY @592
IF ~~ THEN EXIT
END

IF ~~ COLT8.14
SAY @593
IF ~~ THEN + COLT8.19
END

IF ~~ COLT8.15
SAY @594
= @595
= @596
= @597
IF ~~ THEN EXIT
END

IF ~~ COLT8.16
SAY @598
++ @599 + COLT8.20
++ @600 + COLT8.21
++ @601 + COLT8.22
END

IF ~~ COLT8.17
SAY @602
++ @599 + COLT8.20
++ @600 + COLT8.21
++ @601 + COLT8.22
END

IF ~~ COLT8.18
SAY @603
++ @599 + COLT8.20
++ @600 + COLT8.21
++ @601 + COLT8.22
END

IF ~~ COLT8.19
SAY @604
= @584
= @585
= @586
++ @588 + COLT8.16
++ @589 + COLT8.17
++ @605 + COLT8.18
++ @591 + COLT8.17
END

IF ~~ COLT8.20
SAY @606
= @607
= @597
IF ~~ THEN EXIT
END

IF ~~ COLT8.21
SAY @608
IF ~~ THEN EXIT
END

IF ~~ COLT8.22
SAY @609
= @607
= @597
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",26)~ THEN BEGIN CoLoveTalk13
SAY @610
++ @611 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT9.1
+ ~Class(Player1,BARD)~ + @612 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT9.2
++ @613 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT9.3
++ @614 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT9.4
END

IF ~~ COLT9.1
SAY @615
++ @616 + COLT9.4
++ @617 + COLT9.5
++ @618 + COLT9.6
END

IF ~~ COLT9.2
SAY @619
+ ~!Race(Player1,ELF)~ + @620 + COLT9.7
+ ~Race(Player1,ELF)~ + @621 + COLT9.7
++ @622 + COLT9.8
++ @623 + COLT9.8
++ @624 + COLT9.9
END

IF ~~ COLT9.3
SAY @625
IF ~~ THEN + COLT9.2
END

IF ~~ COLT9.4
SAY @626
IF ~~ THEN + COLT9.2
END
 
IF ~~ COLT9.5
SAY @627
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT9.6
SAY @628
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT9.7
SAY @629
++ @630 + COLT9.10
++ @631 + COLT9.11
++ @632 + COLT9.8
END

IF ~~ COLT9.8
SAY @633
IF ~~ THEN + COLT9.12
END

IF ~~ COLT9.11
SAY @634
IF ~~ THEN + COLT9.12
END

IF ~~ COLT9.9
SAY @635
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT9.10
SAY @636
++ @637 + COLT9.13
++ @638 + COLT9.14
++ @639 + COLT9.15
END

IF ~~ COLT9.14
SAY @640
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT9.15
SAY @641
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT9.13
SAY @642
IF ~~ THEN + COLT9.12
END

IF ~~ COLT9.12
SAY @643
= @644
=@645
= @646
= @647
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",28)~ THEN BEGIN CoLoveTalk14
SAY @648
IF ~!Global("P#CoranLover","GLOBAL",1)~ THEN DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1)~ + COLT10A
IF ~Global("P#CoranLover","GLOBAL",1)~ THEN DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1)~ + COLT10B
END

IF ~~ COLT10A
SAY @649
= @650
++ @651 + COLT10.1
+ ~!InParty("minsc")~ + @652 + COLT10.2
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @653 EXTERN ~%MINSC_BANTER%~ MICOROM1
++ @654 + COLT10.3
END

IF ~~ COLT10B
SAY @655
= @656
++ @651 + COLT10.1
+ ~!InParty("minsc")~ + @653 + COLT10.2
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @657 EXTERN ~%MINSC_BANTER%~ MICOROM1
++ @654 + COLT10.3
END

IF ~~ COLT10.1
SAY @658
++ @659 + COLT10.4
++ @660 + COLT10.6
++ @661 + COLT10.7
+ ~!InParty("minsc")~ + @662 + COLT10.2
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @663 EXTERN ~%MINSC_BANTER%~ MICOROM1
END

IF ~~ COLT10.2
SAY @664
IF ~~ THEN + COLT10.2A
END

IF ~~ COLT10.2A
SAY @665
+ ~!Race(Player1,ELF)~ + @666 + COLT10.8
+ ~Race(Player1,ELF)~ + @667 + COLT10.9
++ @668 + COLT10.10
++ @669 + COLT10.11
END
 
IF ~~ COLT10.3
SAY @670
IF ~~ THEN + COLT10.5
END

IF ~~ COLT10.6
SAY @671
IF ~~ THEN + COLT10.5
END

IF ~~ COLT10.5
SAY @672
+ ~!InParty("minsc")~ + @673 + COLT10.2
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @674 EXTERN ~%MINSC_BANTER%~ MICOROM1
++ @675 + COLT10.12
++ @676 + COLT10.13
++ @677 + COLT10.12
END

IF ~~ COLT10.4
SAY @678
++ @679 + COLT10.14
++ @680 + COLT10.6
++ @681 DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
++ @682 + COLT10.15
END

IF ~~ COLT10.7
SAY @683
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.8
SAY @684
++ @685 + COLT10.16
++ @686 + COLT10.17
++ @687 + COLT10.18
END

IF ~~ COLT10.9
SAY @688
++ @689 + COLT10.19
++ @686 + COLT10.17
++ @687 + COLT10.18
END

IF ~~ COLT10.10
SAY @690
++ @685 + COLT10.16
+ ~Race(Player1,ELF)~ + @689 + COLT10.19
++ @686 + COLT10.17
++ @687 + COLT10.18
END

IF ~~ COLT10.11
SAY @335
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.12
SAY @691
= @692
= @693
= @694
++ @695 + COLT10.20
+ ~!InParty("minsc")~ + @696 + COLT10.2
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @697 EXTERN ~%MINSC_BANTER%~ MICOROM1
++ @698 + COLT10.21
+ ~OR(5) Class(Player1,FIGHTER_ALL) Class(Player1,RANGER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @699 + COLT10.23
+ ~OR(4) Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) Class(Player1,SORCERER) Class(Player1,THIEF_ALL)~ + @700 + COLT10.23
END

IF ~~ COLT10.13
SAY @701
+ ~!InParty("minsc")~ + @702 DO ~GiveItemCreate("X#CMOON",Player1,1,0,0)~ + COLT10.2
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @703 DO ~GiveItemCreate("X#CMOON",Player1,1,0,0)~ EXTERN ~%MINSC_BANTER%~ MICOROM1
++ @704 DO ~GiveItemCreate("X#CMOON",Player1,1,0,0)~ + COLT10.2
++ @705 DO ~GiveItemCreate("X#CMOON",Player1,1,0,0)~ + COLT10.22
END

IF ~~ COLT10.14
SAY @706
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.15
SAY @707 
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ COLT10.16
SAY @708
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranLover","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.17
SAY @709
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranLover","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.18
SAY @710 
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.19
SAY @711
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranLover","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.20
SAY @712
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.21
SAY @713
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.22
SAY @714 
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF ~~ COLT10.23
SAY @715
= @716
++ @717 + COLT10.24
+ ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ + @718 + COLT10.2
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @718 EXTERN ~%MINSC_BANTER%~ MICOROM1
END

IF ~~ COLT10.24
SAY @719
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",30)~ THEN BEGIN CoLoveTalk15
SAY @720
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @721 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT11.1KNOWBHAAL
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @722 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT11.1NOTKNOWBHAAL
++ @723 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT11.2
++ @724 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT11.3
++ @725 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT11.4
++ @726 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT11.5
++ @727 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT11.6
END

IF ~~ COLT11.1KNOWBHAAL
SAY @728
++ @729 + COLT11.7
++ @730 + COLT11.8
++ @731 + COLT11.9
END

IF ~~ COLT11.1NOTKNOWBHAAL
SAY @732
++ @729 + COLT11.7
++ @730 + COLT11.8
++ @731 + COLT11.9
END

IF ~~ COLT11.2
SAY @733
++ @734 + COLT11.10
++ @735 + COLT11.11
++ @736 + COLT11.11
END

IF ~~ COLT11.3
SAY @737
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @738 + COLT11.12
++ @739 + COLT11.13
++ @740 + COLT11.14
++ @741 + COLT11.14
END

IF ~~ COLT11.4
SAY @742
++ @729 + COLT11.7
++ @730 + COLT11.8
++ @731 + COLT11.9
END

IF ~~ COLT11.5
SAY @743
++ @744 + COLT11.15
++ @745 + COLT11.16
++ @746 + COLT11.16
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @747 + COLT11.17
END

IF ~~ COLT11.6
SAY @748
++ @729 + COLT11.7
++ @730 + COLT11.8
++ @731 + COLT11.9
END

IF ~~ COLT11.7
SAY @749
IF ~~ THEN + COLT11.6A
END

IF ~~ COLT11.8
SAY @750
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF ~~ COLT11.10
SAY @751
IF ~~ THEN + COLT11.6A
END

IF ~~ COLT11.6A
SAY @752
++ @753 + COLT11.18
++ @754 + COLT11.19
++ @755 + COLT11.20
++ @756 + COLT11.21
END

IF ~~ COLT11.11A
SAY @757
++ @753 + COLT11.18
++ @754 + COLT11.19
++ @755 + COLT11.20
++ @756 + COLT11.21
END

IF ~~ COLT11.11
SAY @758
IF ~~ THEN + COLT11.11A
END

IF ~~ COLT11.12
SAY @759
IF ~~ THEN + COLT11.24
END

IF ~~ COLT11.13
SAY @760
IF ~~ THEN + COLT11.11A
END

IF ~~ COLT11.14
SAY @761
++ @762 + COLT11.25
++ @763 + COLT11.26
++ @764 + COLT11.25
END

IF ~~ COLT11.15
SAY @765
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COLT11.16
SAY @766
IF ~~ THEN + COLT11.11A
END

IF ~~ COLT11.17
SAY @767
IF ~~ THEN + COLT11.11A
END

IF ~~ COLT11.18
SAY @768
IF ~~ THEN EXIT
END

IF ~~ COLT11.19
SAY @769
IF ~~ THEN EXIT
END

IF ~~ COLT11.20
SAY @770
IF ~~ THEN EXIT
END 

IF ~~ COLT11.21
SAY @771
IF ~~ THEN EXIT
END

IF ~~ COLT11.22
SAY @772
IF ~~ THEN + COLT11.6A
END

IF ~~ COLT11.23
SAY @773
IF ~~ THEN + COLT11.6A
END

IF ~~ COLT11.25
SAY @774
IF ~~ THEN + COLT11.24
END

IF ~~ COLT11.26
SAY @775
IF ~~ THEN + COLT11.24
END

IF ~~ COLT11.24
SAY @776
++ @777 + COLT11.18
++ @754 + COLT11.19
++ @755 + COLT11.20
++ @756 + COLT11.21
END

IF ~~ COLT11.9
SAY @778
++ @779 + COLT11.22
++ @780 + COLT11.23
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @781 + COLT11.23
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @782 + COLT11.23
+ ~Class(Player1,PALADIN_ALL)~ + @783 + COLT11.23
+ ~OR(2) Class(Player1,FIGHTER_ALL) Class(Player1,MONK)~ + @784 + COLT11.23
+ ~Class(Player1,MAGE_ALL)~ + @785 + COLT11.23
+ ~Class(Player1,BARD_ALL)~ + @786 + COLT11.23
+ ~Class(Player1,SORCERER)~ + @787 + COLT11.23
+ ~OR(2) Class(Player1,RANGER_ALL) Class(Player1,DRUID_ALL)~ + @788 + COLT11.23
+ ~OR(2) Class(Player1,THIEF_ALL) Class(Player1,BARD_ALL)~ + @789 + COLT11.23
++ @790 + COLT11.23
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGLoveTalk","GLOBAL",32)~ THEN BEGIN CoLoveTalk16
SAY @791
++ @792 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT12.1
+ ~Race(Player1,ELF)~ + @793 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT12.2ELF
+ ~!Race(Player1,ELF)~ + @793 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT12.2NELF
++ @794 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT12.1
++ @795 DO ~IncrementGlobal("P#CGLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#CGLoveTalkTime","GLOBAL",COROM_TIMER)~ + COLT12.3
END

IF ~~ COLT12.1
SAY @796
IF ~~ THEN + COLT12.1A
END

IF ~~ COLT12.2ELF
SAY @797
IF ~~ THEN + COLT12.1A
END

IF ~~ COLT12.2NELF
SAY @798
= @799
= @800
IF ~~ THEN + COLT12.1A
END

IF ~~ COLT12.3
SAY @801
IF ~~ THEN + COLT12.1A
END

IF ~~ COLT12.1A
SAY @802
++ @803 + COLT12.4
++ @804 + COLT12.5
++ @805 + COLT12.6
++ @806 + COLT12.7
++ @807 + COLT12.8
END

IF ~~ COLT12.4
SAY @808
++ @809 + COLT12.9
++ @810 + COLT12.10
++ @811 + COLT12.11
++ @812 + COLT12.7
++ @813 + COLT12.12
END

IF ~~ COLT12.5
SAY @814
++ @809 + COLT12.9
++ @810 + COLT12.10
++ @811 + COLT12.11
++ @812 + COLT12.7
++ @815 + COLT12.12
END

IF ~~ COLT12.6
SAY @816
++ @809 + COLT12.9
++ @810 + COLT12.10
++ @811 + COLT12.11
++ @812 + COLT12.7
++ @815 + COLT12.12
END

IF ~~ COLT12.7
SAY @817
IF ~~ THEN DO ~SetGlobal("P#CoranVow","GLOBAL",1)~ EXIT
END

IF ~~ COLT12.8
SAY @818
++ @809 + COLT12.9
++ @810 + COLT12.10
++ @811 + COLT12.11
++ @812 + COLT12.7
++ @815 + COLT12.10
++ @819 + COLT12.12
END

IF ~~ COLT12.9
SAY @820
++ @821 + COLT12.13
++ @822 + COLT12.14
++ @823 + COLT12.15
++ @824 + COLT12.7
++ @825 + COLT12.10
END

IF ~~ COLT12.10
SAY @826 
IF ~~ THEN DO ~SetGlobal("P#CoranVow","GLOBAL",1)~ EXIT
END

IF ~~ COLT12.11
SAY @827
IF ~~ THEN DO ~SetGlobal("P#CoranVow","GLOBAL",1)~ EXIT
END

IF ~~ COLT12.12
SAY @828
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ COLT12.13
SAY @829
IF ~~ THEN DO ~SetGlobal("P#CoranVow","GLOBAL",2)~ EXIT
END

IF ~~ COLT12.14
SAY @830
IF ~~ THEN DO ~SetGlobal("P#CoranVow","GLOBAL",1)~ EXIT
END

IF ~~ COLT12.15
SAY @831
IF ~~ THEN DO ~SetGlobal("P#CoranVow","GLOBAL",2)~ EXIT
END

/* Bored Talks */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CBoredTalk","GLOBAL",2)~ THEN BEGIN CBLoveTalk1
SAY @832
++ @833 DO ~SetGlobal("P#CBoredTalk","GLOBAL",3) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT1.1
++ @834 DO ~SetGlobal("P#CBoredTalk","GLOBAL",3) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT1.2
++ @835 DO ~SetGlobal("P#CBoredTalk","GLOBAL",3) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT1.3
++ @836 DO ~SetGlobal("P#CBoredTalk","GLOBAL",3) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT1.4
END

IF ~~ COBT1.1
SAY @837
++ @833 + COBT1.5
++ @838 + COBT1.6
++ @839 + COBT1.7
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @840 + COBT1.8
END

IF ~~ COBT1.2
SAY @841
IF ~~ THEN EXIT
END 

IF ~~ COBT1.3
SAY @842
++ @843 + COBT1.9
++ @844 + COBT1.10
++ @833 + COBT1.5
++ @845 + COBT1.11
END

IF ~~ COBT1.4
SAY @846
++ @833 + COBT1.5
++ @847 + COBT1.12
++ @848 + COBT1.13
++ @849 + COBT1.3
++ @850 + COBT1.11
++ @851 + COBT1.11
END

IF ~~ COBT1.5
SAY @852
IF ~~ THEN + COBT1.11
END

IF ~~ COBT1.6
SAY @853
IF ~~ THEN + COBT1.11
END

IF ~~ COBT1.7
SAY @854 
IF ~~ THEN EXIT
END

IF ~~ COBT1.8
SAY @855 
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ COBT1.9
SAY @856 
IF ~~ THEN EXIT
END

IF ~~ COBT1.10
SAY @857 
IF ~~ THEN EXIT
END

IF ~~ COBT1.11
SAY @858
++ @859 + COBT1.13
++ @860 + COBT1.13
++ @861 + COBT1.14 
++ @862 + COBT1.15
++ @863 + COBT1.7
END

IF ~~ COBT1.12
SAY @864
IF ~~ THEN + COBT1.11
END

IF ~~ COBT1.13
SAY @865
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ COBT1.14
SAY @866
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ COBT1.15
SAY @867
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CBoredTalk","GLOBAL",4)~ THEN BEGIN CBLoveTalk2
SAY @868
++ @869 DO ~SetGlobal("P#CBoredTalk","GLOBAL",5) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT2.1
++ @870 DO ~SetGlobal("P#CBoredTalk","GLOBAL",5) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT2.2
++ @871 DO ~SetGlobal("P#CBoredTalk","GLOBAL",5) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT2.3
++ @872 DO ~SetGlobal("P#CBoredTalk","GLOBAL",5) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT2.4
END

IF ~~ COBT2.1
SAY @873
++ @874 + COBT2.5
++ @875 + COBT2.6
++ @876 + COBT2.7
++ @877 + COBT2.8
END

IF ~~ COBT2.2
SAY @878
++ @879 + COBT2.9
++ @880 + COBT2.10
++ @881 + COBT2.4
END

IF ~~ COBT2.3
SAY @882
++ @883 + COBT2.9
++ @881 + COBT2.4
++ @884 + COBT2.9
END

IF ~~ COBT2.4
SAY @885
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranLover","GLOBAL",1)~ EXIT
END

IF ~~ COBT2.5
SAY @886
++ @887 + COBT2.11
++ @872 + COBT2.4
++ @888 + COBT2.9
END

IF ~~ COBT2.6
SAY @889
IF ~~ THEN DO ~RestParty()~ 
EXIT
END

IF ~~ COBT2.7
SAY @890
++ @887 + COBT2.11
++ @872 + COBT2.4
++ @888 + COBT2.9
END

IF ~~ COBT2.8
SAY @891 
++ @892 + COBT2.4
++ @872 + COBT2.4
++ @893 + COBT2.9
END

IF ~~ COBT2.9
SAY @894
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1) RestParty()~ 
EXIT
END

IF ~~ COBT2.10
SAY @895
IF ~~ THEN DO ~RestParty()~ 
EXIT
END

IF ~~ COBT2.11
SAY @896
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranLover","GLOBAL",1)~
EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CBoredTalk","GLOBAL",6)~ THEN BEGIN CBLoveTalk3
SAY @897
++ @898 DO ~SetGlobal("P#CBoredTalk","GLOBAL",7) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT3.1
++ @899 DO ~SetGlobal("P#CBoredTalk","GLOBAL",7) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT3.2
++ @900 DO ~SetGlobal("P#CBoredTalk","GLOBAL",7) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT3.3
++ @901 DO ~SetGlobal("P#CBoredTalk","GLOBAL",7) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT3.4
+ ~Class(Player1,DRUID_ALL)~ + @902 DO ~SetGlobal("P#CBoredTalk","GLOBAL",7) RealSetGlobalTimer("P#CBoredTalkTime","GLOBAL",COROM_TIMER)~ + COBT3.5
END

IF ~~ COBT3.1
SAY @903
++ @904 + COBT3.6
++ @905 + COBT3.7
++ @906 + COBT3.8
END

IF ~~ COBT3.2
SAY @907
IF ~~ THEN + COBT3.2A
END

IF ~~ COBT3.5
SAY @908
IF ~~ THEN + COBT3.2A
END

IF ~~ COBT3.2A
SAY @909 
++ @910 + COBT3.9
++ @911 + COBT3.10
++ @912 + COBT3.11
END

IF ~~ COBT3.3
SAY @913
++ @906 + COBT3.8
++ @914 + COBT3.12
++ @915 + COBT3.13
++ @916 + COBT3.14
END

IF ~~ COBT3.4
SAY @917
++ @918 + COBT3.15
++ @919 + COBT3.16
++ @920 + COBT3.17
END

IF ~~ COBT3.6
SAY @921 
IF ~~ THEN EXIT
END

IF ~~ COBT3.7
SAY @922
IF ~~ THEN EXIT
END

IF ~~ COBT3.8
SAY @923
++ @924 + COBT3.18
++ @925 + COBT3.19
++ @926 + COBT3.19
++ @927 + COBT3.20
END

IF ~~ COBT3.9
SAY @928
IF ~~ THEN EXIT
END

IF ~~ COBT3.10
SAY @929
IF ~~ THEN EXIT
END

IF ~~ COBT3.11
SAY @930
IF ~~ THEN EXIT
END

IF ~~ COBT3.12
SAY @931
IF ~~ THEN EXIT
END

IF ~~ COBT3.13
SAY @932
IF ~~ THEN EXIT
END

IF ~~ COBT3.14
SAY @933
IF ~~ THEN EXIT
END

IF ~~ COBT3.15
SAY @934
IF ~~ THEN EXIT
END

IF ~~ COBT3.16
SAY @935
IF ~~ THEN EXIT
END

IF ~~ COBT3.17
SAY @936
IF ~~ THEN EXIT
END

IF ~~ COBT3.18
SAY @937
IF ~~ THEN EXIT
END

IF ~~ COBT3.19
SAY @938
IF ~~ THEN EXIT
END

IF ~~ COBT3.20
SAY @939
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CBoredTalk","GLOBAL",8)~ THEN BEGIN CBLoveTalk4
SAY @940
= @941
++ @942 DO ~SetGlobal("P#CBoredTalk","GLOBAL",9)~ + COBT4.1
++ @943 DO ~SetGlobal("P#CBoredTalk","GLOBAL",9)~ + COBT4.2
++ @944 DO ~SetGlobal("P#CBoredTalk","GLOBAL",9)~ + COBT4.3
END

IF ~~ THEN COBT4.1
SAY @945
++ @946 + COBT4.4
++ @947 + COBT4.4
++ @948 + COBT4.5
END

IF ~~ THEN COBT4.2
SAY @949
++ @950 + COBT4.5
++ @951 + COBT4.6
+ ~Race(Player1,ELF)~ + @952 + COBT4.7
++ @953 + COBT4.8
END

IF ~~ THEN COBT4.3
SAY @954
++ @955 + COBT4.9
++ @956 + COBT4.10
++ @957 + COBT4.9
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @958 + COBT4.11
++ @959 + COBT4.12
END

IF ~~ THEN COBT4.4
SAY @960
++ @961 + COBT4.5
++ @951 + COBT4.6
+ ~Race(Player1,ELF)~ + @952 + COBT4.7
++ @953 + COBT4.8
END

IF ~~ THEN COBT4.5
SAY @962
++ @963 + COBT4.13
++ @964 + COBT4.14
++ @965 + COBT4.15
+ ~Race(Player1,ELF)~ + @966 + COBT4.16
END

IF ~~ THEN COBT4.6
SAY @967
++ @968 + COBT4.13
++ @964 + COBT4.14
++ @965 + COBT4.15
+ ~Race(Player1,ELF)~ + @966 + COBT4.16
END

IF ~~ THEN COBT4.7
SAY @969
++ @963 + COBT4.13
++ @964 + COBT4.14
++ @965 + COBT4.15
+ ~Race(Player1,ELF)~ + @966 + COBT4.16
END

IF ~~ THEN COBT4.8
SAY @970
++ @971 + COBT4.17
++ @972 + COBT4.18
++ @973 + COBT4.19
END

IF ~~ THEN COBT4.9
SAY @974
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN COBT4.10
SAY @975
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN COBT4.11
SAY @976
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN COBT4.12
SAY @977
++ @978 + COBT4.20
++ @979 + COBT4.20
++ @980 + COBT4.13
END 

IF ~~ THEN COBT4.13
SAY @981
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN COBT4.14
SAY @982
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN COBT4.15
SAY @983
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN COBT4.16
SAY @984
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN COBT4.17
SAY @985
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN COBT4.18
SAY @986
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~
EXIT
END

IF ~~ THEN COBT4.19
SAY @987
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN COBT4.20
SAY @988
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

/* Neutral talks */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CNeutralTalk","GLOBAL",2)~ THEN BEGIN CNLoveTalk1
SAY @989
++ @990 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",3) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT1.1
++ @991 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",3) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT1.2
++ @992 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",3) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ EXIT
++ @993 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",3) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT1.3
END

IF ~~ COCT1.1
SAY @994
+ ~!Class(Player1,SORCERER)~ + @995 + COCT1.4NS
+ ~Class(Player1,SORCERER)~ + @996 + COCT1.4S
++ @997 + COCT1.5
++ @998 + COCT1.6
++ @999 + COCT1.7
END

IF ~~ COCT1.2
SAY @1000 
++ @1001 + COCT1.8
+ ~GlobalLT("P#CoranLover","GLOBAL",1)~ + @1002 + COCT1.9
+ ~GlobalLT("P#CoranLover","GLOBAL",1)~ + @1003 + COCT1.10
+ ~OR(2) Global("P#CoranLover","GLOBAL",1) Global("P#CoranLover","GLOBAL",2)~ + @1004 + COCT1.11
++ @1005 + COCT1.12
++ @1006 + COCT1.13
END

IF ~~ COCT1.3
SAY @1007
IF ~~ THEN EXIT
END

IF ~~ COCT1.4NS
SAY @1008
IF ~~ THEN EXIT
END

IF ~~ COCT1.4S
SAY @1009
IF ~~ THEN EXIT
END

IF ~~ COCT1.5
SAY @1010
IF ~~ THEN EXIT
END

IF ~~ COCT1.6
SAY @1011
IF ~~ THEN EXIT
END

IF ~~ COCT1.7
SAY @1012
++ @1013 + COCT1.14
++ @1005 + COCT1.12
++ @1014 + COCT1.15
END

IF ~~ COCT1.8
SAY @1015
++ @1016 + COCT1.16
+ ~Race(Player1,ELF)~ + @1017 + COCT1.17ELF
+ ~!Race(Player1,ELF)~ + @1018 + COCT1.17NELF
++ @1005 + COCT1.12
END

IF ~~ COCT1.9
SAY @1019
IF ~~ THEN EXIT
END

IF ~~ COCT1.10
SAY @1020
++ @1021 + COCT1.18
++ @1022 EXIT
++ @1005 + COCT1.12
END

IF ~~ COCT1.11
SAY @1023
IF ~~ THEN EXIT
END

IF ~~ COCT1.12
SAY @1024
IF ~~ THEN EXIT
END

IF ~~ COCT1.13
SAY @1025
IF ~~ THEN EXIT
END

IF ~~ COCT1.14
SAY @1026
IF ~~ THEN EXIT
END

IF ~~ COCT1.15
SAY @1027
IF ~~ THEN EXIT
END

IF ~~ COCT1.16
SAY @1028
IF ~~ THEN EXIT
END

IF ~~ COCT1.17ELF
SAY @1029
IF ~~ THEN EXIT
END

IF ~~ COCT1.17NELF
SAY @1030
IF ~~ THEN EXIT
END

IF ~~ COCT1.18
SAY @1031
IF ~~ THEN EXIT
END

/* at rest */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CNeutralTalk","GLOBAL",4)~ THEN BEGIN CNLoveTalk2
SAY @1032
++ @1033 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",5) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT2.1
++ @1034 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",5) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT2.1
++ @1035 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",5) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT2.2
++ @1036 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",5) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT2.2
END

IF ~~ COCT2.1
SAY @1037
++ @1038 + COCT2.3
+ ~!Race(Player1,ELF) !Global("P#KnowBhaal","GLOBAL",1)~ + @1039 + COCT2.4ELF
+ ~Race(Player1,ELF) !Global("P#KnowBhaal","GLOBAL",1)~ + @1040 + COCT2.4NELF
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1041 + COCT2.5
++ @1042 + COCT2.6
++ @1043 + COCT2.7
END

IF ~~ COCT2.2
SAY @1044
++ @1038 + COCT2.3
+ ~Race(Player1,HALF_ELF) !Global("P#KnowBhaal","GLOBAL",1)~ + @1045 + COCT2.8
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @1046 + COCT2.9
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1047 + COCT2.10
++ @1048 + COCT2.11
++ @1049 + COCT2.12
END

IF ~~ COCT2.3
SAY @1050
++ @1051 + COCT2.13
+ ~Race(Player1,ELF)~ + @1052 + COCT2.14ELF
+ ~!Race(Player1,ELF)~ + @1053 + COCT2.14NELF
++ @1054 + COCT2.15
++ @1055 + COCT2.7
END

IF ~~ COCT2.4NELF
SAY @1056
++ @1057 + COCT2.16
++ @1058 + COCT2.17
++ @1059 + COCT2.18
++ @1060 + COCT2.3
END

IF ~~ COCT2.4ELF
SAY @1061
++ @1062 + COCT2.19
++ @1063 + COCT2.20
++ @1064 + COCT2.21
END

IF ~~ COCT2.5
SAY @1065
++ @1066 + COCT2.3
++ @1067 + COCT2.22
++ @1068 + COCT2.23
++ @1069 + COCT2.24
END

IF ~~ COCT2.6
SAY @1070
++ @1038 + COCT2.3
+ ~Race(Player1,HALF_ELF) Global("P#KnowBhaal","GLOBAL",0)~ + @1045 + COCT2.8
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @1046 + COCT2.9
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1047 + COCT2.10
++ @1048 + COCT2.11
++ @1049 + COCT2.12
END

IF ~~ COCT2.7
SAY @1071
++ @1072 + COCT2.25
++ @1073 + COCT2.26
++ @1074 + COCT2.27
END

IF ~~ COCT2.8
SAY @1075
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.8A
SAY @1076
++ @1072 + COCT2.25
++ @1073 + COCT2.26
++ @1077 + COCT2.39
END

IF ~~ COCT2.9
SAY @1078
++ @1079 + COCT2.28
++ @1080 + COCT2.29
++ @335 + COCT2.30
END

IF ~~ COCT2.10
SAY @1081
++ @1082 + COCT2.31
+ ~Race(Player1,ELF)~ + @1083 + COCT2.14ELF
+ ~!Race(Player1,ELF)~ + @1083 + COCT2.14NELF
++ @1084 + COCT2.32
END

IF ~~ COCT2.11
SAY @1085
IF ~~ THEN + COCT2.20
END

IF ~~ COCT2.12
SAY @1086
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.13
SAY @1087
++ @1088 DO ~SetGlobal("P#CoranLover","GLOBAL",1) RestParty()~ EXIT
+ ~Race(Player1,ELF)~ + @1089 + COCT2.14ELF
+ ~!Race(Player1,ELF)~ + @1089 + COCT2.14NELF
++ @1090 + COCT2.35
END

IF ~~ COCT2.14NELF
SAY @1091
IF ~~ THEN DO ~SetGlobal("P#CoranLover","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ COCT2.14ELF
SAY @1092
IF ~~ THEN DO ~SetGlobal("P#CoranLover","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ COCT2.15
SAY @1093
+ ~Race(Player1,HALF_ELF) !Global("P#KnowBhaal","GLOBAL",1)~ + @1045 + COCT2.8
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @1046 + COCT2.9
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1047 + COCT2.10
++ @1048 + COCT2.11
++ @1049 + COCT2.12
+ ~Race(Player1,ELF)~ + @1094 + COCT2.14ELF
+ ~!Race(Player1,ELF)~ + @1095 + COCT2.14NELF
END

IF ~~ COCT2.16
SAY @1096
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.17
SAY @1097
++ @1098 + COCT2.36
++ @1099 + COCT2.37
++ @1100 + COCT2.38 
++ @1101 + COCT2.38 
END

IF ~~ COCT2.18
SAY @1102
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.19
SAY @1103
IF ~~ THEN + COCT2.20
END

IF ~~ COCT2.20
SAY @1104
++ @1105 + COCT2.33
++ @1106 + COCT2.33
++ @1107 + COCT2.34
END

IF ~~ COCT2.21
SAY @1108
++ @1105 + COCT2.33
++ @1109 + COCT2.33
++ @1110 + COCT2.34
END

IF ~~ COCT2.22
SAY @1111
IF ~~ THEN + COCT2.8A
END 

IF ~~ COCT2.23
SAY @1112
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.24
SAY @1113
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.25
SAY @1114
IF ~~ THEN DO ~SetGlobal("P#CoranLover","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ COCT2.26
SAY @1115
++ @1116 + COCT2.39
+ ~Race(Player1,ELF)~ + @1117 + COCT2.14ELF
+ ~!Race(Player1,ELF)~ + @1117 + COCT2.14NELF
END

IF ~~ COCT2.27
SAY @1118
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ COCT2.28
SAY @1119
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.29
SAY @1120
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.30
SAY @1121
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.31
SAY @1122
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.32
SAY @1123
++ @1124 DO ~SetGlobal("P#CoranLover","GLOBAL",1) RestParty()~ EXIT
+ ~Race(Player1,ELF)~ + @1125 + COCT2.14ELF
+ ~!Race(Player1,ELF)~ + @1125 + COCT2.14NELF
END

IF ~~ COCT2.33
SAY @1126
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.34
SAY @1127
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.35
SAY @1128
IF ~~ THEN DO ~SetGlobal("P#CoranLover","GLOBAL",1) RestParty()~ 
EXIT
END

IF ~~ COCT2.36
SAY @1129
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.37
SAY @1130
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.38
SAY @1131
IF ~~ THEN + COCT2.8A
END

IF ~~ COCT2.39
SAY @1132
IF ~~ THEN DO ~SetGlobal("P#CoranLover","GLOBAL",1) RestParty()~
EXIT
END

/* in an inn */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CNeutralTalk","GLOBAL",6)~ THEN BEGIN CNLoveTalk3
SAY @832
++ @833 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",7) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + BCOCT3.1
++ @834 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",7) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + BCOCT3.2
++ @835 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",7) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + BCOCT3.3
++ @1133 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",7) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + BCOCT3.4
END

IF ~~ BCOCT3.1
SAY @1134
++ @833 + BCOCT3.5
++ @838 + BCOCT3.6
++ @839 + BCOCT3.7
+ ~OR(2) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL)~ + @840 + BCOCT3.8
END

IF ~~ BCOCT3.2
SAY @841
IF ~~ THEN
EXIT
END 

IF ~~ BCOCT3.3
SAY @842
++ @1135 + BCOCT3.9
++ @844 + BCOCT3.10
++ @833 + BCOCT3.5
++ @845 + BCOCT3.11
END

IF ~~ BCOCT3.4
SAY @846
++ @833 + BCOCT3.5
++ @847 + BCOCT3.12
++ @1136 + BCOCT3.13
++ @849 + BCOCT3.3
++ @1137 + BCOCT3.11
++ @851 + BCOCT3.11
END

IF ~~ BCOCT3.5
SAY @852
IF ~~ THEN + BCOCT3.11
END

IF ~~ BCOCT3.6
SAY @853
IF ~~ THEN + BCOCT3.11
END

IF ~~ BCOCT3.7
SAY @854 
IF ~~ THEN EXIT
END

IF ~~ BCOCT3.8
SAY @855 
IF ~~ THEN EXIT
END

IF ~~ BCOCT3.9
SAY @1138 
IF ~~ THEN EXIT
END

IF ~~ BCOCT3.10
SAY @1139 
IF ~~ THEN EXIT
END

IF ~~ BCOCT3.11
SAY @858
++ @859 + BCOCT3.13
++ @860 + BCOCT3.13
++ @1140 + BCOCT3.14 
++ @862 + BCOCT3.15
++ @863 + BCOCT3.7
END

IF ~~ BCOCT3.12
SAY @864
IF ~~ THEN + BCOCT3.11
END

IF ~~ BCOCT3.13
SAY @865
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ BCOCT3.14
SAY @1141
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ BCOCT3.15
SAY @867
IF ~~ THEN EXIT
END

/* at rest */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CNeutralTalk","GLOBAL",8)~ THEN BEGIN CNLoveTalk4
SAY @1142
+ ~!Class(Player1,DRUID_ALL) !Class(Player1,CLERIC_ALL)~ + @1143 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",9) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT3.1
+ ~OR(4) Class(Player1,DRUID_ALL) Class(Player1,CLERIC_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~ + @1144 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",9) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT3.1
++ @1145 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",9) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT3.2
+ ~!Race(Player1,ELF)~ + @1146 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",9) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT3.3
++ @1147 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",9) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT3.2
++ @1148 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",9) RealSetGlobalTimer("P#CNeutralTalkTime","GLOBAL",COROM_TIMER)~ + COCT3.4
END

IF ~~ COCT3.1
SAY @1149
++ @1150 + COCT3Death
+ ~OR(4) Class(Player1,DRUID_ALL) Class(Player1,CLERIC_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~ + @1151 + COCT3.5
++ @1152 + COCT3.6
++ @1153 + COCT3.7
++ @1154 + COCT3.8
++ @1155 + COCT3Death
END

IF ~~ COCT3Death
SAY @1156
IF ~~ THEN DO ~Kill("coran") RestParty()~ EXIT
END

IF ~~ COCT3.2
SAY @1157
++ @1158 + COCT3Death
++ @1159 + COCT3.4
++ @1160 + COCT3.4
END

IF ~~ COCT3.3
SAY @1161
++ @1162 + COCT3Death
++ @1163 + COCT3.2
++ @1160 + COCT3.4
END

IF ~~ COCT3.4
SAY @1164
++ @1165 DO ~ReputationInc(-2)~ + COCT3Death
++ @1166 + COCT3.9
++ @1167 + COCT3.9
+ ~OR(2) Global("P#CoranLover","GLOBAL",1) Global("P#CoranLover","GLOBAL",2)~ + @1168 + COCT3.10
++ @1169 + COCT3.11
++ @1170 + COCT3.12
END

IF ~~ COCT3.5
SAY @1171
= @1172
= @1173
++ @1174 + COCT3.13
++ @1175 DO ~RestParty() SetGlobal("P#Co3Healer","GLOBAL", 1)~ EXIT
+ ~OR(4) Class(Player1,DRUID_ALL) Class(Player1,CLERIC_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~ + @1176 DO ~ RestParty() SetGlobal("P#Co3Healer","GLOBAL", 1)~ EXIT
++ @1177 + COCT3Death
END

IF ~~ COCT3.6
SAY @1178
++ @1179 + COCT3Death
++ @1154 + COCT3.8
++ @1180 + COCT3.5
END

IF ~~ COCT3.7
SAY @1181
++ @1179 + COCT3Death
++ @1154 + COCT3.8
++ @1180 + COCT3.5
END

IF ~~ COCT3.8
SAY @1182
++ @1179 + COCT3Death
+ ~Class(Player1,DRUID_ALL) Class(Player1,CLERIC_ALL)~ + @1183 + COCT3.5
++ @1184 + COCT3.5
END

IF ~~ COCT3.9
SAY @1185
++ @1186 + COCT3.14
++ @1187 + COCT3.14
++ @1188 + COCT3.14
++ @1189 DO ~ActionOverride(Player1, Kill(Player1))~ EXIT 
++ @1190 + COCT3.15
END

IF ~~ COCT3.10
SAY @1191
++ @1192 + COCT3Death
++ @1193 + COCT3.11
++ @1194 DO ~ RestParty() SetGlobal("P#Co3Marriage","GLOBAL", 1) ReputationInc(-2)~ EXIT
END

IF ~~ COCT3.11
SAY @1195
++ @1196 DO ~ReputationInc(-4)~ + COCT3Death
++ @1197 DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1) ReputationInc(-2) RestParty()~ EXIT
END

IF ~~ COCT3.12
SAY @1198
++ @1199 DO ~ReputationInc(-4)~ + COCT3Death
++ @1200 DO ~ RestParty() ReputationInc(-2)~ EXIT
++ @1201 + COCT3.16
END

IF ~~ COCT3.15
SAY @1202
++ @1199 DO ~ReputationInc(-4)~ + COCT3Death
++ @1200 DO ~ RestParty() ReputationInc(-2)~ EXIT
++ @1201 + COCT3.16
END

IF ~~ COCT3.13
SAY @1203
++ @1204 + COCT3Death
++ @1205 + COCT3Death
++ @1206 DO ~ RestParty() SetGlobal("P#Co3Healer","GLOBAL", 1)~ EXIT
+ ~OR(4) Class(Player1,DRUID_ALL) Class(Player1,CLERIC_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~ + @1176 DO ~ RestParty() SetGlobal("P#Co3Healer","GLOBAL", 1)~ EXIT
END

IF ~~ COCT3.14
SAY @1207
IF ~~ THEN DO ~ReputationInc(-8) Kill("coran") RestParty()~ EXIT
END

IF ~~ COCT3.16
SAY @1208
++ @1209 DO ~ReputationInc(-2)~ + COCT3Death
++ @1210 DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1) ReputationInc(-2) RestParty()~ EXIT 
++ @1211 DO ~ReputationInc(-2) RestParty()~ EXIT
END

/* ma1 */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#Co3Healer","GLOBAL", 2)~ THEN BEGIN CNMorning1
SAY @1212
++ @1213 DO ~SetGlobal("P#Co3Healer","GLOBAL",3)~ EXIT
++ @1214 DO ~SetGlobal("P#Co3Healer","GLOBAL",3) RestParty()~ EXIT
++ @1215 DO ~SetGlobal("P#Co3Healer","GLOBAL",3) RestParty()~ EXIT
++ @1216 DO ~SetGlobal("P#Co3Healer","GLOBAL",3) SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END

/* ma2 */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#Co3Marriage","GLOBAL", 2)~ THEN BEGIN CNMorning2
SAY @1217
++ @1218 DO ~SetGlobal("P#Co3Marriage","GLOBAL",3)~ + COMCT3.1
++ @1219 DO ~SetGlobal("P#Co3Marriage","GLOBAL",3)~ EXIT
++ @1220 DO ~SetGlobal("P#Co3Marriage","GLOBAL",3)~ EXIT
++ @1221 DO ~SetGlobal("P#Co3Marriage","GLOBAL",3)~ + COMCT3.2
++ @1222 DO ~SetGlobal("P#Co3Marriage","GLOBAL",3)~ + COMCT3.3
END

IF ~~ COMCT3.1
SAY @1223 
IF ~~ THEN
EXIT
END

IF ~~ COMCT3.2
SAY @1224 
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~ EXIT
END
 
IF ~~ COMCT3.3
SAY @1225
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CNeutralTalk","GLOBAL",10)~ THEN BEGIN CNLoveTalk5
SAY @1226
++ @1227 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",11)~ + COCT4.1
++ @1228 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",11)~ + COCT4.8
++ @1229 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",11)~ + COCT4.3
++ @1230 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",11)~ + COCT4.8
++ @1231 DO ~SetGlobal("P#CNeutralTalk","GLOBAL",11)~ + COCT4.4
END

IF ~~ COCT4.1
SAY @1232
++ @1233 + COCT4.5
++ @1234 + COCT4.7
++ @1235 + COCT4.8
++ @1236 DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
++ @1237 + COCT4.9
END

IF ~~ COCT4.4
SAY @1238 
IF ~~ THEN + COCT4.5
END

IF ~~ COCT4.5
SAY @1239
IF ~~ THEN + COCT4.6
END

IF ~~ COCT4.6
SAY @1240
++ @1241 + COCT4.10
++ @1242 DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
++ @1243 + COCT4.11
++ @1244 + COCT4.12
++ @1245 + COCT4.13
END

IF ~~ COCT4.3
SAY @1246
++ @1247 + COCT4.14
++ @1248 + COCT4.14
++ @1249 + COCT4.15
++ @1250 + COCT4.7
END

IF ~~ COCT4.7
SAY @1251
IF ~~ THEN + COCT4.5
END

IF ~~ COCT4.8
SAY @1252
IF ~~ THEN + COCT4.5
END

IF ~~ COCT4.9
SAY @1253
++ @1254 + COCT4.16
++ @1255 + COCT4.17
++ @1256 + COCT4.8
++ @1257 + COCT4.18
END

IF ~~ COCT4.10
SAY @1258
++ @1259 + COCT4.19
++ @1260 + COCT4.20
++ @1261 DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
++ @1262 + COCT4.20
END

IF ~~ COCT4.11
SAY @1263
++ @1264 + COCT4.21
++ @1265 DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
++ @1266 + COCT4.12
++ @1267 + COCT4.13
END

IF ~~ COCT4.12
SAY @1268
= @1269
= @1270
= @1271
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",5)~ EXIT
END

IF ~~ COCT4.13
SAY @1272
++ @1273 + COCT4.22
++ @1274 + COCT4.19
++ @1275 + COCT4.21
++ @1276 + COCT4.23
++ @1277 + COCT4.21
END

IF ~~ COCT4.14
SAY @1278 
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
END

IF ~~ COCT4.15
SAY @1279
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",5)~ EXIT
END

IF ~~ COCT4.16
SAY @1280
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
END

IF ~~ COCT4.17
SAY @1281 
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
END

IF ~~ COCT4.18
SAY @1282
IF ~~ THEN + COCT4.5
END

IF ~~ COCT4.19
SAY @1283
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
END

IF ~~ COCT4.20
SAY @1284
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
END

IF ~~ COCT4.21
SAY @1285
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",5)~ EXIT
END

IF ~~ COCT4.22
SAY @1286
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
END

IF ~~ COCT4.23
SAY @1287
IF ~~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4)~ EXIT
END

/* boredneutral */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CNBoredTalk","GLOBAL",2)~ THEN BEGIN CNBLoveTalk1
SAY @897
++ @898 DO ~SetGlobal("P#CNBoredTalk","GLOBAL",3) RealSetGlobalTimer("P#CNBoredTalkTime","GLOBAL",COROM_TIMER)~ + NCOBT1.1
++ @899 DO ~SetGlobal("P#CNBoredTalk","GLOBAL",3) RealSetGlobalTimer("P#CNBoredTalkTime","GLOBAL",COROM_TIMER)~ + NCOBT1.2
++ @900 DO ~SetGlobal("P#CNBoredTalk","GLOBAL",3) RealSetGlobalTimer("P#CNBoredTalkTime","GLOBAL",COROM_TIMER)~ + NCOBT1.3
++ @901 DO ~SetGlobal("P#CNBoredTalk","GLOBAL",3) RealSetGlobalTimer("P#CNBoredTalkTime","GLOBAL",COROM_TIMER)~ + NCOBT1.4
+ ~Class(Player1,DRUID_ALL)~ + @902 DO ~SetGlobal("P#CNBoredTalk","GLOBAL",3) RealSetGlobalTimer("P#CNBoredTalkTime","GLOBAL",COROM_TIMER)~ + NCOBT1.5
END

IF ~~ NCOBT1.1
SAY @903
++ @904 + NCOBT1.6
++ @905 + NCOBT1.7
++ @906 + NCOBT1.8
END

IF ~~ NCOBT1.2
SAY @907
IF ~~ THEN + NCOBT1.2A
END

IF ~~ NCOBT1.5
SAY @908
IF ~~ THEN + NCOBT1.2A
END

IF ~~ NCOBT1.2A
SAY @909 
++ @910 + NCOBT1.9
++ @911 + NCOBT1.10
++ @912 + NCOBT1.11
END

IF ~~ NCOBT1.3
SAY @913
++ @1288 + NCOBT1.8
++ @914 + NCOBT1.12
++ @1289 + NCOBT1.13
++ @916 + NCOBT1.14
END

IF ~~ NCOBT1.4
SAY @1290
++ @1291 + NCOBT1.15
++ @1292 + NCOBT1.16
++ @1293 + NCOBT1.17
END

IF ~~ NCOBT1.6
SAY @1294 
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.7
SAY @1295
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.8
SAY @1296
++ @1297 + NCOBT1.18
++ @1298 + NCOBT1.19
++ @926 + NCOBT1.19
++ @1299 + NCOBT1.20
END

IF ~~ NCOBT1.9
SAY @928
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.10
SAY @929
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.11
SAY @930
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.12
SAY @931
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.13
SAY @1300
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.14
SAY @1301
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.15
SAY @934
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.16
SAY @935
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.17
SAY @936
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.18
SAY @937
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.19
SAY @938
IF ~~ THEN EXIT
END

IF ~~ NCOBT1.20
SAY @1302
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CNBoredTalk","GLOBAL",4)~ THEN BEGIN CNBLoveTalk2
SAY @940
= @941
++ @1303 DO ~SetGlobal("P#CNBoredTalk","GLOBAL",5)~ + NCOBT2.1
++ @943 DO ~SetGlobal("P#CNBoredTalk","GLOBAL",5)~ + NCOBT2.2
++ @944 DO ~SetGlobal("P#CNBoredTalk","GLOBAL",5)~ + NCOBT2.3
END

IF ~~ THEN NCOBT2.1
SAY @945
++ @946 + NCOBT2.4
++ @947 + NCOBT2.4
++ @948 + NCOBT2.5
END

IF ~~ THEN NCOBT2.2
SAY @949
++ @1304 + NCOBT2.5
++ @951 + NCOBT2.6
+ ~Race(Player1,ELF)~ + @1305 + NCOBT2.7
++ @953 + NCOBT2.8
END

IF ~~ THEN NCOBT2.3
SAY @954
++ @955 + NCOBT2.9
++ @956 + NCOBT2.10
++ @957 + NCOBT2.9
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1306 + NCOBT2.11
++ @959 + NCOBT2.12
END

IF ~~ THEN NCOBT2.4
SAY @960
++ @1307 + NCOBT2.5
++ @951 + NCOBT2.6
+ ~Race(Player1,ELF)~ + @1308 + NCOBT2.7
++ @953 + NCOBT2.8
END

IF ~~ THEN NCOBT2.5
SAY @1309
++ @968 + NCOBT2.13
++ @964 + NCOBT2.14
++ @965 + NCOBT2.15
+ ~Race(Player1,ELF)~ + @966 + NCOBT2.16
END

IF ~~ THEN NCOBT2.6
SAY @967
++ @963 + NCOBT2.13
++ @964 + NCOBT2.14
++ @965 + NCOBT2.15
+ ~Race(Player1,ELF)~ + @966 + NCOBT2.16
END

IF ~~ THEN NCOBT2.7
SAY @969
++ @963 + NCOBT2.13
++ @964 + NCOBT2.14
++ @965 + NCOBT2.15
+ ~Race(Player1,ELF)~ + @966 + NCOBT2.16
END

IF ~~ THEN NCOBT2.8
SAY @970
++ @971 + NCOBT2.17
++ @1310 + NCOBT2.18
++ @1311 + NCOBT2.19
END

IF ~~ THEN NCOBT2.9
SAY @1312
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN NCOBT2.10
SAY @1313
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN NCOBT2.11
SAY @1314
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN NCOBT2.12
SAY @1315
++ @978 + NCOBT2.20
++ @1316 + NCOBT2.20
++ @980 + NCOBT2.13
END 

IF ~~ THEN NCOBT2.13
SAY @981
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN NCOBT2.14
SAY @982
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN NCOBT2.15
SAY @983
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN NCOBT2.16
SAY @984
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN NCOBT2.17
SAY @985
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN NCOBT2.18
SAY @986
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1) LeaveParty() EscapeArea()~
EXIT
END

IF ~~ THEN NCOBT2.19
SAY @987
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

IF ~~ THEN NCOBT2.20
SAY @988
IF ~~ THEN DO ~RestParty() SetGlobal("P#CoranRomanceInactive","GLOBAL",1)~
EXIT
END

/* neutral sexy */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CNSexTalk","GLOBAL",1)~ THEN BEGIN CNSLoveTalk1
SAY @1317
= @1318
= @1319
= @1320
= @1321
++ @1322 DO ~RestParty() SetGlobal("P#CNSexTalk","GLOBAL",3)~ EXIT
++ @1323 DO ~RestParty() SetGlobal("P#CNSexTalk","GLOBAL",3)~ EXIT
++ @1324 DO ~RestParty() SetGlobal("P#CNSexTalk","GLOBAL",3)~ EXIT
++ @1325 DO ~RestParty() SetGlobal("P#CNSexTalk","GLOBAL",3)~ EXIT
++ @1326 DO ~RestParty() SetGlobal("P#CNSexTalk","GLOBAL",3)~ EXIT
++ @1327 DO ~RestParty() SetGlobal("P#CNSexTalk","GLOBAL",3)~ EXIT
++ @1328 DO ~RestParty() SetGlobal("P#CNSexTalk","GLOBAL",3)~ EXIT
++ @1329 DO ~RestParty() SetGlobal("P#CorMonologue", "GLOBAL",2) SetGlobal("P#CNSexTalk","GLOBAL",3)~ EXIT
END

/* babytalks */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGBabyTalk","GLOBAL",2)~ THEN BEGIN CGBabyTalk1
SAY @1330
++ @1331 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",3) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB1.1
++ @1332 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",3) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB1.2
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @1333 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",3) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB1.3
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1334 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",3) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB1.4
++ @1335 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",3) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB1.5
END

IF ~~ COBAB1.1
SAY @1336
++ @1337 + COBAB1.6
++ @1338 + COBAB1.7
++ @1339 + COBAB1.8
++ @1340 + COBAB1.9
END

IF ~~ COBAB1.2
SAY @1341
++ @1338 + COBAB1.7
++ @1342 + COBAB1.8
++ @1343 + COBAB1.10
END

IF ~~ COBAB1.3
SAY @1344
++ @1345 + COBAB1.8
++ @1346 + COBAB1.11
++ @1347 + COBAB1.12
++ @1348 + COBAB1.11
END

IF ~~ COBAB1.4
SAY @1349
++ @1350 + COBAB1.13
++ @1351 + COBAB1.14
++ @1346 + COBAB1.11
END

IF ~~ COBAB1.5
SAY @1352
= @1353
= @1354
++ @1355 + COBAB1.15
++ @1356 + COBAB1.16
++ @1357 + COBAB1.17
++ @1358 EXIT
END

IF ~~ COBAB1.6
SAY @1359
++ @1360 EXIT
++ @1361 EXIT
++ @1362 + COBAB1.18
END

IF ~~ COBAB1.7
SAY @1363
++ @1364 + COBAB1.8
++ @1346 + COBAB1.11
++ @1365 + COBAB1.12
END

IF ~~ COBAB1.8
SAY @1366
++ @1367 EXIT
++ @1368 EXIT
++ @1369 + COBAB1.16
++ @1370 + COBAB1.10
END

IF ~~ COBAB1.9
SAY @1371
IF ~~ THEN EXIT
END

IF ~~ COBAB1.10
SAY @1372
IF ~~ THEN EXIT
END

IF ~~ COBAB1.11
SAY @1373
IF ~~ THEN EXIT
END

IF ~~ COBAB1.12
SAY @1374
++ @1375 EXIT
++ @1376 + COBAB1.19
++ @1377 + COBAB1.11
END

IF ~~ COBAB1.13
SAY @1378
++ @1379 EXIT
++ @1380 EXIT
++ @1381 EXIT
++ @1382 EXIT
END

IF ~~ COBAB1.14
SAY @1383
IF ~~ THEN EXIT
END

IF ~~ COBAB1.15
SAY @1384
IF ~~ THEN + COBAB1.10
END

IF ~~ COBAB1.16
SAY @1385
++ @223 + COBAB1.20
++ @1386 + COBAB1.19
++ @1387 EXIT
++ @1388 + COBAB1.20
END

IF ~~ COBAB1.17
SAY @1389
IF ~~ THEN EXIT
END

IF ~~ COBAB1.18
SAY @1390
IF ~~ THEN EXIT
END

IF ~~ COBAB1.19
SAY @1391 
IF ~~ THEN EXIT
END

IF ~~ COBAB1.20
SAY @1392
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGBabyTalk","GLOBAL",4)~ THEN BEGIN CGBabyTalk2
SAY @1393
++ @1394 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",5) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB2.1
++ @1395 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",5) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB2.2
++ @1396 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",5) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB2.3
++ @1397 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",5) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB2.4
++ @1398 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",5) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~ + COBAB2.2
END

IF ~~ COBAB2.1
SAY @1399
IF ~~ THEN + COBAB2.2
END

IF ~~ COBAB2.2
SAY @1400
IF ~~ THEN + COBAB2.5
END

IF ~~ COBAB2.3
SAY @1401
++ @1402 + COBAB2.6
++ @1403 + COBAB2.7
++ @1404 + COBAB2.7
END

IF ~~ COBAB2.4
SAY @1405
++ @1406 + COBAB2.1
++ @1407 EXIT
++ @1408 + COBAB2.8
END

IF ~~ COBAB2.5
SAY @1409
++ @1410 + COBAB2.9
++ @1411 + COBAB2.9
++ @1412 EXIT
END

IF ~~ COBAB2.6
SAY @1413
++ @1414 + COBAB2.1
++ @1415 EXIT
++ @1416 + COBAB2.8
END

IF ~~ COBAB2.7
SAY @1417
++ @1414 + COBAB2.1
++ @1415 EXIT
++ @1416 + COBAB2.8
END

IF ~~ COBAB2.8 
SAY @1418
++ @1414 + COBAB2.1
++ @1419 EXIT
++ @1420 EXIT
END

IF ~~ COBAB2.9
SAY @1421 
IF ~~ THEN + COBAB2.10
END

IF ~~ COBAB2.10
SAY @1422
IF ~~ THEN + COBAB2.11
END

IF ~~ COBAB2.11
SAY @1423
IF ~~ THEN + COBAB2.12
END

IF ~~ COBAB2.12
SAY @1424
IF ~~ THEN + COBAB2.13
END

IF ~~ COBAB2.13
SAY @1425
IF ~~ THEN + COBAB2.14
END

IF ~~ COBAB2.14
SAY @1426
++ @1427 + COBAB2.15
++ @1428 + COBAB2.16
++ @1429 EXIT
END

IF ~~ COBAB2.15
SAY @1430 
IF ~~ THEN EXIT
END

IF ~~ COBAB2.16
SAY @1431 
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CGBabyTalk","GLOBAL",6)~ THEN BEGIN CGBabyTalk3
SAY @1432
++ @1433 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",7)~ + COBAB3.1
++ @1434 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",7)~ + COBAB3.2
+ ~!Global("P#CoranVow","GLOBAL",1)~ + @1435 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",7)~ + COBAB3.4A
+ ~Global("P#CoranVow","GLOBAL",1)~ + @1435 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",7)~ + COBAB3.4B
+ ~Global("P#CoranVow","GLOBAL",1)~ + @1436 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",7)~ + COBAB3.5A
+ ~!Global("P#CoranVow","GLOBAL",1) RandomNum(2,1)~ + @1436 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",7)~ + COBAB3.5A
+ ~!Global("P#CoranVow","GLOBAL",1) RandomNum(2,2)~ + @1436 DO ~SetGlobal("P#CGBabyTalk","GLOBAL",7)~ + COBAB3.5B
END

IF ~~ COBAB3.1
SAY @1437
++ @1438 + COBAB3.6
++ @1439 + COBAB3.6
+ ~Global("P#CoranVow","GLOBAL",1)~ + @1440 + COBAB3.7A
+ ~!Global("P#CoranVow","GLOBAL",1) RandomNum(2,1)~ + @1440 + COBAB3.7A
+ ~!Global("P#CoranVow","GLOBAL",1) RandomNum(2,2)~ + @1440 + COBAB3.7B
+ ~Class(Player1,THIEF_ALL)~ + @1441 + COBAB3.6
END

IF ~~ COBAB3.2
SAY @1442
+ ~!Global("P#CoranVow","GLOBAL",1)~ + @1443 + COBAB3.4A
+ ~Global("P#CoranVow","GLOBAL",1)~ + @1443 + COBAB3.4B
++ @1444 + COBAB3.9
+ ~!Global("P#CoranVow","GLOBAL",1) RandomNum(2,1)~ + @1445 + COBAB3.5A
+ ~!Global("P#CoranVow","GLOBAL",1) RandomNum(2,2)~ + @1445 + COBAB3.5B
+ ~Global("P#CoranVow","GLOBAL",1)~ + @1446 + COBAB3.4B
END

IF ~~ COBAB3.4A
SAY @1447
IF ~~ THEN DO ~LeaveParty() EscapeArea() SetGlobal("%KICKED_OUT%","LOCALS",2)~ EXIT
END 

IF ~~ COBAB3.5A
SAY @1448
IF ~~ THEN DO ~LeaveParty() EscapeArea() SetGlobal("%KICKED_OUT%","LOCALS",2)~ EXIT
END

IF ~~ COBAB3.5B
SAY @1448
IF ~~ THEN DO ~LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",2) SetGlobal("P#CoranMoves","GLOBAL", 1)~ EXIT
END

IF ~~ COBAB3.4B
SAY @1449
+ ~RandomNum(2,1)~ + @1450 + COBAB3.10A
+ ~RandomNum(2,2)~ + @1450 + COBAB3.10B
++ @1451 DO ~LeaveParty() SetGlobal("P#CoranMoves","GLOBAL",1)~ EXIT
+ ~RandomNum(2,1)~ + @1452 + COBAB3.5A
+ ~RandomNum(2,2)~ + @1453 + COBAB3.5B
END

IF ~~ COBAB3.6
SAY @1454
++ @1455 DO ~ GiveGoldForce(-1000) ReputationInc(1)~ + COBAB3.9
+ ~!Global("P#CoranVow","GLOBAL",1) RandomNum(2,1)~ + @1456 DO ~ GiveGoldForce(-1000) ReputationInc(1)~ + COBAB3.5A
+ ~!Global("P#CoranVow","GLOBAL",1) RandomNum(2,2)~ + @1456 DO ~ GiveGoldForce(-1000) ReputationInc(1)~ + COBAB3.5B
+ ~Global("P#CoranVow","GLOBAL",1)~ + @1456 DO ~GiveGoldForce(-1000) ReputationInc(1)~ + COBAB3.4B
++ @1457 DO ~GiveGoldForce(-1000) ReputationInc(1)~ + COBAB3.11
END

IF ~~ COBAB3.7A
SAY @1458
IF ~~ THEN DO ~GiveGoldForce(-1000) ReputationInc(1) LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",2) SetGlobal("P#CoranMoves","GLOBAL",1)~ EXIT
END

IF ~~ COBAB3.7B
SAY @1458
IF ~~ THEN DO ~GiveGoldForce(-1000) ReputationInc(1) LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",2) EscapeArea()~ EXIT
END

IF ~~ COBAB3.9
SAY @1459
IF ~~ THEN DO ~ LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",2) SetGlobal("P#CoranMoves", "GLOBAL", 1)~
EXIT
END

IF ~~ COBAB3.10A
SAY @1460
IF ~~ THEN DO ~LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",2) SetGlobal("P#CoranMoves", "GLOBAL", 1)~
EXIT
END

IF ~~ COBAB3.10B
SAY @1461
IF ~~ THEN DO ~LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",2) EscapeArea()~
EXIT
END

IF ~~ COBAB3.11
SAY @1462 
IF ~RandomNum(2,1)~ THEN + COBAB3.5A
IF ~RandomNum(2,2)~ THEN + COBAB3.5B
END

/* Commitment Talks */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CorCommitTalk","GLOBAL",1)~ THEN BEGIN Commitment
SAY @1463
++ @1464 DO ~SetGlobal("P#CorCommitTalk","GLOBAL",2)~ + CORE1.1
++ @1465 DO ~SetGlobal("P#CorCommitTalk","GLOBAL",2)~ + CORE1.2
++ @1466 DO ~SetGlobal("P#CorCommitTalk","GLOBAL",2)~ + CORE1.3
END

IF ~~ CORE1.1
SAY @1467 
IF ~~ THEN + CORE1.3
END

IF ~~ CORE1.2
SAY @1468 
IF ~Global("X#RedHair","GLOBAL",1)~ THEN + CORE1.4A
IF ~Global("X#BlondHair","GLOBAL",1)~ THEN + CORE1.4B
IF ~!Global("X#RedHair","GLOBAL",1) !Global("X#BlondHair","GLOBAL",1)~ THEN + CORE1.4C
END

IF ~~ CORE1.4A
SAY @1469
++ @1470 + CORE1.5
++ @1471 + CORE1.6
++ @1472 + CORE1.7
++ @1473 + CORE1.8
END

IF ~~ CORE1.4B
SAY @1469
++ @1470 + CORE1.5
++ @1471 + CORE1.6
++ @1472 + CORE1.7
++ @1473 + CORE1.8
END

IF ~~ CORE1.4C
SAY @1469
++ @1470 + CORE1.5
++ @1471 + CORE1.6
++ @1472 + CORE1.7
++ @1473 + CORE1.8
END

IF ~~ CORE1.5
SAY @1474
++ @1473 + CORE1.8
++ @1475 + CORE1.6
++ @1476 DO ~RestParty()~ EXIT
++ @1477 + CORE1.9
END

IF ~~ CORE1.6
SAY @1478
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ CORE1.7
SAY @1479
IF ~~ THEN + CORE1.8
END

IF ~~ CORE1.9
SAY @1480 
IF ~~ THEN + CORE1.8
END

IF ~~ CORE1.3
SAY @1481
++ @1482 + CORE1.10
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1483 + CORE1.11
++ @1484 DO ~RestParty()~ EXIT
++ @1485 + CORE1.10
++ @1486 + CORE1.12
+ ~!Race(Player1,ELF)~ + @1487 + CORE1.10
END

IF ~~ CORE1.8
SAY @1488
++ @1482 + CORE1.10
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1483 + CORE1.11
++ @1484 DO ~RestParty()~ EXIT
++ @1485 + CORE1.10
++ @1486 + CORE1.12
+ ~!Race(Player1,ELF)~ + @1487 + CORE1.10
END

IF ~~ CORE1.10
SAY @1489
++ @1490 + CORE1.13
++ @1491 + CORE1.14
++ @1492 + CORE1.13
++ @1493 + CORE1.15
END

IF ~~ CORE1.11
SAY @1494
IF ~~ THEN + CORE1.10
END

IF ~~ CORE1.12
SAY @1495
IF ~~ THEN + CORE1.10
END

IF ~~ CORE1.13
SAY @1496
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ CORE1.14
SAY @1497
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ CORE1.15
SAY @1498
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranMirrorFlirt","GLOBAL",1)~ THEN BEGIN CoranMirrorFlirt
SAY @1499
= @1500
++ @1501 DO ~SetGlobal("X#CoranMirrorFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COMIFL1.1
++ @1502 DO ~SetGlobal("X#CoranMirrorFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COMIFL1.2
++ @1503 DO ~SetGlobal("X#CoranMirrorFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COMIFL1.3
++ @1504 DO ~SetGlobal("X#CoranMirrorFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COMIFL1.4
END

IF ~~ COMIFL1.1
SAY @1505
++ @1506 + COMIFL1.5
++ @1507 + COMIFL1.6
+ ~Global("X#AskedCrown","GLOBAL",0)~ + @1503 DO ~SetGlobal("X#AskedCrown","GLOBAL",1)~ + COMIFL1.3
+ ~OR(3) Class(Player1,BARD_ALL) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ + @1508 + COMIFL1.7
++ @1509 + COMIFL1.9
++ @1510 + COMIFL1.11
END

IF ~~ COMIFL1.2
SAY @1511
++ @1506 + COMIFL1.5
++ @1507 + COMIFL1.6
+ ~Global("X#AskedCrown","GLOBAL",0)~ + @1503 DO ~SetGlobal("X#AskedCrown","GLOBAL",1)~ + COMIFL1.3
+ ~OR(3) Class(Player1,BARD_ALL) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ + @1508 + COMIFL1.7
++ @1509 + COMIFL1.9
++ @1510 + COMIFL1.11
END

IF ~~ COMIFL1.3
SAY @1512
++ @1513 + COMIFL1.8
++ @1514 + COMIFL1.1
+ ~!Race(Player1,ELF)~ + @1515 + COMIFL1.10
END

IF ~~ COMIFL1.4
SAY @1516
IF ~~ THEN + COMIFL1.2
END

IF ~~ COMIFL1.5
SAY @1517
= @1518
IF ~~ THEN DO ~RestParty()~ EXIT
END 

IF ~~ COMIFL1.6
SAY @1519
= @1518
IF ~~ THEN DO ~RestParty()~ EXIT
END 

IF ~~ COMIFL1.7
SAY @1520
++ @1521 + COMIFL1.12
++ @1522 + COMIFL1.8
++ @1523 + COMIFL1.13
++ @1524 + COMIFL1.6
END

IF ~~ COMIFL1.8
SAY @1525
IF ~~ THEN DO ~RestParty()~ EXIT
END 

IF ~~ COMIFL1.9
SAY @1526
= @1527
IF ~~ THEN DO ~RestParty()~ EXIT
END 

IF ~~ COMIFL1.10
SAY @1528
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ COMIFL1.11
SAY @1529
= @1530
= @1527
IF ~~ THEN DO ~RestParty()~ EXIT
END 

IF ~~ COMIFL1.12
SAY @1531
= @1530
= @1527
IF ~~ THEN DO ~RestParty()~ EXIT
END 

IF ~~ COMIFL1.13
SAY @1532
= @1530
= @1527
IF ~~ THEN DO ~RestParty()~ EXIT
END 

IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranDungeonFlirt","GLOBAL",1)~ THEN BEGIN CoranDungeonFlirt
SAY @1533
++ @1534 DO ~SetGlobal("X#CoranDungeonFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",900)~ + CODUFL1.1
++ @1535 DO ~SetGlobal("X#CoranDungeonFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",900)~ + CODUFL1.2
++ @1536 DO ~SetGlobal("X#CoranDungeonFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",900)~ + CODUFL1.3
END

IF ~~ CODUFL1.1
SAY @1537
= @1538
++ @1535 + CODUFL1.2
++ @1536 + CODUFL1.3
++ @1539 + CODUFL1.5
END

IF ~~ CODUFL1.2
SAY @1540
++ @1541 + CODUFL1.4
++ @1536 + CODUFL1.3
++ @1542 + CODUFL1.5
END

IF ~~ CODUFL1.3
SAY @1543
= @1544
++ @1545 + CODUFL1.8
++ @1546 + CODUFL1.6
++ @1539 + CODUFL1.5
END

IF ~~ CODUFL1.4
SAY @1547
++ @1548 + CODUFL1.7
++ @1549 + CODUFL1.5
END

IF ~~ CODUFL1.5
SAY @1550
IF ~~ THEN EXIT
END

IF ~~ CODUFL1.6
SAY @1551
IF ~~ THEN EXIT
END

IF ~~ CODUFL1.7
SAY @1552
IF ~~ THEN EXIT
END

IF ~~ CODUFL1.8
SAY @1553
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranLilacFlirt","GLOBAL",1)~ THEN BEGIN CoranLilacFlirt
SAY @1554
++ @1555 DO ~SetGlobal("X#CoranLilacFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",900)~ + COLIFL1.1
++ @1556 DO ~SetGlobal("X#CoranLilacFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",900)~ + COLIFL1.2
++ @1557 DO ~SetGlobal("X#CoranLilacFlirt","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",900)~ + COLIFL1.3
END

IF ~~ COLIFL1.1
SAY @1558
= @1559
++ @1560 + COLIFL1.4
++ @465 + COLIFL1.5
++ @1561 + COLIFL1.6
END

IF ~~ COLIFL1.2A
SAY @1562
++ @1563 + COLIFL1.7
++ @1564 + COLIFL1.8
++ @1565 + COLIFL1.9
END

IF ~~ COLIFL1.2
SAY @1566
++ @1563 + COLIFL1.7
++ @1564 + COLIFL1.8
++ @1565 + COLIFL1.9
END

IF ~~ COLIFL1.3
SAY @1567
++ @1568 + COLIFL1.10
++ @1569 + COLIFL1.2A
END

IF ~~ COLIFL1.4
SAY @1570
= @1571
++ @1572 + COLIFL1.11
++ @1573 + COLIFL1.12
++ @1565 + COLIFL1.9
END

IF ~~ COLIFL1.5
SAY @1574
++ @1572 + COLIFL1.11
++ @1573 + COLIFL1.12
++ @1565 + COLIFL1.9
END

IF ~~ COLIFL1.6
SAY @1575
IF ~~ THEN EXIT
END

IF ~~ COLIFL1.7
SAY @1576
++ @1572 + COLIFL1.11
++ @1565 + COLIFL1.9
END

IF ~~ COLIFL1.8
SAY @1577
++ @1572 + COLIFL1.11
++ @1565 + COLIFL1.9
END

IF ~~ COLIFL1.9
SAY @1578
++ @1579 + COLIFL1.11
++ @1580 EXIT
END

IF ~~ COLIFL1.10
SAY @1581
++ @1572 + COLIFL1.11
++ @1582 + COLIFL1.12
++ @1565 + COLIFL1.9
END

IF ~~ COLIFL1.11
SAY @1583
= @1584
= @1585
= @1586
++ @1587 + COLIFL1.14
++ @1588 + COLIFL1.13
++ @1589 EXIT
END

IF ~~ COLIFL1.12
SAY @1590
++ @1591 + COLIFL1.11
++ @1592 EXIT
END

IF ~~ COLIFL1.13
SAY @1593
++ @1594 + COLIFL1.15
++ @1595 + COLIFL1.16
++ @1596 + COLIFL1.14
++ @1597 EXIT
END

IF ~~ COLIFL1.14
SAY @1598
= @1599
++ @1600 + COLIFL1.16
++ @1601 + COLIFL1.16
++ @1602 EXIT
+ ~Class(Player1,DRUID_ALL)~ + @1603 + COLIFL1.17
END

IF ~~ COLIFL1.15
SAY @1604
IF ~~ THEN EXIT
END

IF ~~ COLIFL1.16
SAY @1605
IF ~~ THEN EXIT
END

IF ~~ COLIFL1.17
SAY @1606
= @1605
IF ~~ THEN EXIT
END

/* Farewell Talk */
IF WEIGHT #-3 ~%BGT_VAR% Global("P#CoranFarewell","GLOBAL",1)~ THEN BEGIN CoranFarewell
SAY @1607
= @1608
= @1609
= @1610
= @1611
= @1612
IF ~~ THEN DO ~SetGlobal("P#CoranFarewell","GLOBAL",2)~ EXIT
END

END

APPEND ~%CORAN_POST%~

IF WEIGHT #-100 ~%BGT_VAR% Global("P#CoranMoves","GLOBAL",2)~ THEN BEGIN CoranBack
SAY @1613
++ @1614 DO ~SetGlobal("P#CoranMoves","GLOBAL",3) SetGlobal("P#CoranBack","GLOBAL",2)~ + COBAB4.1
++ @1615 DO ~SetGlobal("P#CoranMoves","GLOBAL",3) SetGlobal("P#CoranBack","GLOBAL",2)~ + COBAB4.2
++ @1616 DO ~SetGlobal("P#CoranMoves","GLOBAL",3) SetGlobal("P#CoranBack","GLOBAL",2)~ + COBAB4.2
END

IF ~~ COBAB4.1
SAY @1617
++ @1618 + COBAB4.3
++ @1619 + COBAB4.3
++ @1620 + COBAB4.4
END

IF ~~ COBAB4.2
SAY @1621
++ @1618 + COBAB4.3
++ @1619 + COBAB4.3
++ @1620 + COBAB4.4
END

IF ~~ COBAB4.3
SAY @1622
IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ COBAB4.4
SAY @1623
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1) EscapeArea()~ EXIT
END

END

CHAIN3 ~%MINSC_BANTER%~ MICOROM1
@1624
END ~%CORAN_JOINED%~ COLT10.2A

