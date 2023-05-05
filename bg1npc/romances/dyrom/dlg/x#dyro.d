ADD_TRANS_ACTION ~%tutu_var%TAMOKO~ BEGIN 16 18 END BEGIN END
~SetGlobal("X#DynaTamokoSarevok","GLOBAL",1) SetGlobalTimer("X#DynaTamFlirt","GLOBAL",1800)~

BEGIN X#SETTA

APPEND ~%DYNAHEIR_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",2)~ THEN BEGIN X#DYLoveTalk1
SAY @0
++ @1 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO1.1
++ @2 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO1.2
++ @3 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO1.3
++ @4 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO1.4
++ @5 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO1.1
END

IF ~~ DYRO1.1
SAY @6
++ @7 + DYRO1.5
++ @8 + DYRO1.6
++ @9 + DYRO1.3
++ @10 + DYRO1.7
++ @11 + DYRO1.2
END

IF ~~ THEN DYRO1.2
SAY @12
IF ~~ THEN + DYRO1.2A
END

IF ~~ THEN DYRO1.2A
SAY @13
++ @14 + DYRO1.8
++ @15 + DYRO1.8
++ @16 + DYRO1.9
++ @17 + DYRO1.8
END

IF ~~ DYRO1.3
SAY @18
++ @19 + DYRO1.10
++ @20 + DYRO1.11
++ @21 + DYRO1.2
++ @22 + DYRO1.12
END

IF ~~ DYRO1.4
SAY @23
++ @24 + DYRO1.8
++ @25 + DYRO1.5
++ @26 + DYRO1.13
+ ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ + @27 + DYRO1.13
END


IF ~~ DYRO1.5
SAY @28
++ @29 EXIT
++ @30 EXIT
++ @31 + DYRO1.12
++ @32 + DYRO1.14
END

IF ~~ DYRO1.6
SAY @33
++ @34 + DYRO1.5
++ @35 + DYRO1.15
++ @36 + DYRO1.16
++ @37 + DYRO1.8
END

IF ~~ DYRO1.7
SAY @38
++ @39 + DYRO1.9
++ @40 + DYRO1.5
++ @41 + DYRO1.12
++ @42 + DYRO1.13
+ ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ + @27 + DYRO1.13
END

IF ~~ DYRO1.8
SAY @43
++ @39 + DYRO1.9
++ @40 + DYRO1.5
++ @41 + DYRO1.12
++ @42 + DYRO1.13
+ ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ + @27 + DYRO1.13
END

IF ~~ DYRO1.10
SAY @44
++ @39 + DYRO1.9
++ @40 + DYRO1.5
++ @41 + DYRO1.12
++ @42 + DYRO1.13
+ ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ + @27 + DYRO1.13
END

IF ~~ DYRO1.15
SAY @45
++ @39 + DYRO1.9
++ @40 + DYRO1.5
++ @41 + DYRO1.12
++ @42 + DYRO1.13
+ ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ + @27 + DYRO1.13
++ @46 + DYRO1.14
END

IF ~~ DYRO1.16
SAY @47
++ @39 + DYRO1.9
++ @40 + DYRO1.5
++ @48 + DYRO1.12
++ @42 + DYRO1.13
+ ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ + @27 + DYRO1.13
++ @46 + DYRO1.14
END

IF ~~ DYRO1.9
SAY @49
IF ~~ THEN EXIT
END

IF ~~ DYRO1.11
SAY @50
++ @51 + DYRO1.14
++ @52 EXIT
++ @31 + DYRO1.12
++ @32 + DYRO1.14
END

IF ~~ DYRO1.12
SAY @53
++ @54 + DYRO1.17
++ @55 + DYRO1.17
++ @56 + DYRO1.18
++ @57 + DYRO1.19
END

IF ~~ DYRO1.13
SAY @58
IF ~~ THEN EXIT
END

IF ~~ DYRO1.14
SAY @59
IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN EXTERN ~%MINSC_JOINED%~ DYRO1.1Minsc
IF ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN EXIT
END

IF ~~ DYRO1.17
SAY @60
IF ~~ THEN EXIT
END

IF ~~ DYRO1.18
SAY @61
IF ~~ THEN EXIT
END

IF ~~ DYRO1.19
SAY @62
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",4)~ THEN BEGIN X#DYLoveTalk2
SAY @63
++ @64 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO2.1
++ @65 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO2.2
++ @66 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO2.3
++ @67 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO2.4
END

IF ~~ DYRO2.1
SAY @68
++ @69 + DYRO2.5
++ @70 + DYRO2.5
++ @71 + DYRO2.6
++ @72 + DYRO2.7
++ @73 + DYRO2.8
END

IF ~~ DYRO2.2
SAY @74
++ @75 + DYRO2.9
++ @76 + DYRO2.10
++ @77 + DYRO2.11
++ @78 + DYRO2.15
END

IF ~~ DYRO2.3
SAY @79
++ @69 + DYRO2.5
++ @80 + DYRO2.5
++ @81 + DYRO2.6
++ @72 + DYRO2.7
++ @73 + DYRO2.8
END

IF ~~ DYRO2.4
SAY @82
++ @83 + DYRO2.7
++ @69 + DYRO2.5
++ @84 + DYRO2.5
++ @81 + DYRO2.6
++ @73 + DYRO2.8
END

IF ~~ DYRO2.5
SAY @85
IF ~~ THEN + DYRO2.5A
END

IF ~~ DYRO2.5A
SAY @86
= @87
++ @88 + DYRO2.6
++ @89 + DYRO2.12
++ @90 + DYRO2.13
END

IF ~~ DYRO2.6
SAY @91
++ @92 + DYRO2.14
++ @76 + DYRO2.10
++ @93 + DYRO2.11
++ @78 + DYRO2.15
END

IF ~~ DYRO2.7
SAY @94
IF ~~ THEN + DYRO2.5A
END

IF ~~ DYRO2.8
SAY @95
++ @96 + DYRO2.6
++ @97 + DYRO2.12
++ @90 + DYRO2.13
END

IF ~~ DYRO2.9
SAY @98
++ @76 + DYRO2.10
++ @99 + DYRO2.11
++ @78 + DYRO2.15
END

IF ~~ DYRO2.10
SAY @100
IF ~~ THEN EXIT
END

IF ~~ DYRO2.11
SAY @101
++ @102 + DYRO2.16
++ @103 + DYRO2.17
++ @104 EXIT
++ @105 + DYRO2.18
END

IF ~~ DYRO2.12
SAY @106
IF ~~ THEN EXIT
END

IF ~~ DYRO2.13
SAY @107
IF ~~ THEN EXIT
END

IF ~~ DYRO2.14
SAY @108
++ @76 + DYRO2.10
++ @99 + DYRO2.11
++ @78 + DYRO2.15
END

IF ~~ DYRO2.15
SAY @109
IF ~~ THEN EXIT
END

IF ~~ DYRO2.16
SAY @110
IF ~~ THEN EXIT
END

IF ~~ DYRO2.17
SAY @111
IF ~~ THEN EXIT
END

IF ~~ DYRO2.18
SAY @112
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",6)~ THEN BEGIN X#DYLoveTalk3
SAY @113
++ @114 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO3.1
++ @115 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO3.2
++ @116 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO3.3
++ @117 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO3.4
+ ~Race(Player1,ELF)~ + @118 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO3.5E
+ ~Race(Player1,HALFORC)~ + @119 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO3.5O
++ @120 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO3.6
++ @121 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO3.7
END

IF ~~ DYRO3.1
SAY @122
++ @123 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @124 + DYRO3.4
++ @125 + DYRO3.7
END

IF ~~ DYRO3.2
SAY @126
++ @127 + DYRO3.8
+ ~Class(Player1,BARD)~ + @128 + DYRO3.9
++ @129 + DYRO3.10
++ @130 + DYRO3.1
END

IF ~~ DYRO3.3
SAY @131
++ @132 + DYRO3.11
++ @133 + DYRO3.4
++ @134 + DYRO3.7
END

IF ~~ DYRO3.4
SAY @135
++ @136 + DYRO3.12
++ @137 + DYRO3.13
+ ~Class(Player1,PALADIN)~ + @138 + DYRO3.13
++ @139 + DYRO3.13
++ @140 + DYRO3.14
++ @141 + DYRO3.15
END

IF ~~ DYRO3.5E
SAY @142
++ @143 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @144 + DYRO3.16
++ @145 + DYRO3.17
END

IF ~~ DYRO3.5O
SAY @146
= @147
= @148
++ @149 + DYRO3.11O
++ @133 + DYRO3.4
++ @134 + DYRO3.7
END

IF ~~ DYRO3.6
SAY @150
IF ~~ THEN EXIT
END

IF ~~ DYRO3.7
SAY @151
++ @152 + DYRO3.18
++ @153 + DYRO3.19
++ @154 + DYRO3.6
++ @155 + DYRO3.4
END

IF ~~ DYRO3.8
SAY @156
IF ~~ THEN + DYRO3.4
END

IF ~~ DYRO3.9
SAY @157
IF ~~ THEN + DYRO3.4
END

IF ~~ DYRO3.10
SAY @158
++ @152 + DYRO3.18
++ @159 + DYRO3.18
++ @154 + DYRO3.6
++ @160 + DYRO3.4
++ @161 + DYRO3.22
END

IF ~~ DYRO3.11
SAY @162
++ @123 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @163 + DYRO3.4
++ @164 + DYRO3.7
END

IF ~~ DYRO3.11O
SAY @165
IF ~~ THEN + DYRO3.1
END

IF ~~ DYRO3.12
SAY @166
++ @167 + DYRO3.19
++ @168 EXIT
++ @169 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @170 + DYRO3.20
END

IF ~~ DYRO3.13
SAY @171
++ @172 + DYRO3.23
++ @173 EXIT
END

IF ~~ DYRO3.14
SAY @174
++ @175 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @176 + DYRO3.12
++ @177 + DYRO3.21
END

IF ~~ DYRO3.15
SAY @178
++ @179 + DYRO3.19
++ @168 EXIT
++ @180 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @170 + DYRO3.20
END

IF ~~ DYRO3.16
SAY @181
++ @182 + DYRO3.22
++ @183 EXIT
END

IF ~~ DYRO3.17
SAY @184
IF ~~ THEN EXIT
END

IF ~~ DYRO3.18
SAY @185
++ @186 + DYRO3.19
++ @187 + DYRO3.13
++ @180 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @170 + DYRO3.20
END

IF ~~ DYRO3.19
SAY @188
IF ~~ THEN EXIT
END

IF ~~ DYRO3.20
SAY @189
IF ~~ THEN EXIT
END

IF ~~ DYRO3.21
SAY @190
IF ~~ THEN EXIT
END

IF ~~ DYRO3.22
SAY @191
IF ~~ THEN EXIT
END

IF ~~ DYRO3.23
SAY @192
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",8)~ THEN BEGIN X#DYLoveTalk4
SAY @193
= @194
++ @195 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1)~ + DYRO4.1
++ @196 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1)~ + DYRO4.2
++ @197 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1)~ + DYRO4.3
+ ~Class(Player1,BARD_ALL)~ + @198 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1)~ + DYRO4.4
++ @199 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO4.5
END

IF ~~ DYRO4.1
SAY @200
++ @201 + DYRO4.6
++ @202 + DYRO4.5
++ @203 + DYRO4.3
++ @204 DO ~SetGlobal("X#DyTeachMeDance","GLOBAL",1)~ + DYRO4.7
END

IF ~~ DYRO4.2
SAY @205
++ @206 + DYRO4.6
++ @207 + DYRO4.8
++ @208 + DYRO4.5
END

IF ~~ DYRO4.3
SAY @209
IF ~~ THEN + DYRO4.3A
END

IF ~~ DYRO4.3A
SAY @210
++ @211 + DYRO4.9
++ @212 + DYRO4.11
++ @213 DO ~SetGlobal("X#DynaDance","GLOBAL",1) RestParty()~ EXIT
+ ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL)~ + @214 + DYRO4.10
+ ~OR(2) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL)~ + @215 + DYRO4.18
+ ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL)~ + @216 DO ~SetGlobal("X#DynaDance","GLOBAL",1) RestParty()~ EXIT
+ ~CheckStatGT(Player1,12,WIS)~ + @217 + DYRO4.11
END

IF ~~ DYRO4.4
SAY @218
++ @219 + DYRO4.3
++ @220 + DYRO4.3
++ @221 DO ~SetGlobal("X#DynaDance","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ DYRO4.5
SAY @222
++ @223 + DYRO4.12
++ @224 + DYRO4.3
+ ~Race(Player1, HALFORC)~ + @225 + DYRO4.13
++ @226 DO ~SetGlobal("X#DynaDance","GLOBAL",1) RestParty()~ EXIT
++ @227 DO ~SetGlobal("X#DynaDance","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ DYRO4.6
SAY @228
IF ~~ THEN DO ~SetGlobal("X#DynaDance","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ DYRO4.7
SAY @229
IF ~~ THEN + DYRO4.3A
END

IF ~~ DYRO4.8
SAY @230
IF ~~ THEN + DYRO4.3A
END

IF ~~ DYRO4.9
SAY @231
++ @232 + DYRO4.14
+ ~CheckStatGT(Player1,12,WIS)~ + @217 + DYRO4.11
++ @233 + DYRO4.6
++ @234 + DYRO4.11
END

IF ~~ DYRO4.10
SAY @235
++ @236 + DYRO4.15
++ @237 + DYRO4.6
+ ~Race(Player1,HALFORC)~ + @238 + DYRO4.14
++ @239 + DYRO4.15
+ ~Global("X#DyTeachMeDance","GLOBAL",1)~ + @240 + DYRO4.15
+ ~Global("X#DyTeachMeDance","GLOBAL",1)~ + @241 + DYRO4.15
END

IF ~~ DYRO4.11
SAY @242
++ @243 + DYRO4.15
++ @244 + DYRO4.15
++ @237 + DYRO4.6
++ @245 + DYRO4.15
+ ~Global("X#DyTeachMeDance","GLOBAL",1)~ + @240 + DYRO4.15
+ ~Global("X#DyTeachMeDance","GLOBAL",1)~ + @241 + DYRO4.15
END

IF ~~ DYRO4.12
SAY @246
++ @247 + DYRO4.8
++ @248 + DYRO4.3
++ @249 + DYRO4.6
END

IF ~~ DYRO4.13
SAY @250
++ @251 + DYRO4.3
++ @252 + DYRO4.16
++ @253 DO ~SetGlobal("X#DynaDance","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ DYRO4.14
SAY @254
+ ~Race(Player1,HALFORC)~ + @255 + DYRO4.15
++ @244 + DYRO4.15
++ @256 + DYRO4.6
++ @257 + DYRO4.15
+ ~Global("X#DyTeachMeDance","GLOBAL",1)~ + @240 + DYRO4.15
+ ~Global("X#DyTeachMeDance","GLOBAL",1)~ + @241 + DYRO4.15
END


IF ~~ DYRO4.15
SAY @258
= @259
= @260
IF ~~ THEN DO ~SetGlobal("X#DynaDance","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ DYRO4.16
SAY @261
= @260
IF ~~ THEN DO ~SetGlobal("X#DynaDance","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ DYRO4.18
SAY @262
IF ~~ DO ~SetGlobal("X#DynaDance","GLOBAL",1) RestParty()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",10)~ THEN BEGIN X#DYLoveTalk4A
SAY @263
IF ~Global("X#DynaDance","GLOBAL",1)~ THEN DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO4A
IF ~Global("X#DynaDance","GLOBAL",2)~ THEN DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO4B
END

IF ~~ DYRO4A
SAY @264
++ @265 EXIT
++ @266 + DYRO4A.1
+ ~InParty("branwen") GlobalGT("P#BranwenRomanceActive","GLOBAL",0)~ + @267 + DYRO4A.2
++ @268 + DYRO4A.3
++ @269 EXIT
END

IF ~~ DYRO4A.1
SAY @270
IF ~~ THEN EXIT
END

IF ~~ DYRO4A.2
SAY @271
= @272
++ @273 EXIT
++ @274 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @275 EXIT
END

IF ~~ DYRO4A.3
SAY @276
IF ~~ THEN EXIT
END

IF ~~ DYRO4B
SAY @277
++ @278 + DYRO4B.1
++ @279 + DYRO4B.2
++ @280 EXIT
+ ~Race(Player1,HALFORC)~ + @281 + DYRO4B.3
END

IF ~~ DYRO4B.1
SAY @282
++ @283 EXIT
++ @284 EXIT
++ @285 + DYRO4B.2
END

IF ~~ DYRO4B.2
SAY @286
+ ~Race(Player1,ELF)~ + @287 EXIT
+ ~!Race(Player1,ELF)~ + @288 EXIT
++ @289 + DYRO4B.4
++ @290 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @291 + DYRO4B.5
++ @292 + DYRO4B.6
END

IF ~~ DYRO4B.3
SAY @293
= @294
IF ~~ THEN + DYRO4B.2
END

IF ~~ DYRO4B.4
SAY @295
++ @296 + DYRO4B.7
++ @297 + DYRO4B.8
++ @298 + DYRO4B.7
++ @299 + DYRO4B.9
++ @300 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ DYRO4B.5
SAY @301
IF ~~ THEN EXIT
END

IF ~~ DYRO4B.6
SAY @302
IF ~~ THEN EXIT
END

IF ~~ DYRO4B.7
SAY @303
IF ~~ THEN EXIT
END

IF ~~ DYRO4B.8
SAY @304
IF ~~ THEN EXIT
END

IF ~~ DYRO4B.9
SAY @305
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",12)~ THEN BEGIN X#DYLoveTalk5
SAY @306
++ @307 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO5.1
++ @308 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO5.2
++ @309 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO5.3
++ @310 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO5.3
++ @311 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO5.4
END

IF ~~ DYRO5.1
SAY @312
++ @313 + DYRO5.5
++ @314 + DYRO5.6
++ @315 + DYRO5.7
END

IF ~~ DYRO5.2
SAY @316
++ @317 + DYRO5.8
++ @318 + DYRO5.9
++ @319 + DYRO5.10
++ @320 + DYRO5.11
++ @321 + DYRO5.12
++ @322 + DYRO5.12
++ @323 + DYRO5.9
++ @324 + DYRO5.12
END

IF ~~ DYRO5.3
SAY @325
++ @326 + DYRO5.8
++ @327 + DYRO5.2
++ @328 + DYRO5.13
END

IF ~~ DYRO5.4
SAY @329
++ @330 + DYRO5.13
++ @331 + DYRO5.14
++ @332 + DYRO5.8
++ @333 + DYRO5.9
++ @334 + DYRO5.10
++ @335 + DYRO5.11
++ @321 + DYRO5.12
++ @322 + DYRO5.12
++ @323 + DYRO5.9A
++ @324 + DYRO5.12
END

IF ~~ DYRO5.5
SAY @336
IF ~~ THEN EXIT
END

IF ~~ DYRO5.6
SAY @337
IF ~~ THEN + DYRO5.3
END

IF ~~ DYRO5.7
SAY @338
IF ~~ THEN + DYRO5.2
END

IF ~~ DYRO5.8
SAY @339
++ @340 EXIT
++ @341 EXIT
++ @342 EXIT
END

IF ~~ DYRO5.9
SAY @343
IF ~~ THEN + DYRO5.9A
END

IF ~~ DYRO5.9A
SAY @344
++ @345 + DYRO5.8
++ @315 + DYRO5.7
++ @346 + DYRO5.11
END

IF ~~ DYRO5.10
SAY @347
IF ~~ THEN EXIT
END

IF ~~ DYRO5.11
SAY @348
++ @349 EXIT
++ @350 + DYRO5.15
END

IF ~~ DYRO5.12
SAY @351
IF ~~ THEN + DYRO5.9A
END

IF ~~ DYRO5.13
SAY @352
IF ~~ THEN + DYRO5.12
END

IF ~~ DYRO5.14
SAY @353
IF ~~ THEN + DYRO5.9A
END

IF ~~ DYRO5.15
SAY @354
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",14)~ THEN BEGIN X#DYLoveTalk6
SAY @355
++ @356 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO6.1
++ @357 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO6.2
++ @358 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO6.3
END

IF ~~ DYRO6.1
SAY @359
+ ~Global("X#DYRO6Public","GLOBAL",1) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @360 EXTERN ~%MINSC_BANTER%~DRMI1
+ ~Global("X#DYRO6Public","GLOBAL",1) !InParty("minsc")~ + @360 + DYRO6.7
++ @361 + DYRO6.4
++ @362 + DYRO6.5
++ @363 + DYRO6.6
++ @364 + DYRO6.8
END

IF ~~ DYRO6.2
SAY @365
++ @366 + DYRO6.6
++ @367 + DYRO6.5
++ @368 + DYRO6.4
++ @362 + DYRO6.5
++ @363 + DYRO6.6
END

IF ~~ DYRO6.3
SAY @369
++ @370 + DYRO6.1
++ @371 DO ~SetGlobal("X#DYRO6Public","GLOBAL",1)~ + DYRO6.1
END

IF ~~ DYRO6.4
SAY @372
IF ~~ THEN + DYRO6.6
END

IF ~~ DYRO6.5
SAY @373
IF ~~ THEN + DYRO6.6
END

IF ~~ DYRO6.6
SAY @374
= @375
++ @376 + DYRO6.9
++ @377 + DYRO6.10
++ @378 + DYRO6.9A
++ @379 + DYRO6.11
END

IF ~~ DYRO6.7
SAY @380
IF ~~ THEN + DYRO6.6
END

IF ~~ DYRO6.8
SAY @381
IF ~~ THEN + DYRO6.6
END

IF ~~ DYRO6.9
SAY @382
IF ~~ THEN + DYRO6.9A
END

IF ~~ DYRO6.9A
SAY @383
= @384
++ @385 + DYRO6.12
++ @386 + DYRO6.13
++ @387 + DYRO6.14
++ @388 + DYRO6.15
++ @389 + DYRO6.16
END

IF ~~ DYRO6.10
SAY @390
++ @391 + DYRO6.9A
++ @392 + DYRO6.9A
++ @393 + DYRO6.9A
++ @394 + DYRO6.9A
END

IF ~~ DYRO6.11
SAY @395
++ @391 + DYRO6.9A
++ @392 + DYRO6.9A
++ @396 + DYRO6.9A
++ @397 + DYRO6.9A
END

IF ~~ DYRO6.12
SAY @398
++ @399 + DYRO6.17
++ @400 + DYRO6.18
++ @401 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @402 + DYRO6.19
END

IF ~~ DYRO6.13
SAY @403
++ @399 + DYRO6.17
++ @404 + DYRO6.18
++ @401 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @402 + DYRO6.19
END

IF ~~ DYRO6.14
SAY @405
+ ~Class(Player1,BARD_ALL)~ + @406 + DYRO6.20
++ @407 + DYRO6.20
++ @408 + DYRO6.17
++ @409 + DYRO6.18
++ @401 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @402 + DYRO6.19
++ @410 + DYRO6.21
END

IF ~~ DYRO6.15
SAY @411
IF ~~ THEN + DYRO6.14
END

IF ~~ DYRO6.16
SAY @412
IF ~~ THEN + DYRO6.14
END

IF ~~ DYRO6.17
SAY @413
++ @414 EXIT
++ @415 EXIT
++ @416 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @402 + DYRO6.19
END

IF ~~ DYRO6.18
SAY @417
IF ~~ THEN EXIT
END

IF ~~ DYRO6.19
SAY @418
++ @416 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @419 EXIT
++ @420 EXIT
END

IF ~~ DYRO6.20
SAY @421
++ @422 + DYRO6.22
++ @423 EXIT
+ ~Class(Player1,MAGE_ALL)~ + @424 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
+ ~Class(Player1,SORCERER)~ + @425 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
+ ~!Class(Player1,MAGE_ALL) !Class(Player1,SORCERER)~ + @426 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @427 + DYRO6.22
END

IF ~~ DYRO6.21
SAY @428
+ ~Class(Player1,BARD_ALL)~ + @429 + DYRO6.20
++ @430 + DYRO6.20
++ @431 + DYRO6.17
++ @432 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ DYRO6.22
SAY @433
IF ~~ THEN DO ~SetGlobal("X#DRLove","GLOBAL",1)~ EXIT
END

IF ~~ DRMI2
SAY @434
IF ~~ THEN EXTERN ~%MINSC_BANTER%~ DRMI3
END

IF ~~ DRMI4
SAY @435
IF ~~ THEN + DYRO6.7
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",16)~ THEN BEGIN X#DYLoveTalk7
SAY @436
++ @437 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO7.1
++ @438 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO7.2
++ @439 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO7.3
+ ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ + @440 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO7.4
++ @441 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) SetGlobal("X#DY7Beautiful","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO7.5
END

IF ~~ DYRO7.1
SAY @442
IF ~~ THEN + DYRO7.1A
END

IF ~~ DYRO7.1A
SAY @443
++ @444 + DYRO7.6
++ @445 + DYRO7.6
++ @446 + DYRO7.7
++ @447 + DYRO7.8
++ @448 + DYRO7.7
++ @449 EXIT
END

IF ~~ DYRO7.2
SAY @450
IF ~~ THEN + DYRO7.1A
END

IF ~~ DYRO7.3
SAY @451
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN EXTERN ~%EDWIN_BANTER%~ DRED1
IF ~OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~ THEN + DYRO7.1A
END

IF ~~ DYRO7.4
SAY @452
IF ~~ THEN EXTERN ~%EDWIN_BANTER%~ DRED1
END

IF ~~ DYRO7.5
SAY @453
++ @454 + DYRO7.11
++ @455 + DYRO7.12
++ @456 + DYRO7.13
+ ~Class(Player1,BARD)~ + @457 + DYRO7.14
++ @458 + DYRO7.14
END

IF ~~ DYRO7.6
SAY @459
++ @447 + DYRO7.8
++ @460 + DYRO7.15
++ @461 + DYRO7.7
END

IF ~~ DYRO7.7
SAY @462
++ @463 + DYRO7.16
+ ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ + @464 EXTERN ~%EDWIN_BANTER%~ DRED2
+ ~!InParty("edwin")~ + @464 + DYRO7.17
+ ~!Global("X#DY7Beauty","GLOBAL",1)~ + @465 + DYRO7.5
++ @466 + DYRO7.18
END

IF ~~ DYRO7.8
SAY @467
++ @463 + DYRO7.16
+ ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ + @464 EXTERN ~%EDWIN_BANTER%~ DRED2
+ ~!InParty("edwin")~ + @464 + DYRO7.17
+ ~!Global("X#DY7Beauty","GLOBAL",1)~ + @465 + DYRO7.5
++ @468 + DYRO7.18
END

IF ~~ DYRO7.9
SAY @469
++ @470 +DYRO7.1A
++ @471 EXIT
+ ~!Global("X#DY7Beauty","GLOBAL",1)~ + @472 + DYRO7.5
END

IF ~~ DYRO7.10
SAY @473
IF ~~ THEN + DYRO7.1A
END

IF ~~ DYRO7.11
SAY @474
IF ~~ THEN + DYRO7.1A
END

IF ~~ DYRO7.12
SAY @475
IF ~~ THEN + DYRO7.1A
END

IF ~~ DYRO7.13
SAY @476
IF ~~ THEN + DYRO7.1A
END

IF ~~ DYRO7.14
SAY @477
IF ~~ THEN + DYRO7.1A
END

IF ~~ DYRO7.15
SAY @478
++ @463 + DYRO7.16
+ ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ + @464 EXTERN ~%EDWIN_BANTER%~ DRED2
+ ~!InParty("edwin")~ + @464 + DYRO7.17
+ ~!Global("X#DY7Beauty","GLOBAL",1)~ + @465 + DYRO7.5
++ @466 + DYRO7.18
END

IF ~~ DYRO7.16
SAY @479
++ @480 + DYRO7.19
++ @481 EXIT
++ @466 + DYRO7.18
END

IF ~~ DYRO7.17
SAY @482
IF ~~ THEN EXIT
END

IF ~~ DYRO7.18
SAY @483
IF ~~ THEN EXIT
END

IF ~~ DYRO7.19
SAY @484
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",18)~ THEN BEGIN X#DYLoveTalk8
SAY @485
+ ~!InParty("minsc")~ + @486 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO8.1
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @487 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO8.1M
++ @488 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO8.2
++ @489 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO8.3
++ @490 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO8.4
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @491 DO ~SetGlobal("X#HeRashemi","GLOBAL",1) IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO8.5
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @492 DO ~SetGlobal("X#HeRashemi","GLOBAL",1) IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO8.5B
END

IF ~~ DYRO8.1
SAY @493
+ ~Dead("minsc")~ + @494 + DYRO8.6
+ ~!Dead("minsc")~ + @495 + DYRO8.7
+ ~CheckStatLT(Player1, 11, INT) Dead("minsc")~ + @496 + DYRO8.8LI
+ ~!CheckStatLT(Player1, 11, INT) Dead("minsc")~ + @496 + DYRO8.8HI
+ ~!Dead("minsc")~ + @497 + DYRO8.9
+ ~Dead("minsc")~ + @498 + DYRO8.10
+ ~!Dead("minsc")~ + @499 + DYRO8.11
END

IF ~~ DYRO8.1M
SAY @500
++ @501 + DYRO8.12
++ @499 + DYRO8.11
++ @502 + DYRO8.13
++ @503 + DYRO8.4
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @491 DO ~SetGlobal("X#HeRashemi","GLOBAL",1)~ + DYRO8.5
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @492 DO ~SetGlobal("X#HeRashemi","GLOBAL",1)~ + DYRO8.5B
END

IF ~~ DYRO8.2
SAY @504
++ @505 + DYRO8.14
++ @506 + DYRO8.14
++ @507 + DYRO8.15
+ ~CheckStatGT(Player1, 11, WIS)~ + @508 + DYRO8.16
END

IF ~~ DYRO8.3
SAY @509
++ @510 + DYRO8.17
++ @511 + DYRO8.18
++ @512 + DYRO8.19
+ ~CheckStatGT(Player1, 11, WIS)~ + @513 + DYRO8.16
END

IF ~~ DYRO8.4
SAY @514
++ @515 DO ~SetGlobal("X#DyDajemma","GLOBAL",1)~ + DYRO8.20
++ @516 DO ~SetGlobal("X#DyDajemma","GLOBAL",1)~ + DYRO8.21
+ ~!Global("X#DyDajemma","GLOBAL",1)~ + @517 DO ~SetGlobal("X#DyDajemma","GLOBAL",1)~ + DYRO8.11
END

IF ~~ DYRO8.5
SAY @518
++ @515 DO ~SetGlobal("X#DyDajemma","GLOBAL",1)~ + DYRO8.20
++ @519 DO ~SetGlobal("X#DyDajemma","GLOBAL",1)~ + DYRO8.21
++ @517 DO ~SetGlobal("X#DyDajemma","GLOBAL",1)~ + DYRO8.11
END

IF ~~ DYRO8.5B
SAY @520
++ @521 + DYRO8.5
++ @522 EXIT
++ @523 + DYRO8.22
++ @524 + DYRO8.11
END

IF ~~ DYRO8.6
SAY @525
= @526
IF ~~ THEN + DYRO8.4
END

IF ~~ DYRO8.7
SAY @527
= @528
= @529
= @530
IF ~~ THEN + DYRO8.4
END

IF ~~ DYRO8.8LI
SAY @531
IF ~~ THEN EXIT
END

IF ~~ DYRO8.8HI
SAY @532
IF ~~ THEN EXIT
END

IF ~~ DYRO8.9
SAY @533
= @527
= @534
= @529
++ @535 EXIT
++ @536 EXIT
++ @537 EXIT
++ @538 + DYRO8.11
END

IF ~~ DYRO8.10
SAY @539
= @540
IF ~~ THEN + DYRO8.4
END

IF ~~ DYRO8.11
SAY @541
IF ~Global("P#KnowBhaal","GLOBAL",1)~ THEN + DYRO8.11A
IF ~!Global("P#KnowBhaal","GLOBAL",1)~ THEN + DYRO8.11B
END

IF ~~ DYRO8.11A
SAY @542
IF ~Global("X#DyDajemma","GLOBAL",1)~ THEN EXIT
IF ~!Global("X#DyDajemma","GLOBAL",1)~ THEN + DYRO8.11C
END

IF ~~ DYRO8.11B
SAY @543
IF ~Global("X#DyDajemma","GLOBAL",1)~ THEN EXIT
IF ~!Global("X#DyDajemma","GLOBAL",1)~ THEN + DYRO8.11C
END

IF ~~ DYRO8.11C
SAY @544
IF ~~ THEN + DYRO8.4
END

IF ~~ DYRO8.12
SAY @545
= @546
= @547
IF ~~ THEN + DYRO8.4
END

IF ~~ DYRO8.13
SAY @548
= @549
= @550
IF ~~ THEN + DYRO8.4
END

IF ~~ DYRO8.14
SAY @551
++ @552 + DYRO8.23
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @553 + DYRO8.24
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @554 + DYRO8.23
++ @555 EXIT
++ @556 + DYRO8.4
END

IF ~~ DYRO8.15
SAY @557
= @558
IF ~~ THEN + DYRO8.14
END

IF ~~ DYRO8.16
SAY @559
IF ~~ THEN + DYRO8.4
END

IF ~~ DYRO8.17
SAY @560
= @561
IF ~~ THEN + DYRO8.4
END

IF ~~ DYRO8.18
SAY @562
= @561
IF ~~ THEN + DYRO8.4
END

IF ~~ DYRO8.19
SAY @563
IF ~~ THEN + DYRO8.11
END

IF ~~ DYRO8.20
SAY @564
= @565
IF ~~ THEN EXIT
END

IF ~~ DYRO8.21
SAY @566
IF ~~ THEN EXIT
END

IF ~~ DYRO8.22
SAY @567
IF ~~ THEN EXIT
END

IF ~~ DYRO8.23
SAY @568
IF ~Global("P#KnowBhaal","GLOBAL",1)~ THEN + DYRO8.22
IF ~!Global("P#KnowBhaal","GLOBAL",1)~ THEN EXIT
END
IF ~~ DYRO8.24
SAY @569
IF ~Global("P#KnowBhaal","GLOBAL",1)~ THEN + DYRO8.22
IF ~!Global("P#KnowBhaal","GLOBAL",1)~ THEN EXIT
END

END

APPEND ~%MINSC_BANTER%~

IF ~~ DRMI1
SAY @570
= @571
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ DRMI2
END

IF ~~ DRMI3
SAY @572
= @571
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ DRMI4
END
END

APPEND ~%EDWIN_BANTER%~

IF ~~ DRED1
SAY @573
++ @574 EXTERN ~%DYNAHEIR_JOINED%~ DYRO7.9
++ @575 EXTERN ~%DYNAHEIR_JOINED%~ DYRO7.10
++ @576 EXIT
++ @577 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ DRED2
SAY @578
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ DYRO7.17
END

END

CHAIN ~%MINSC_JOINED%~ DYRO1.1Minsc
@579
== ~%DYNAHEIR_JOINED%~ @580
EXIT

APPEND ~%DYNAHEIR_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",20)~ THEN BEGIN X#DYLoveTalk9
SAY @581
++ @582 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",21) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO9.1
++ @583 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",21) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO9.2
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @584 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",21) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO9.3
++ @585 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",21) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO9.4
++ @586 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",21) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO9.5
END

IF ~~ DYRO9.1
SAY @587
++ @588 + DYRO9.2
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @584 + DYRO9.3
++ @585 + DYRO9.4
++ @586 + DYRO9.5
END

IF ~~ DYRO9.2
SAY @589
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @590 +DYRO9.6
++ @591 +DYRO9.7
++ @592 + DYRO9.7
++ @593 + DYRO9.8
+ ~Class(Player1,BARD)~ + @594 + DYRO9.9
END

IF ~~ DYRO9.3
SAY @595
++ @596 + DYRO9.2
++ @597 + DYRO9.4
++ @598 + DYRO9.5
END


IF ~~ DYRO9.4
SAY @599
++ @600 + DYRO9.10
++ @601 + DYRO9.11
++ @602 + DYRO9.12
++ @603 + DYRO9.5
++ @604 EXIT
END

IF ~~ DYRO9.5
SAY @605
= @606
= @607
++ @608 + DYRO9.10
++ @609 + DYRO9.11
++ @602 + DYRO9.12
++ @604 EXIT
END

IF ~~ DYRO9.6
SAY @610
= @611
++ @612 + DYRO9.13
++ @613
 + DYRO9.14
++ @614
 + DYRO9.13
++ @615 EXIT
END

IF ~~ DYRO9.7
SAY @616
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @617 + DYRO9.6
++ @618 + DYRO9.4
++ @619 EXIT
++ @620 + DYRO9.15
END

IF ~~ DYRO9.8
SAY @621
= @622
IF ~~ THEN + DYRO9.4
END

IF ~~ DYRO9.9
SAY @623
= @624
IF ~~ THEN + DYRO9.4
END

IF ~~ DYRO9.10
SAY @625
++ @626 + DYRO9.16
++ @627 + DYRO9.17
+ ~Class(Player1,BARD)~ + @628 + DYRO9.18
++ @629 EXIT
END

IF ~~ DYRO9.11
SAY @630
IF ~~ THEN + DYRO9.10
END

IF ~~ DYRO9.12
SAY @631
= @632
++ @633 + DYRO9.10
++ @634 + DYRO9.10
++ @604 EXIT
END

IF ~~ DYRO9.13
SAY @635
++ @636 EXIT
++ @637 + DYRO9.19
++ @638 + DYRO9.20
+ ~Class(Player1,BARD_ALL)~ + @639 + DYRO9.20
END

IF ~~ DYRO9.14
SAY @640
IF ~~ THEN + DYRO9.13
END

IF ~~ DYRO9.15
SAY @641
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ DYRO9.16
SAY @642
IF ~~ THEN EXIT
END

IF ~~ DYRO9.17
SAY @643
IF ~~ THEN EXIT
END

IF ~~ DYRO9.18
SAY @644
IF ~~ THEN EXIT
END

IF ~~ DYRO9.19
SAY @645
IF ~~ THEN + DYRO9.20
END

IF ~~ DYRO9.20
SAY @646
IF ~~ THEN EXIT
END

/*At Rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",22)~ THEN BEGIN X#DYLoveTalk10
SAY @647
= @648
= @649
= @650
++ @651 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",23) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO10.1
++ @652 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",23) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO10.2
++ @653 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",23) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO10.3
++ @654 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",23) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO10.4
++ @655 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",23) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO10.5
END

IF ~~ THEN DYRO10.1
SAY @656
++ @657 + DYRO10.6
++ @658 + DYRO10.7
++ @659 + DYRO10.5
++ @652 + DYRO10.2
++ @660 + DYRO10.3
END

IF ~~ THEN DYRO10.2
SAY @661
++ @662 +DYRO10.8
+ ~!InParty("minsc")~ + @663 + DYRO10.9
+ ~!InParty("minsc")~ + @664 + DYRO10.9
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @663 EXTERN ~%MINSC_BANTER%~ DYRO10Minsc1
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @665 EXTERN ~%MINSC_BANTER%~ DYRO10Minsc1
+ ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ + @666 EXTERN ~%CORAN_BANTER%~ DYRO10Coran1
+ ~!InParty("coran")~ + @666 + DYRO10.8
+ ~OR(2) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN)~ + @667 + DYRO10.10
END

IF ~~ THEN DYRO10.3
SAY @668
= @669
IF ~~ THEN + DYRO10.3A
END

IF ~~ THEN DYRO10.7
SAY @670
IF ~~ THEN + DYRO10.5
END

IF ~~ THEN DYRO10.8
SAY @671
IF ~~ THEN + DYRO10.5
END

IF ~~ THEN DYRO10.9
SAY @672
IF ~~ THEN + DYRO10.5
END

IF ~~ THEN DYRO10.10
SAY @673
= @674
IF ~~ THEN + DYRO10.5
END

IF ~~ THEN DYRO10.15
SAY @675
IF ~~ THEN + DYRO10.5
END

IF ~~ THEN DYRO10.16
SAY @676
IF ~~ THEN + DYRO10.5
END

IF ~~ THEN DYRO10.17
SAY @677
IF ~~ THEN + DYRO10.5
END

IF ~~ THEN DYRO10.5
SAY @678
= @679
IF ~~ THEN + DYRO10.3A
END

IF ~~ THEN DYRO10.3A
SAY @680
= @681
++ @682 + DYRO10.11
++ @683 + DYRO10.12
++ @684 + DYRO10.13
++ @685 + DYRO10.14
END

IF ~~ THEN DYRO10.4
SAY @686
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @687 EXTERN ~%MINSC_BANTER%~DYRO10Minsc2
+ ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ + @687 + DYRO10.15
++ @688 + DYRO10.16
++ @689 + DYRO10.17
END

IF ~~ DYRO10.6
SAY @690
++ @691 + DYRO10.18
++ @692 DO ~RestParty()~ EXIT
++ @693 DO ~RestParty()~ EXIT
END

IF ~~ DYRO10.11
SAY @694
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ DYRO10.12
SAY @695
= @696
= @697
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ DYRO10.13
SAY @698
= @699
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ DYRO10.14
SAY @700
= @701
= @696
= @697
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ DYRO10.18
SAY @702
IF ~~ THEN DO ~RestParty()~ EXIT
END
END

APPEND ~%MINSC_BANTER%~

IF ~~ DYRO10Minsc1
SAY @703
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ DYRO10.9
END

END

APPEND ~%MINSC_BANTER%~
IF ~~ DYRO10Minsc2
SAY @704
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ DYRO10.15
END
END

APPEND ~%CORAN_BANTER%~
IF ~~ DYRO10Coran1
SAY @705
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ DYRO10.8
END
END

APPEND ~%DYNAHEIR_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",24)~ THEN BEGIN X#DYLoveTalk11
SAY @706
IF ~Global("P#KnowBhaal","GLOBAL",1)~ THEN DO ~SetGlobal("X#DYLoveTalk","GLOBAL",25) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO11.1
IF ~!Global("P#KnowBhaal","GLOBAL",1)~ THEN DO ~SetGlobal("X#DYLoveTalk","GLOBAL",25) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO11.2
END

IF ~~ DYRO11.1
SAY @707
++ @708 + DYRO11.3
+ ~Race(Player1,HUMAN)~ + @709 + DYRO11.4
+ ~Race(Player1,ELF)~ + @710 + DYRO11.5
+ ~!Race(Player1,HUMAN) !Race(Player1,ELF)~ + @711 + DYRO11.4
++ @712 +DYRO11.6
+ ~Class(Player1,SORCERER) !Class("dynaheir",SORCERER)~ + @713 + DYRO11.7
+ ~Class(Player1,SORCERER) !Class("dynaheir",SORCERER)~ + @714 + DYRO11.7
+ ~Class(Player1,SORCERER) Class("dynaheir",SORCERER)~ + @713 + DYRO11.7S
+ ~Class(Player1,SORCERER) Class("dynaheir",SORCERER)~ + @714 + DYRO11.7S
++ @715 + DYRO11.8
+ ~Class(Player1,CLERIC_ALL)~ + @716 + DYRO11.9
+ ~Class(Player1,DRUID_ALL)~ + @717 + DYRO11.10
END

IF ~~ DYRO11.2
SAY @718
++ @719 + DYRO11.9
+ ~Race(Player1,HUMAN)~ + @720 + DYRO11.4
+ ~Race(Player1,ELF)~ + @721 + DYRO11.5
+ ~!Race(Player1,HUMAN) !Race(Player1,ELF)~ + @722 + DYRO11.4
++ @712 +DYRO11.6
+ ~Class(Player1,SORCERER) !Class("dynaheir",SORCERER)~ + @713 + DYRO11.7
+ ~Class(Player1,SORCERER) !Class("dynaheir",SORCERER)~ + @714 + DYRO11.7
+ ~Class(Player1,SORCERER) Class("dynaheir",SORCERER)~ + @713 + DYRO11.7S
+ ~Class(Player1,SORCERER) Class("dynaheir",SORCERER)~ + @714 + DYRO11.7S
++ @715 + DYRO11.8
+ ~Class(Player1,CLERIC_ALL)~ + @716 + DYRO11.9
+ ~Class(Player1,DRUID_ALL)~ + @717 + DYRO11.10
END

IF ~~ DYRO11.3
SAY @723
++ @724 EXIT
++ @725 + DYRO11.4
++ @726 + DYRO11.11
END

IF ~~ DYRO11.4
SAY @727
++ @728 EXIT
++ @729 + DYRO11.12
++ @730 + DYRO11.13
END

IF ~~ DYRO11.5
SAY @731
++ @732 EXIT
++ @729 + DYRO11.12
++ @730 + DYRO11.13
++ @733 + DYRO11.14
++ @734 + DYRO11.15
END

IF ~~ DYRO11.6
SAY @735
++ @732 EXIT
++ @729 + DYRO11.12
++ @730 + DYRO11.13
END

IF ~~ DYRO11.7
SAY @736
++ @737 EXIT
++ @729 + DYRO11.12
++ @730 + DYRO11.13
END

IF ~~ DYRO11.7S
SAY @738
++ @737 EXIT
++ @729 + DYRO11.12
++ @730 + DYRO11.13
END

IF ~~ DYRO11.8
SAY @739
++ @740 EXIT
++ @741 + DYRO11.16
++ @742 + DYRO11.9
END

IF ~~ DYRO11.9
SAY @743
++ @740 EXIT
++ @744 + DYRO11.17
++ @745 + DYRO11.18
END

IF ~~ DYRO11.10
SAY @746
= @747
++ @748 + DYRO11.4
++ @749 EXIT
++ @741 + DYRO11.16
++ @750 + DYRO11.9
END

IF ~~ DYRO11.11
SAY @751
IF ~~ THEN DO ~SetGlobal("X#EncourageDynaheir","GLOBAL",1)~ EXIT
END

IF ~~ DYRO11.12
SAY @752
= @753
= @754
++ @755 + DYRO11.19
++ @756 + DYRO11.20
++ @757 + DYRO11.21
++ @758 + DYRO11.22
++ @759 + DYRO11.23
END

IF ~~ DYRO11.13
SAY @760
= @754
++ @761 + DYRO11.19
++ @756 + DYRO11.20
++ @757 + DYRO11.21
++ @758 + DYRO11.22
++ @759 + DYRO11.23
++ @762 + DYRO11.24
END

IF ~~ DYRO11.14
SAY @763
= @764
IF ~~ THEN + DYRO11.13
END

IF ~~ DYRO11.15
SAY @765
= @764
IF ~~ THEN + DYRO11.13
END

IF ~~ DYRO11.16
SAY @766
= @767
++ @768 + DYRO11.19
++ @756 + DYRO11.20
++ @757 + DYRO11.21
++ @758 + DYRO11.22
++ @759 + DYRO11.23
++ @762 + DYRO11.24
END

IF ~~ DYRO11.17
SAY @769
= @770
++ @771 EXIT
++ @772 + DYRO11.12
END

IF ~~ DYRO11.18
SAY @773
IF ~~ THEN + DYRO11.13
END

IF ~~ DYRO11.19
SAY @774
IF ~~ THEN EXIT
END

IF ~~ DYRO11.20
SAY @775
IF ~~ THEN EXIT
END

IF ~~ DYRO11.21
SAY @776
IF ~~ THEN EXIT
END

IF ~~ DYRO11.22
SAY @777
IF ~~ THEN EXIT
END

IF ~~ DYRO11.23
SAY @778
IF ~~ THEN EXIT
END

IF ~~ DYRO11.24
SAY @779
IF ~~ THEN EXIT
END

/* PC has less than 95 percent HP! */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",26)~ THEN BEGIN X#DYLoveTalk12
SAY @780
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL) !Class(Player1,PALADIN) !Class(Player1,RANGER_ALL) HPPercentLT(Player1,95) HPPercentGT(Player1,74)~ + @781 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.1
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL) !Class(Player1,PALADIN) !Class(Player1,RANGER_ALL) HPPercentLT(Player1,75) HPPercentGT(Player1,49)~ + @782 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.2
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL) !Class(Player1,PALADIN) !Class(Player1,RANGER_ALL) HPPercentLT(Player1,75) HPPercentGT(Player1,49)~ + @783 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.3
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL) !Class(Player1,PALADIN) !Class(Player1,RANGER_ALL) HPPercentLT(Player1,50)~ + @784 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.4
+ ~OR(4) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL) Class(Player1,PALADIN) Class(Player1,RANGER_ALL) HPPercentLT(Player1,95) HPPercentGT(Player1,74)~ + @781 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.5
+ ~OR(4) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL) Class(Player1,PALADIN) Class(Player1,RANGER_ALL) HPPercentLT(Player1,75) HPPercentGT(Player1,49)~ + @782 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.6
+ ~OR(4) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL) Class(Player1,PALADIN) Class(Player1,RANGER_ALL) HPPercentLT(Player1,75) HPPercentGT(Player1,49)~ + @785 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.7
+ ~OR(4) Class(Player1,CLERIC_ALL) Class(Player1,DRUID_ALL) Class(Player1,PALADIN) Class(Player1,RANGER_ALL) HPPercentLT(Player1,50)~ + @786 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.8
++ @787 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.9
+ ~Class(Player1,BARD)~ + @788 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.10
++ @789 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",27) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO12.11
END

IF ~~ DYRO12.1
SAY @790
IF ~~ THEN + DYRO12.1A
END

IF ~~ DYRO12.1A
SAY @791
++ @792 + DYRO12.11
++ @793 + DYRO12.12
++ @794 + DYRO12.13
++ @795 + DYRO12.14
+ ~Global("X#DyCursed","GLOBAL",1)~ + @796 + DYRO12.15
END

IF ~~ DYRO12.2
SAY @797
IF ~~ THEN + DYRO12.1A
END

IF ~~ DYRO12.3
SAY @798
IF ~~ THEN + DYRO12.1A
END

IF ~~ DYRO12.4
SAY @799
IF ~~ THEN DO ~SetGlobal("X#DyCursed","GLOBAL",1)~ + DYRO12.1A
END

IF ~~ DYRO12.5
SAY @800
IF ~~ THEN + DYRO12.5A
END

IF ~~ DYRO12.5A
SAY @801
++ @802 + DYRO12.16
++ @803 + DYRO12.17
++ @804 + DYRO12.18
++ @805 + DYRO12.19
++ @806 + DYRO12.20
END

IF ~~ DYRO12.6
SAY @807
IF ~~ THEN + DYRO12.5A
END

IF ~~ DYRO12.7
SAY @808
IF ~~ THEN + DYRO12.5A
END

IF ~~ DYRO12.8
SAY @809
IF ~~ THEN + DYRO12.5A
END

IF ~~ DYRO12.9
SAY @810
++ @811 + DYRO12.21
++ @812 + DYRO12.22
++ @813 + DYRO12.23
++ @814 + DYRO12.12
++ @815 + DYRO12.13
+ ~Race(Player1, HALFORC)~ + @816 + DYRO12.24
END

IF ~~ DYRO12.10
SAY @817
++ @818 + DYRO12.21
++ @819 + DYRO12.23
++ @814 + DYRO12.12
++ @820 + DYRO12.13
END

IF ~~ DYRO12.11
SAY @821
= @822
++ @823 + DYRO12.24
++ @814 + DYRO12.12
++ @794 + DYRO12.13
++ @795 + DYRO12.14
END

IF ~~ DYRO12.12
SAY @824
= @825
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.13
SAY @826
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.14
SAY @827
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.15
SAY @828
IF ~~ THEN + DYRO12.12
END

IF ~~ DYRO12.16
SAY @829
++ @830 + DYRO12.28
++ @831 +DYRO12.29
++ @832 + DYRO12.17
END

IF ~~ DYRO12.17
SAY @833
= @834
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.18
SAY @835
= @836
= @837
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.19
SAY @838
= @837
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.20
SAY @839
= @837
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.21
SAY @840
= @841
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.22
SAY @842
= @843
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.23
SAY @844
= @845
= @841
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.24
SAY @846
= @847
= @848
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ + DYRO12.25
END

IF ~~ DYRO12.25
SAY @849
++ @850 + DYRO12.26
++ @851 + DYRO12.27
++ @852 + DYRO12.28
++ @853 + DYRO12.29
++ @854 + DYRO12.30
END

IF ~~ DYRO12.26
SAY @855
++ @856 EXIT
++ @857 EXIT
++ @858 DO ~RestParty()~ EXIT
END

IF ~~ DYRO12.27
SAY @859
= @860
++ @856 EXIT
++ @857 EXIT
++ @858 DO ~RestParty()~ EXIT
END

IF ~~ DYRO12.28
SAY @861
= @862
++ @856 EXIT
++ @857 EXIT
++ @858 DO ~RestParty()~ EXIT
END

IF ~~ DYRO12.29
SAY @863
IF ~~ THEN EXIT
END

IF ~~ DYRO12.30
SAY @864
= @862
++ @856 EXIT
++ @865 EXIT
++ @858 DO ~RestParty()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",28)~ THEN BEGIN X#DYLoveTalk13
SAY @866
++ @867 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",29) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO13.1
++ @868 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",29) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO13.2
++ @869 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",29) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO13.3
++ @870 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",29) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO13.4
END

IF ~~ DYRO13.1
SAY @871
++ @872 + DYRO13.5
++ @873 + DYRO13.6
++ @874 + DYRO13.6
+ ~Class(Player1,BARD)~ + @875 + DYRO13.7
END

IF ~~ DYRO13.2
SAY @876
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @877 + DYRO13.8
++ @878 DO ~SetGlobal("X#Journal13","GLOBAL",1)~ + DYRO13.9
++ @879 + DYRO13.6
++ @880 + DYRO13.6
END

IF ~~ DYRO13.3
SAY @881
++ @882 + DYRO13.6
++ @883 + DYRO13.10
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @884 + DYRO13.11
END

IF ~~ DYRO13.4
SAY @885
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @886 + DYRO13.11
++ @887 + DYRO13.6
++ @888 + DYRO13.6
++ @889 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
+ ~Class(Player1,BARD)~ + @890 +DYRO13.12
END

IF ~~ DYRO13.5
SAY @891
++ @892 + DYRO3.6
++ @893 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ DYRO13.6
SAY @894
++ @895 DO ~SetGlobal("X#DynaToldBorovsk","GLOBAL",1)~ + DYRO13.13
++ @896 DO ~SetGlobal("X#DynaToldBorovsk","GLOBAL",1)~ + DYRO13.14
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @897 DO ~SetGlobal("X#DynaToldBorovsk","GLOBAL",1)~ + DYRO13.15
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @898 DO ~SetGlobal("X#DynaToldBorovsk","GLOBAL",1)~ + DYRO13.16
END

IF ~~ DYRO13.7
SAY @899
++ @900 + DYRO13.17
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @901 + DYRO13.6
++ @902 + DYRO13.18
END

IF ~~ DYRO13.8
SAY @903
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @904 + DYRO13.6
++ @905 EXIT
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @906 + DYRO13.6
END

IF ~~ DYRO13.9
SAY @907
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @908 + DYRO13.19
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @909 + DYRO13.20
++ @910 + DYRO13.21
+ ~Race(Player1,HALFORC)~ + @911 + DYRO13.22O
+ ~Race(Player1,ELF)~ + @912 + DYRO13.22E
+ ~Global("X#Journal13","GLOBAL",1)~ + @913 + DYRO13.23
END

IF ~~ DYRO13.10
SAY @914
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @915 + DYRO13.24
++ @916 + DYRO13.25
++ @917 + DYRO13.25
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @918 + DYRO13.6
END

IF ~~ DYRO13.11
SAY @919
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @920 + DYRO13.6
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @921 + DYRO13.6
++ @922 + DYRO13.19
END

IF ~~ DYRO13.12
SAY @923
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @924 + DYRO13.6
++ @925 EXIT
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @926 + DYRO13.6
END

IF ~~ DYRO13.13
SAY @927
++ @928 + DYRO13.9
++ @896 + DYRO13.14
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @897 + DYRO13.15
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1) Global("P#KnowBhaal","GLOBAL",1)~ + @898 + DYRO13.16
END

IF ~~ DYRO13.14
SAY @929
= @930
= @931
= @932
= @933
++ @934 + DYRO13.26
++ @935 + DYRO13.26
++ @936 + DYRO13.27
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @937 + DYRO13.28
END

IF ~~ DYRO13.15
SAY @938
IF ~~ THEN + DYRO13.9
END

IF ~~ DYRO13.16
SAY @939
= @940
+ ~CheckStatGT(Player1,15,INT) CheckStatGT(Player1, 13, WIS) InParty("minsc")~ + @941 + DYRO13.29
++ @942 + DYRO13.14
++ @943 EXIT
++ @944 + DYRO13.30
END

IF ~~ DYRO13.17
SAY @945
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @946 + DYRO13.6
++ @947 EXIT
++ @948 + DYRO13.18
END

IF ~~ DYRO13.18
SAY @949
++ @950 + DYRO13.31
++ @951 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ DYRO13.19
SAY @952
++ @953 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @954 + DYRO13.32
+ ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ + @955 + DYRO13.6
END

IF ~~ DYRO13.20
SAY @938
++ @956 + DYRO13.33
++ @957 EXIT
END

IF ~~ DYRO13.21
SAY @958
= @959
++ @896 + DYRO13.14
++ @960 EXIT
++ @961 + DYRO13.14
END

IF ~~ DYRO13.22O
SAY @962
= @963
IF ~~ THEN + DYRO13.21
END

IF ~~ DYRO13.22E
SAY @964
= @963
IF ~~ THEN + DYRO13.21
END

IF ~~ DYRO13.23
SAY @965
IF ~~ THEN EXIT
END

IF ~~ DYRO13.24
SAY @966
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ DYRO13.25
SAY @967
++ @968 + DYRO13.6
++ @969 + DYRO13.6
++ @970 + DYRO13.6
++ @971 EXIT
END

IF ~~ DYRO13.26
SAY @972
= @973
++ @974 + DYRO13.30
++ @975 + DYRO13.34
++ @976 + DYRO13.34A
END

IF ~~ DYRO13.27
SAY @977
IF ~~ THEN + DYRO13.34
END

IF ~~ DYRO13.28
SAY @978
= @979
IF ~~ THEN + DYRO13.34
END

IF ~~ DYRO13.29
SAY @980
= @981
++ @982 EXIT
++ @983 EXIT
++ @943 EXIT
++ @944 + DYRO13.30
END

IF ~~ DYRO13.30
SAY @984
++ @985 + DYRO13.35
++ @986 + DYRO13.36
++ @987 + DYRO13.37
++ @988 + DYRO13.35
END

IF ~~ DYRO13.31
SAY @989
IF ~Global("X#DynaToldBorovsk","GLOBAL",1)~ THEN EXIT
IF ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ THEN + DYRO13.31A
END

IF ~~ DYRO13.31A
SAY @990
IF ~~ THEN + DYRO13.6
END

IF ~~ DYRO13.32
SAY @991
IF ~~ THEN + DYRO13.31
END

IF ~~ DYRO13.33
SAY @992
IF ~Global("X#DynaToldBorovsk","GLOBAL",1)~ THEN EXIT
IF ~!Global("X#DynaToldBorovsk","GLOBAL",1)~ THEN + DYRO13.31A
END

IF ~~ DYRO13.34
SAY @993
+ ~CheckStatGT(Player1,15,INT) CheckStatGT(Player1, 13, WIS) InParty("minsc")~ + @941 + DYRO13.29
++ @943 EXIT
++ @944 + DYRO13.30
END

IF ~~ DYRO13.34A
SAY @994
= @995
IF ~~ THEN + DYRO13.34
END

IF ~~ DYRO13.35
SAY @996
IF ~~ THEN EXIT
END

IF ~~ DYRO13.36
SAY @997
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ DYRO13.37
SAY @998
IF ~~ THEN EXIT
END

END

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",30)~ THEN X#SETTA X#DYRO14
@999
DO ~SetGlobal("X#DYLoveTalk","GLOBAL",31) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~
== ~X#SETTA~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1000
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1001
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1002
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1003
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1004
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1005 DO ~GiveGoldForce(-1)~
== ~%CORAN_JOINED%~ IF ~InParty("coran") InParty("safana")~ THEN @1006
== ~%SAFANA_JOINED%~ IF ~InParty("coran") InParty("safana")~ THEN @1007
== ~%CORAN_JOINED%~ IF ~InParty("coran") InParty("safana")~ THEN @1008
== ~%SAFANA_JOINED%~ IF ~InParty("coran") InParty("safana")~ THEN @1009 DO ~GiveGoldForce(-1)~
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1010
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1011
== ~%GARRICK_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1012
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1013
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1014
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1015
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1016
== ~X#SETTA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1017
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1018
= @1019
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1020
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @1021
== ~%DYNAHEIR_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @1022
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @1023
== ~%DYNAHEIR_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @1024
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @1025
END
IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN EXTERN ~%DYNAHEIR_JOINED%~ DYRO14.1M
IF ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN EXTERN ~%DYNAHEIR_JOINED%~ DYRO14.1

APPEND ~%DYNAHEIR_JOINED%~

IF ~~ DYRO14.1M
SAY @1026
++ @1027 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1028 EXTERN ~%MINSC_JOINED%~DYRO14.2M
++ @1029 + DYRO14.3
+ ~Class(Player1,BARD_ALL)~ + @1030 + DYRO14.4
++ @1031 + DYRO14.5M
++ @1032 + DYRO14.6
+ ~Global("X#HeRashemi","GLOBAL",1)~ + @1033 + DYRO14.7
END

IF ~~ DYRO14.1
SAY @1034
= @1035
++ @1027 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1036 + DYRO14.2
++ @1037 + DYRO14.3
+ ~Class(Player1,BARD_ALL)~ + @1030 + DYRO14.4
++ @1038 + DYRO14.5
++ @1039 + DYRO14.6
+ ~Global("X#HeRashemi","GLOBAL",1)~ + @1033 + DYRO14.7
END

IF ~~ DYRO14.2
SAY @1040
++ @1041 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1042 + DYRO14.3
END

IF ~~ DYRO14.3
SAY @1043
++ @1044 + DYRO14.9
+ ~Race(Player1,HALFORC)~ + @1045 + DYRO14.10
++ @1046 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1047 + DYRO14.11
END

IF ~~ DYRO14.4
SAY @1048
++ @1049 + DYRO14.3A
++ @1050 + DYRO14.3
++ @1051 + DYRO14.3B
++ @1052 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.3A
SAY @1053
++ @1054 + DYRO14.3
++ @1055 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.3B
SAY @1056
= @1057
IF ~~ THEN + DYRO14.11
END

IF ~~ DYRO14.5
SAY @1058
++ @1059 + DYRO14.2
++ @1060 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.5M
SAY @1061
++ @1062EXTERN ~%MINSC_JOINED%~ DYRO14.2MB
++ @1063 EXTERN ~%MINSC_JOINED%~ DYRO14.2MB
++ @1060 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.6
SAY @1064
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @1062 EXTERN ~%MINSC_JOINED%~ DYRO14.2MB
+ ~!InParty("minsc")~ + @1065 + DYRO14.2
++ @1060 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.7
SAY @1066
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @1062 EXTERN ~%MINSC_JOINED%~ DYRO14.2MB
+ ~!InParty("minsc")~ + @1067 + DYRO14.2
++ @1068 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.9
SAY @1069
++ @1070 + DynaBreakUp
++ @1071 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1072 + DYRO14.11
++ @1047 + DYRO14.11
END

IF ~~ DYRO14.10
SAY @1073
++ @1074 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1075 + DYRO14.11
++ @1047 + DYRO14.11
END

IF ~~ DYRO14.11
SAY @1076
++ @1077 + DYRO14.12Blue
++ @1078 + DYRO14.12Green
++ @1079 + DYRO14.12Pink
++ @1080 + DYRO14.12Purple
++ @1081 + DYRO14.12Red
++ @1082 + DYRO14.12White
++ @1083 + DYRO14.12Yellow
END

IF ~~ DYRO14.12Blue
SAY @1084
++ @1085 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1086 + DynaBreakUp
++ @1087 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.12Green
SAY @1088
++ @1089 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1090 + DynaBreakUp
++ @1091 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.12Pink
SAY @1092
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @1093 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1089 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1094 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1095 + DynaBreakUp
END

IF ~~ DYRO14.12Purple
SAY @1096
++ @1097 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1098 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1089 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.12Red
SAY @1099
++ @1085 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1100 + DynaBreakUp
++ @1101 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.12White
SAY @1102
++ @1085 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1103 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1104 + DynaBreakUp
END

IF ~~ DYRO14.12Yellow
SAY @1105
++ @1085 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1106 + DynaBreakUp
++ @1107 DO ~SetGlobal("X#DRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.13
SAY @1108
++ @1109 + DYRO14.11
++ @1110 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1111 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DynaBreakUp
SAY @1112
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END
END


APPEND ~%MINSC_JOINED%~

IF ~~ DYRO14.2M
SAY @1113
++ @1114 + DYRO14.8M
++ @1041 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1115 + DYRO14.3M
END


IF ~~ DYRO14.2MB
SAY @1116
IF ~~ THEN + DYRO14.2M
END

IF ~~ DYRO14.3M
SAY @1117
++ @1118 EXTERN ~%DYNAHEIR_JOINED%~ DYRO14.3
++ @1119 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
++ @1120 + DYRO14.12M
END

IF ~~ DYRO14.8M
SAY @1121
++ @1122 + DYRO14.3M
++ @1041 DO ~SetGlobal("X#DRNoRibbon","GLOBAL",1) ActionOverride("X#SETTA",EscapeArea())~ EXIT
END

IF ~~ DYRO14.12M
SAY @1123
IF ~~ THEN EXTERN ~%DYNAHEIR_JOINED%~ DYRO14.13
END

END

APPEND ~%DYNAHEIR_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",32)~ THEN BEGIN X#DYLoveTalk15
SAY @1124
++ @1125 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",33) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO15.1
++ @1126 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",33) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO15.1
++ @1127 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",33) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO15.2
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @1128 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",33) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO15.3
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1128 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",33) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO15.3B
END

IF ~~ DYRO15.1
SAY @1129
++ @1130 +DYRO15.4
++ @1131 + DYRO15.5
++ @1132 + DYRO15.6
++ @1133 + DYRO15.2
END

IF ~~ DYRO15.2
SAY @1134
++ @1135 + DYRO15.7
++ @1136 + DYRO15.7
++ @1137 + DYRO15.8
++ @1138 + DYRO15.9
++ @1139 + DYRO15.10
END

IF ~~ DYRO15.3
SAY @1140
++ @1141 + DYRO15.11
++ @1142 + DYRO15.12
++ @1143 + DYRO15.13
++ @1144 + DYRO15.16
+ ~Class(Player1,BARD_ALL)~ + @1145 + DYRO15.17
END

IF ~~ DYRO15.3B
SAY @1146
++ @1147 + DYRO15.14
++ @1148 + DYRO15.12B
++ @1143 + DYRO15.13
+ ~CheckStatGT(Player1,15,INT)~ + @1149 + DYRO15.15
+ ~Class(Player1,BARD_ALL)~ + @1150 + DYRO15.17
END

IF ~~ DYRO15.4
SAY @1151
++ @1152 + DYRO15.12
++ @1143 + DYRO15.13
++ @1144 + DYRO15.16
+ ~Class(Player1,BARD_ALL)~ + @1145 + DYRO15.17
END

IF ~~ DYRO15.5
SAY @1153
++ @1154 + DYRO15.7
++ @1136 + DYRO15.7
++ @1137 + DYRO15.8
++ @1138 + DYRO15.9
++ @1139 + DYRO15.10
END

IF ~~ DYRO15.6
SAY @1155
= @1156
++ @1154 + DYRO15.7
++ @1136 + DYRO15.7
++ @1137 + DYRO15.8
++ @1138 + DYRO15.9
++ @1139 + DYRO15.10
END

IF ~~ DYRO15.7
SAY @1157
++ @1158 + DYRO15.11
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1159 + DYRO15.14
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1148 + DYRO15.12B
++ @1143 + DYRO15.13
++ @1144 + DYRO15.16
+ ~Class(Player1,BARD_ALL)~ + @1145 + DYRO15.17
END

IF ~~ DYRO15.8
SAY @1160
++ @1161 + DYRO15.11
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1159 + DYRO15.14
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1152 + DYRO15.12B
++ @1144 + DYRO15.16
+ ~Class(Player1,BARD_ALL)~ + @1145 + DYRO15.17
END

IF ~~ DYRO15.9
SAY @1162
++ @1137 + DYRO15.8
++ @1163 + DYRO15.7
++ @1139 + DYRO15.10
END

IF ~~ DYRO15.10
SAY @1164
= @1165
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) LeaveParty() ActionOverride("minsc",LeaveParty()) EscapeArea() ActionOverride("minsc", EscapeArea())~ EXIT
END

IF ~~ DYRO15.11
SAY @1166
++ @1167 + DYRO15.18
++ @1168 + DYRO15.19
++ @1139 + DYRO15.10
++ @1169 + DYRO15.10
END

IF ~~ DYRO15.12
SAY @1170
++ @1171 + DYRO15.20
++ @1172 + DYRO15.10
++ @1173 + DYRO15.20
++ @1174 + DYRO15.21
++ @1175 + DYRO15.22
END

IF ~~ DYRO15.12B
SAY @1176
++ @1177 + DYRO15.10
++ @1159 + DYRO15.14
++ @1178 + DYRO15.23
++ @1179 + DYRO15.24
++ @1175 + DYRO15.22
END

IF ~~ DYRO15.13
SAY @1180
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1159 + DYRO15.14
++ @1144 + DYRO15.16
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1179 + DYRO15.24
++ @1181 + DYRO15.22
++ @1182 + DYRO15.25
END

IF ~~ DYRO15.14
SAY @1183
++ @1167 + DYRO15.18
++ @1184 + DYRO15.20
++ @1174 + DYRO15.21
++ @1139 + DYRO15.10
++ @1169 + DYRO15.10
END

IF ~~ DYRO15.15
SAY @1185
= @1186
++ @1139 + DYRO15.10
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1159 + DYRO15.14
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1179 + DYRO15.24
++ @1181 + DYRO15.22
++ @1182 + DYRO15.25
END

IF ~~ DYRO15.16
SAY @1187
= @1188
++ @1167 + DYRO15.18
++ @1168 + DYRO15.19
++ @1139 + DYRO15.10
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1159 + DYRO15.14
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1179 + DYRO15.24
++ @1181 + DYRO15.22
++ @1182 + DYRO15.25
END

IF ~~ DYRO15.17
SAY @1189

++ @1171 + DYRO15.20
++ @1190 + DYRO15.10
++ @1184 + DYRO15.20
++ @1174 + DYRO15.21
++ @1181 + DYRO15.22
END

IF ~~ DYRO15.18
SAY @1191
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ DYRO15.19
SAY @1192
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1159 + DYRO15.14
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1179 + DYRO15.24
++ @1181 + DYRO15.22
++ @1182 + DYRO15.25
END

IF ~~ DYRO15.20
SAY @1193
= @1194
= @1195
=@1196
++ @1197 + DYRO15.26
++ @1198 + DYRO15.10
++ @1199 + DYRO15.27
++ @1200 + DYRO15.28
++ @1201 + DYRO15.23
END

IF ~~ DYRO15.21
SAY @1202
= @1194
= @1203
=@1196
++ @1204 + DYRO15.26
++ @1205 + DYRO15.10
++ @1199 + DYRO15.27
++ @1200 + DYRO15.28
++ @1201 + DYRO15.23
END

IF ~~ DYRO15.22
SAY @1206
= @1207
= @1194
= @1203
= @1208
++ @1204 + DYRO15.26
++ @1205 + DYRO15.10
++ @1199 + DYRO15.27
++ @1200 + DYRO15.28
++ @1201 + DYRO15.23
END

IF ~~ DYRO15.23
SAY @1209
= @1210
= @1211
= @1212
++ @1213 EXIT
++ @1214 EXIT
++ @1215 EXIT
++ @1216 + DYRO15.10
END

IF ~~ DYRO15.24
SAY @1217
= @1194
= @1203
=@1196
++ @1197 + DYRO15.26
++ @1198 + DYRO15.10
++ @1199 + DYRO15.27
++ @1200 + DYRO15.28
++ @1201 + DYRO15.23
END

IF ~~ DYRO15.25
SAY @1218
= @1194
= @1203
=@1196
++ @1197 + DYRO15.26
++ @1198 + DYRO15.10
++ @1199 + DYRO15.27
++ @1200 + DYRO15.28
++ @1201 + DYRO15.23
END

IF ~~ DYRO15.26
SAY @1219
IF ~~ THEN + DYRO15.23
END

IF ~~ DYRO15.27
SAY @1220
= @1221
= @1222
++ @1213 EXIT
++ @1214 EXIT
++ @1223 EXIT
++ @1224 + DYRO15.10
END

IF ~~ DYRO15.28
SAY @1225
= @1226
IF ~~ THEN + DYRO15.23
END

/* At Rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",34)~ THEN BEGIN X#DYLoveTalk16
SAY @1227
++ @1228 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",35) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO16.1
++ @1229 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",35) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO16.3
+ ~Class(Player1,BARD_ALL)~ + @1230 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",35) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO16.2
++ @1231 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",35) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO16.2
++ @1232 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",35) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO16.2
END

IF ~~ DYRO16.1
SAY @1233
IF ~~ THEN + DYRO16.1A
END

IF ~~ DYRO16.1A
SAY @1234
= @1235
++ @1236 + DYRO16.4
++ @1237 + DYRO16.5
++ @1238 + DYRO16.6
END

IF ~~ DYRO16.2
SAY @1239
= @1240
= @1241
= @1242
++ @1243 + DYRO16.7
++ @1244 + DYRO16.1
++ @1245 + DYRO16.8
++ @1246 + DYRO16.9
END

IF ~~ DYRO16.3
SAY @1247
+ ~Class(Player1,BARD_ALL)~ + @1248 + DYRO16.10
++ @1249 + DYRO16.11
++ @1250 + DYRO16.12
++ @1251 + DYRO16.11
++ @1252 + DYRO16.13
END

IF ~~ DYRO16.4
SAY @1253
IF ~~ THEN EXIT
END

IF ~~ DYRO16.5
SAY @1254
= @1255
IF ~~ THEN EXIT
END

IF ~~ DYRO16.6
SAY @1256
IF ~~ THEN EXIT
END

IF ~~ DYRO16.7
SAY @1257
= @1258
IF ~~ THEN + DYRO16.8
END

IF ~~ DYRO16.8
SAY @1259
= @1260
= @1261
= @1262
++ @1263 DO ~SetGlobal("X#HelgTold","GLOBAL",1)~ + DYRO16.14
++ @1264 DO ~SetGlobal("X#HelgTold","GLOBAL",1)~ + DYRO16.14
++ @1265 DO ~SetGlobal("X#HelgTold","GLOBAL",1)~ + DYRO16.15
++ @1266 DO ~SetGlobal("X#HelgTold","GLOBAL",1)~ + DYRO16.15
++ @1246 DO ~SetGlobal("X#HelgTold","GLOBAL",1)~ + DYRO16.9
END

IF ~~ DYRO16.9
SAY @1267
+ ~!Global("X#HelgTold","GLOBAL",1)~ + @1268 + DYRO16.8
++ @1269 + DYRO16.16
+ ~!Global("X#HelgTold","GLOBAL",1)~ + @1270 + DYRO16.8
+ ~Global("X#HelgTold","GLOBAL",1)~ + @1270 + DYRO16.1A
++ @1271 + DYRO16.4
+ ~Global("X#HelgTold","GLOBAL",1)~ + @1272 + DYRO16.5
+ ~Global("X#HelgTold","GLOBAL",1)~ + @1273 + DYRO16.6
END

IF ~~ DYRO16.10
SAY @1274
= @1275
IF ~~ THEN + DYRO16.2
END

IF ~~ DYRO16.11
SAY @1276
IF ~~ THEN + DYRO16.2
END

IF ~~ DYRO16.12
SAY @1277
IF ~~ THEN + DYRO16.11
END

IF ~~ DYRO16.13
SAY @1278
IF ~~ THEN + DYRO16.2
END

IF ~~ DYRO16.14
SAY @1279
IF ~~ THEN + DYRO16.1A
END

IF ~~ DYRO16.15
SAY @1280
IF ~~ THEN + DYRO16.1A
END

IF ~~ DYRO16.16
SAY @1281
IF ~~ THEN + DYRO16.1A
END

/* At Rest, Outdoors */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",36)~ THEN BEGIN X#DYLoveTalk17
SAY @1282
++ @1283 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1)~ + DYRO17.1
+ ~Race(Player1,ELF)~ + @1284 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1)~ + DYRO17.2
+ ~Race(Player1,HALFORC)~ + @1285 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1)~ + DYRO17.3
++ @1286 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1)~ + DYRO17.4
++ @1287 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1)~ + DYRO17.5
END

IF ~~ DYRO17.1
SAY @1288
++ @1289 + DYRO17.6
++ @1290 +DYRO17.7
++ @213 + DYRO17.7
END

IF ~~ DYRO17.2
SAY @1291
++ @1292 + DYRO17.8
++ @1293 + DYRO17.8
++ @1294 + DYRO17.8
END

IF ~~ DYRO17.3
SAY @1295
++ @1296 + DYRO17.9
++ @1297 + DYRO17.10
++ @1298 + DYRO17.9
END

IF ~~ DYRO17.4
SAY @1299
++ @1300 + DYRO17.9
++ @1301 + DYRO17.11
++ @1302 + DYRO17.12
END

IF ~~ DYRO17.5
SAY @1303
++ @1304 + DYRO17.12
++ @1305 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @1306 + DYRO17.12
++ @1307 + DYRO17.12
END

IF ~~ DYRO17.6
SAY @1308
++ @1309 + DYRO17.12
++ @1310 + DYRO17.13
++ @1311 + DYRO17.5
++ @1312 + DYRO17.16
END

IF ~~ DYRO17.7
SAY @1313
++ @1304 + DYRO17.12
++ @1311 + DYRO17.5
++ @1306 + DYRO17.12
++ @1307 + DYRO17.12
END

IF ~~ DYRO17.8
SAY @1314
++ @1315 + DYRO17.14
++ @1316 + DYRO17.6
+ ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ + @1317 + DYRO17.6
++ @1318 + DYRO17.15
++ @1319 + DYRO17.6
END

IF ~~ DYRO17.9
SAY @1320
IF ~~ THEN + DYRO17.6
END

IF ~~ DYRO17.10
SAY @1321
= @1322
IF ~~ THEN + DYRO17.6
END

IF ~~ DYRO17.11
SAY @1323
++ @1324 + DYRO17.12
++ @1325 + DYRO17.12
++ @1326 DO ~SetGlobal("X#DYLovetalk","GLOBAL",39) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER) RestParty()~ EXIT
END

IF ~~ DYRO17.12
SAY @1327
++ @1328 + DYRO17.17
++ @1329 + DYRO17.18
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1330 + DYRO17.19
++ @1331 +DYRO17.20
++ @1332 +DYRO17.21
END

IF ~~ DYRO17.13
SAY @1333
++ @1334 +DYRO17.21
++ @1335 + DYRO17.12
++ @1336 + DYRO17.12
++ @1337 + DYRO17.12
END

IF ~~ DYRO17.14
SAY @1338
++ @1339 + DYRO17.12
++ @1340 +DYRO17.21
++ @1341 + DYRO17.15
++ @1342 + DYRO17.6
END

IF ~~ DYRO17.15
SAY @1343
IF ~~ THEN + DYRO17.6
END

IF ~~ DYRO17.16
SAY @1344
IF ~~ THEN + DYRO17.13
END

IF ~~ DYRO17.17
SAY @1345
IF ~~ THEN DO ~SetGlobal("X#DynaheirLover","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ DYRO17.18
SAY @1346
IF ~~ THEN DO ~SetGlobal("X#DynaheirLover","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ DYRO17.19
SAY @1347
++ @1348 + DYRO17.18
++ @1349 + DYRO17.21
++ @1350 + DYRO17.17
++ @1351 +DYRO17.20
++ @1352 +DYRO17.21
END

IF ~~ DYRO17.20
SAY @1353
= @1354
= @1355
= @1356
++ @1357 + DYRO17.17
++ @1358 + DYRO17.18
++ @1352 +DYRO17.21
END

IF ~~ DYRO17.21
SAY @1359
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) RestParty()~ EXIT
END

/*  At waking */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",38)~ THEN BEGIN X#DYLoveTalk18
SAY @1360
+ ~Class(Player1,BARD) Global("X#DynaheirLover","GLOBAL",2)~ + @1361 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO18.1
+ ~Global("X#DynaheirLover","GLOBAL",1)~ + @1362 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO18.2
+ ~Global("X#DynaheirLover","GLOBAL",2)~ + @1363 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO18.3
+ ~Global("X#DynaheirLover","GLOBAL",2)~ + @1364 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO18.3
+ ~Global("X#DynaheirLover","GLOBAL",2)~ + @1365 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO18.4
END

IF ~~ DYRO18.1
SAY @1366
= @1367
++ @1368 + DYRO18.5
++ @1369 + DYRO18.6
++ @1370 + DYRO18.5
++ @1371 + DYRO18.5
++ @1372 + DYRO18.5
END

IF ~~ DYRO18.2
SAY @1373
++ @1374 + DYRO18.7
++ @1375 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @1376 + DYRO18.8
END

IF ~~ DYRO18.3
SAY @1377
= @1378
+ ~Class(Player1,BARD) Global("X#DynaheirLover","GLOBAL",2)~ + @1361 + DYRO18.1
++ @1379 + DYRO18.8
++ @1380 + DYRO18.9
++ @1381 + DYRO18.10
++ @1382 EXIT
END

IF ~~ DYRO18.4
SAY @1383
++ @1384 + DYRO18.11
++ @1385 + DYRO18.10
+ ~Class(Player1,BARD) Global("X#DynaheirLover","GLOBAL",2)~ + @1361 + DYRO18.1
++ @1386 + DYRO18.1
END

IF ~~ DYRO18.5
SAY @1387
IF ~~ THEN EXIT
END

IF ~~ DYRO18.6
SAY @1388
IF ~~ THEN EXIT
END

IF ~~ DYRO18.7
SAY @1389
++ @1390 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
++ @1391 + DYRO18.12
++ @1392 + DYRO18.13
END

IF ~~ DYRO18.8
SAY @1393
IF ~~ THEN EXIT
END

IF ~~ DYRO18.9
SAY @1394
IF ~~ THEN EXIT
END

IF ~~ DYRO18.10
SAY @1395
= @1396
++ @1397 EXIT
++ @1398 + DYRO18.9
++ @1399 EXIT
END

IF ~~ DYRO18.11
SAY @1400
IF ~~ THEN EXIT
END

IF ~~ DYRO18.12
SAY @1401
= @1402
= @1403
+ ~Class(Player1,BARD) Global("X#DynaheirLover","GLOBAL",2)~ + @1361 + DYRO18.1
++ @1379 + DYRO18.8
++ @1380 + DYRO18.9
++ @1381 + DYRO18.10
++ @1382 EXIT
END

IF ~~ DYRO18.13
SAY @1404
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",40)~ THEN BEGIN X#DYLoveTalk19
SAY @1405
+ ~HPPercentGT(Player1,90)~ + @1406 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO19.1
+ ~HPPercentLT(Player1,91) HPPercentGT(Player1,75)~ + @1407 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO19.1
+ ~HPPercentLT(Player1,76)~ + @1408 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO19.1
++ @1409 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO19.2
++ @1410 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO19.3
++ @1411 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO19.4
END

IF ~~ DYRO19.1
SAY @1412
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1413 + DYRO19.5
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @1413 + DYRO19.6
++ @1414 + DYRO19.7
++ @1415 + DYRO19.8
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1416 + DYRO19.9
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @1417 + DYRO19.10
END

IF ~~ DYRO19.2
SAY @1418
= @1419
IF ~~ THEN + DYRO19.1
END

IF ~~ DYRO19.3
SAY @1420
= @1421
IF ~~ THEN + DYRO19.1
END

IF ~~ DYRO19.4
SAY @1422
= @1423
= @1424
IF ~~ THEN + DYRO19.1
END

IF ~~ DYRO19.5
SAY @1425
++ @1426 + DYRO19.12
++ @1427 + DYRO19.13
++ @1428 + DYRO19.14
++ @1429 + DYRO19.15
END

IF ~~ DYRO19.6
SAY @1430
++ @1431 + DYRO19.16
++ @1432 + DYRO19.16
++ @1433 + DYRO19.17
END

IF ~~ DYRO19.6A
SAY @1434
++ @1431 + DYRO19.16
++ @1432 + DYRO19.16
++ @1433 + DYRO19.17
END

IF ~~ DYRO19.6B
SAY @1435
++ @1431 + DYRO19.16
++ @1432 + DYRO19.16
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1436 + DYRO19.20
++ @1433 + DYRO19.17
END

IF ~~ DYRO19.7
SAY @1437
++ @1438 + DYRO19.18
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1439 + DYRO19.5
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @1439 + DYRO19.6A
++ @1440 EXIT
END

IF ~~ DYRO19.8
SAY @1441
= @1442
IF ~Global("P#KnowBhaal","GLOBAL",1)~ THEN + DYRO19.19
IF ~!Global("P#KnowBhaal","GLOBAL",1)~ THEN + DYRO19.6B
END

IF ~~ DYRO19.9
SAY @1443
++ @1444 + DYRO19.21
++ @1445 + DYRO19.22
++ @1446 + DYRO19.23
END

IF ~~ DYRO19.10
SAY @1447
++ @1431 + DYRO19.16
++ @1432 + DYRO19.16
++ @1433 + DYRO19.17
END

IF ~~ DYRO19.11
SAY @1448
= @1449
= @1450
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1451 + DYRO19.20
++ @1452 + DYRO19.21
++ @1445 + DYRO19.22
++ @1446 + DYRO19.23
++ @1453 + DYRO19.25
++ @1454 + DYRO19.26
END

IF ~~ DYRO19.12
SAY @1455
= @1456
++ @1457 + DYRO19.24
++ @1453 + DYRO19.25
++ @1454 + DYRO19.26
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1458 + DYRO19.20
END

IF ~~ DYRO19.13
SAY @1459
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)LeaveParty() ActionOverride("minsc",LeaveParty()) EscapeArea() ActionOverride("minsc", EscapeArea())~ EXIT
END

IF ~~ DYRO19.14
SAY @1460
++ @1461 + DYRO19.24
++ @1453 + DYRO19.25
++ @1454 + DYRO19.26
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1458 + DYRO19.20
END

IF ~~ DYRO19.15
SAY @1462
= @1463

++ @1426 + DYRO19.12
++ @1464 + DYRO19.13
++ @1428 + DYRO19.14
++ @1465 + DYRO19.11
END

IF ~~ DYRO19.16
SAY @1466
++ @1467 + DYRO19.27
++ @1468 + DYRO19.28
++ @1469 + DYRO19.29
END

IF ~~ DYRO19.17
SAY @1470
= @1471
++ @1467 + DYRO19.27
++ @1468 + DYRO19.28
END

IF ~~ DYRO19.18
SAY @1472
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1439 + DYRO19.5
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @1439 + DYRO19.6A
++ @1440 EXIT
END

IF ~~ DYRO19.19
SAY @1473
= @1474
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1475 + DYRO19.20
++ @1452 + DYRO19.21
++ @1446 + DYRO19.23
++ @1454 + DYRO19.26
END

IF ~~ DYRO19.20
SAY @1476
IF ~~ THEN EXIT
END

IF ~~ DYRO19.21
SAY @1477
IF ~~ THEN EXIT
END

IF ~~ DYRO19.22
SAY @1478
++ @1479 + DYRO19.30
++ @1480 EXIT
+ ~CheckStatGT(Player1, 16, INT)~ + @1481 + DYRO19.20
END

IF ~~ DYRO19.23
SAY @1482
= @1483
++ @1484 + DYRO19.27
++ @1468 + DYRO19.28
END

IF ~~ DYRO19.24
SAY @1485
= @1486
++ @1467 + DYRO19.27
++ @1468 + DYRO19.28
END

IF ~~ DYRO19.25
SAY @1487
= @1471
++ @1467 + DYRO19.27
++ @1468 + DYRO19.28
END

IF ~~ DYRO19.26
SAY @1488
IF ~~ THEN EXIT
END

IF ~~ DYRO19.27
SAY @1489
IF ~~ THEN EXIT
END

IF ~~ DYRO19.28
SAY @1490
IF ~~ THEN EXIT
END

IF ~~ DYRO19.29
SAY @1491
IF ~~ THEN EXIT
END

IF ~~ DYRO19.30
SAY @1492
IF ~~ THEN EXIT
END

/* At Rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",42)~ THEN BEGIN X#DYLoveTalk20
SAY @1493
++ @1494 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO20.1
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1495 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO20.2
+ ~Race(Player1,HALFORC)~ + @1496 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO20.3
+ ~!Race(Player1,HALFORC)~ + @1496 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO20.4
++ @1497 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO20.5
+ ~Class(Player1,BARD_ALL)~ + @1498 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO20.6
END

IF ~~ DYRO20.1
SAY @1499
+ ~Race(Player1,HALFORC)~ + @1500 + DYRO20.3
+ ~!Race(Player1,HALFORC)~ + @1500 + DYRO20.4
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + @1501 + DYRO20.7
++ @1502 + DYRO20.8
+ ~Class(Player1,BARD_ALL)~ + @1503 + DYRO20.9
END

IF ~~ DYRO20.2
SAY @1504
++ @1505 + DYRO20.10
+ ~Race(Player1,ELF)~ + @1506 + DYRO20.11
++ @1507 + DYRO20.11
++ @1502 + DYRO20.8
+ ~Race(Player1,HALFORC)~ + @1500 + DYRO20.3
+ ~!Race(Player1,HALFORC)~ + @1500 + DYRO20.4
END

IF ~~ DYRO20.3
SAY @1508
++ @1509 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,14,INT)~ + @1510 + DYRO20.12
+ ~CheckStatGT(Player1,13,INT)~ + @1511 + DYRO20.13
++ @1512 DO ~RestParty()~ EXIT
++ @1513 + DYRO20.14
END

IF ~~ DYRO20.4
SAY @1514
++ @1509 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,14,INT)~ + @1510 + DYRO20.12
+ ~CheckStatGT(Player1,13,INT)~ + @1511 + DYRO20.13
++ @1512 DO ~RestParty()~ EXIT
END

IF ~~ DYRO20.5
SAY @1515
++ @1505 + DYRO20.10
+ ~Race(Player1,ELF)~ + @1506 + DYRO20.11
++ @1507 + DYRO20.11
++ @1502 + DYRO20.8
+ ~Race(Player1,HALFORC)~ + @1500 + DYRO20.3
+ ~!Race(Player1,HALFORC)~ + @1500 + DYRO20.4
END

IF ~~ DYRO20.6
SAY @1516
++ @1517 + DYRO20.10
+ ~Race(Player1,ELF)~ + @1506 + DYRO20.11
++ @1507 + DYRO20.11
++ @1502 + DYRO20.8
+ ~Race(Player1,HALFORC)~ + @1500 + DYRO20.3
+ ~!Race(Player1,HALFORC)~ + @1500 + DYRO20.4
END

IF ~~ DYRO20.7
SAY @1518
= @1519
++ @1509 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,14,INT)~ + @1510 + DYRO20.12
+ ~CheckStatGT(Player1,13,INT)~ + @1511 + DYRO20.13
++ @1512 DO ~RestParty()~ EXIT
END

IF ~~ DYRO20.8
SAY @1520
++ @1509 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,14,INT)~ + @1510 + DYRO20.12
+ ~CheckStatGT(Player1,13,INT)~ + @1511 + DYRO20.13
END

IF ~~ DYRO20.9
SAY @1521
++ @1509 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,14,INT)~ + @1510 + DYRO20.12
+ ~CheckStatGT(Player1,13,INT)~ + @1511 + DYRO20.13
END

IF ~~ DYRO20.10
SAY @1522
++ @1509 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,14,INT)~ + @1510 + DYRO20.12
+ ~CheckStatGT(Player1,13,INT)~ + @1511 + DYRO20.13
END

IF ~~ DYRO20.11
SAY @1523
++ @1509 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,14,INT)~ + @1510 + DYRO20.12
+ ~CheckStatGT(Player1,13,INT)~ + @1511 + DYRO20.13
END

IF ~~ DYRO20.12
SAY @1524
IF ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ THEN DO ~GiveItemCreate("X#DYPORE",Player1,1,0,0) RestParty()~ EXIT
IF ~Race(Player1,HALFORC)~ THEN DO ~GiveItemCreate("X#DYPORO",Player1,1,0,0) RestParty()~ EXIT
IF ~Race(Player1,HUMAN) OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,RANGER_ALL) Class(Player1,PALADIN_ALL)~ THEN DO ~GiveItemCreate("X#DYPORF",Player1,1,0,0) RestParty()~ EXIT
IF ~Race(Player1,HUMAN) !Class(Player1,FIGHTER_ALL) !Class(Player1,RANGER_ALL) !Class(Player1,PALADIN_ALL)~ THEN DO ~GiveItemCreate("X#DYPORR",Player1,1,0,0) RestParty()~ EXIT
END

IF ~~ DYRO20.13
SAY @1525
IF ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ THEN DO ~GiveItemCreate("X#DYPORE",Player1,1,0,0) RestParty()~ EXIT
IF ~Race(Player1,HALFORC)~ THEN DO ~GiveItemCreate("X#DYPORO",Player1,1,0,0) RestParty()~ EXIT
IF ~Race(Player1,HUMAN) OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,RANGER_ALL) Class(Player1,PALADIN_ALL)~ THEN DO ~GiveItemCreate("X#DYPORF",Player1,1,0,0) RestParty()~ EXIT
IF ~Race(Player1,HUMAN) !Class(Player1,FIGHTER_ALL) !Class(Player1,RANGER_ALL) !Class(Player1,PALADIN_ALL)~ THEN DO ~GiveItemCreate("X#DYPORR",Player1,1,0,0) RestParty()~ EXIT
END

IF ~~ DYRO20.14
SAY @1526
= @1527
= @1528
IF ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ THEN DO ~GiveItemCreate("X#DYPORE",Player1,1,0,0) RestParty()~ EXIT
IF ~Race(Player1,HALFORC)~ THEN DO ~GiveItemCreate("X#DYPORO",Player1,1,0,0) RestParty()~ EXIT
IF ~Race(Player1,HUMAN) OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,RANGER_ALL) Class(Player1,PALADIN_ALL)~ THEN DO ~GiveItemCreate("X#DYPORF",Player1,1,0,0) RestParty()~ EXIT
IF ~Race(Player1,HUMAN) !Class(Player1,FIGHTER_ALL) !Class(Player1,RANGER_ALL) !Class(Player1,PALADIN_ALL)~ THEN DO ~GiveItemCreate("X#DYPORR",Player1,1,0,0) RestParty()~ EXIT
END

/* At Rest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",44)~ THEN BEGIN X#DYLoveTalk21
SAY @1529
= @1530
++ @1531 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",45)~ + DYRO21.1
++ @1532 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",45)~ + DYRO21.2
++ @1533 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",45)~ + DYRO21.2
++ @1534 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",45)~ + DYRO21.3
++ @1535 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",45)~ + DYRO21.1
++ @1536 DO ~SetGlobal("X#DYLoveTalk","GLOBAL",45)~ + DYRO21.4
END

IF ~~ DYRO21.1
SAY @1537
++ @1538 + DYRO21.2
++ @1532 + DYRO21.2
++ @1533 + DYRO21.2
++ @1534 + DYRO21.3
END

IF ~~ DYRO21.2
SAY @1539
++ @1540 + DYRO21.5
++ @1541 + DYRO21.6
+ ~CheckStatGT(Player1,14,INT)~ + @1542 + DYRO21.6
++ @1543 + DYRO21.7
++ @1544 + DYRO21.5
++ @1545 + DYRO21.8
END

IF ~~ DYRO21.3
SAY @1546
= @1547
+ ~!Class(Player1,MAGE_ALL) !Class(Player1,SORCERER)~ + @1548 + DYRO21.9
+ ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ + @1549 + DYRO21.5
++ @1550 + DYRO21.9
++ @1551 + DYRO21.2
END

IF ~~ DYRO21.4
SAY @1552
++ @1538 + DYRO21.2
++ @1553 + DYRO21.2
++ @1554 + DYRO21.2
++ @1534 + DYRO21.3
END

IF ~~ DYRO21.5
SAY @1555
= @1556
= @1557
++ @1558 + DYRO21.6
+ ~CheckStatGT(Player1,14,INT)~ + @1559 + DYRO21.6
++ @1543 + DYRO21.7
++ @1560 + DYRO21.8
+ ~Global("X#HeRashemi","GLOBAL",1)~ + @1561 + DYRO21.10
END

IF ~~ DYRO21.6
SAY @1562
= @1563
++ @1564 + DYRO21.11
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1565 + DYRO21.12
++ @1566 + DYRO21.13
++ @1567 + DYRO21.11
END

IF ~~ DYRO21.7
SAY @1568
= @1569
++ @1570 + DYRO21.14
++ @1571 + DYRO21.11
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1565 + DYRO21.12
++ @1566 + DYRO21.13
++ @1567 + DYRO21.11
+ ~!Alignment(Player1,LAWFUL_GOOD) !Alignment(Player1,LAWFUL_NEUTRAL)~ + @1572 +DYRO21.15
++ @1573 DO ~RestParty()~ EXIT
END

IF ~~ DYRO21.8
SAY @1574
++ @1575 + DYRO21.14
++ @1571 + DYRO21.11
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1565 + DYRO21.12
++ @1566 + DYRO21.13
++ @1567 + DYRO21.11
+ ~!Alignment(Player1,LAWFUL_GOOD) !Alignment(Player1,LAWFUL_NEUTRAL)~ + @1572 + DYRO21.15
++ @1576 DO ~RestParty()~ EXIT
END

IF ~~ DYRO21.9
SAY @1577
= @1556
= @1557
++ @1558 + DYRO21.6
+ ~CheckStatGT(Player1,14,INT)~ + @1542 + DYRO21.6
++ @1543 + DYRO21.7
++ @1560 + DYRO21.8
+ ~Global("X#HeRashemi","GLOBAL",1)~ + @1561 + DYRO21.10
END

IF ~~ DYRO21.10
SAY @1578
= @1579
++ @1580 + DYRO21.16
++ @1581 + DYRO21.17
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1565 + DYRO21.12
++ @1582 + DYRO21.16
++ @1583 + DYRO21.15
END

IF ~~ DYRO21.11
SAY @1584
= @1585
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1586 + DYRO21.12
++ @1587 + DYRO21.16
++ @1583 + DYRO21.15
END

IF ~~ DYRO21.12
SAY @1588
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ DYRO21.13
SAY @1589
= @1590
+ ~CheckStatGT(Player1,12,CON)~ + @1591 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,13,CON)~ + @1591 DO ~SetGlobal("X#DYMagicItem","GLOBAL",1) RestParty()~ EXIT
++ @1592 DO ~SetGlobal("X#DYMagicItem","GLOBAL",1)RestParty()~ EXIT
END

IF ~~ DYRO21.14
SAY @1593
= @1590
+ ~CheckStatGT(Player1,12,CON)~ + @1591 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,13,CON)~ + @1591 DO ~SetGlobal("X#DYMagicItem","GLOBAL",1) RestParty()~ EXIT
++ @1592 DO ~SetGlobal("X#DYMagicItem","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ DYRO21.15
SAY @1594
+ ~CheckStatGT(Player1,12,CON)~ + @1591 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,13,CON)~ + @1591 DO ~SetGlobal("X#DYMagicItem","GLOBAL",1) RestParty()~ EXIT
++ @1592 DO ~SetGlobal("X#DYMagicItem","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ DYRO21.16
SAY @1595
= @1596
= @1590
+ ~CheckStatGT(Player1,12,CON)~ + @1591 DO ~RestParty()~ EXIT
+ ~CheckStatLT(Player1,13,CON)~ + @1591 DO ~SetGlobal("X#DYMagicItem","GLOBAL",1) RestParty()~ EXIT
++ @1592 DO ~SetGlobal("X#DYMagicItem","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ DYRO21.17
SAY @1597
= @1598
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* At Waking */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",46) Global("X#DYMagicItem","GLOBAL",1)~ THEN BEGIN X#DYLoveTalk21A
SAY @1599
 = @1600
IF ~Class(Player1,BARD_ALL)~ THEN DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) GiveItemCreate("BRAC25",Player1,1,0,0) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ EXIT
IF ~!Class(Player1,BARD_ALL)~ THEN DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) GiveItemCreate("%tutu_var%BELT04",Player1,1,0,0) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ EXIT
IF ~PartyHasItem("%tutu_var%SW1H04") !PartyHasItem("%tutu_var%SW1H05")~ THEN DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) TakePartyItem("%tutu_var%SW1H04") DestroyItem("%tutu_var%SW1H04") GiveItemCreate("%tutu_var%SW1H05",Player1,1,0,0) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ EXIT
IF ~PartyHasItem("%tutu_var%BLUN04") !PartyHasItem("%tutu_var%BLUN11")~ THEN DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) TakePartyItem("%tutu_var%BLUN04") DestroyItem("%tutu_var%BLUN04") GiveItemCreate("%tutu_var%BLUN11",Player1,1,0,0) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ EXIT
IF ~PartyHasItem("%tutu_var%SPER01") !PartyHasItem("%tutu_var%SPER02")~ THEN DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) TakePartyItem("%tutu_var%SPER01") DestroyItem("%tutu_var%SPER01") GiveItemCreate("%tutu_var%SPER02",Player1,1,0,0) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ EXIT
IF ~PartyHasItem("%tutu_var%SLNG01") !PartyHasItem("%tutu_var%SLNG03")~ THEN DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) TakePartyItem("%tutu_var%SLNG01") DestroyItem("%tutu_var%SLNG01") GiveItemCreate("%tutu_var%SLNG03",Player1,1,0,0) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",48)~ THEN BEGIN X#DYLoveTalk22
SAY @1601
++ @1602 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO22.1
++ @1603 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO22.2
++ @1604 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO22.3
+ ~Alignment(Player1,LAWFUL_GOOD)~ + @1605 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO22.4
++ @1606 DO ~IncrementGlobal("X#DYLoveTalk","GLOBAL",1) RealSetGlobalTimer("X#DYLoveTalkTime","GLOBAL",DYROM_TIMER)~ + DYRO22.5
END

IF ~~ DYRO22.1
SAY @1607
IF ~~ THEN + DYRO22.2
END

IF ~~ DYRO22.2
SAY @1608
++ @1609 + DYRO22.6
++ @1610 + DYRO22.7
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_4%)~ + @1611 + DYRO22.7
++ @1612 + DYRO22.7
END

IF ~~ DYRO22.3
SAY @1613
IF ~~ THEN + DYRO22.2
END

IF ~~ DYRO22.4
SAY @1614
= @1615
++ @1616 + DYRO22.2
++ @1617 + DYRO22.8
++ @1618 + DYRO22.6
END

IF ~~ DYRO22.5
SAY @1619
IF ~~ THEN + DYRO22.1
END

IF ~~ DYRO22.6
SAY @1620
++ @1621 + DYRO22.9
++ @1622 + DYRO22.7
++ @1623 + DYRO22.10
++ @1624 + DYRO22.11
++ @1625 + DYRO22.12
END

IF ~~ DYRO22.7
SAY @1626
++ @1627 + DYRO22.13
++ @1628 + DYRO22.14
++ @1629 + DYRO22.15
++ @1630 + DYRO22.16
END

IF ~~ DYRO22.8
SAY @1631
++ @1632 + DYRO22.2
++ @1633 + DYRO22.6
END

IF ~~ DYRO22.9
SAY @1634
++ @1635 + DYRO22.17
++ @1622 + DYRO22.7
++ @1623 + DYRO22.10
++ @1624 + DYRO22.11
++ @1625 + DYRO22.12
END

IF ~~ DYRO22.10
SAY @1636
++ @1637 EXIT
++ @1629 + DYRO22.15
++ @1630 + DYRO22.16
END

IF ~~ DYRO22.11
SAY @1638
++ @1639 EXIT
++ @1640 + DYRO22.16
END

IF ~~ DYRO22.12
SAY @1641
++ @1642 + DYRO22.18
++ @1629 + DYRO22.15
++ @1630 + DYRO22.16
END

IF ~~ DYRO22.13
SAY @1643
++ @1637 EXIT
++ @1629 + DYRO22.15
++ @1630 + DYRO22.16
END

IF ~~ DYRO22.14
SAY @1644
++ @1637 EXIT
++ @1629 + DYRO22.15
++ @1630 + DYRO22.16
END

IF ~~ DYRO22.15
SAY @1645
++ @1646 EXIT
++ @1647 + DYRO22.16
END

IF ~~ DYRO22.16
SAY @1648
= @1649
= @1650
= @1651
= @1652
= @1653
= @1654
IF ~~ THEN EXIT
END

IF ~~ DYRO22.17
SAY @1655
++ @1656 EXIT
++ @1647 + DYRO22.16
END

IF ~~ DYRO22.18
SAY @1657
++ @1658 EXIT
++ @1659 + DYRO22.16
END

/* At Rest */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYLoveTalk","GLOBAL",50)~ THEN BEGIN X#DYLoveTalk23
SAY @1660
= @1661
= @1662
= @1663
= @1664
= @1665
= @1666
= @1667
= @1668
= @1669
IF ~~ THEN DO ~SetGlobal("X#DYLoveTalk","GLOBAL",51)~ EXIT
END

END

/* End Cutscene Dialogues, Tutu only */

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DynaDeath","GLOBAL",2)~ THEN X#JONI X#DyLoveTalk24
@1670
END
++ @1671 DO ~SetGlobal("X#DynaDeath","GLOBAL",3)~ + Irenicus1
++ @1672 DO ~SetGlobal("X#DynaDeath","GLOBAL",3)~ + Irenicus2
++ @1673 DO ~SetGlobal("X#DynaDeath","GLOBAL",3)~ + Irenicus3
++ @1674 DO ~SetGlobal("X#DynaDeath","GLOBAL",3)~ + Irenicus4

BEGIN X#JONI

APPEND X#JONI

IF ~~ Irenicus1
SAY @1675
++ @1676 + Irenicus5
++ @1672 + Irenicus2
++ @1673 + Irenicus3
++ @1674 + Irenicus4
END

IF ~~ Irenicus2
SAY @1677
IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN + Irenicus6
IF ~OR(2)!InParty("%IMOEN_DV%") Dead("%IMOEN_DV%")~ THEN EXTERN ~%DYNAHEIR_JOINED%~ Irenicus7
END

IF ~~ Irenicus3
SAY @1678
IF ~~ THEN + Irenicus2
END


IF ~~ Irenicus4
SAY @1679
IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN + Irenicus6
IF ~OR(3) !InParty("%IMOEN_DV%") !InMyArea("%IMOEN_DV%") Dead("%IMOEN_DV%")~ THEN EXTERN ~%DYNAHEIR_JOINED%~ Irenicus7
END

IF ~~ Irenicus5
SAY @1680
IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN + Irenicus6
IF ~OR(3) !InParty("%IMOEN_DV%") !InMyArea("%IMOEN_DV%") Dead("%IMOEN_DV%")~ THEN EXTERN ~%DYNAHEIR_JOINED%~ Irenicus7
END

IF ~~ X#FinalNoImoen
SAY @1681
IF ~~ THEN DO ~SetGlobal("X#DynaDeath","GLOBAL",4)
StartCutSceneMode()
StartCutScene("X#DYLSTA")~
EXIT
END

IF ~~ X#FinalImoen
SAY @1681
IF ~~ THEN DO ~SetGlobal("X#DynaDeath","GLOBAL",4)
StartCutSceneMode()
StartCutScene("X#DYLSTB")~
EXIT
END

END


CHAIN ~X#JONI~ Irenicus6
@1682
== ~%DYNAHEIR_JOINED%~ @1683
END
IF ~~ THEN DO ~ActionOverride("dynaheir",ReallyForceSpellRES("X#DYMEN",Player1))~ EXTERN ~%DYNAHEIR_JOINED%~ X#DimensionImoen

CHAIN ~%DYNAHEIR_JOINED%~ Irenicus7
@1683
END
IF ~~ THEN + X#DimensionNoImoen

CHAIN ~%DYNAHEIR_JOINED%~ X#DimensionNoImoen
@1684
END
++ @1685 EXTERN X#JONI X#FinalNoImoen
++ @1686 EXTERN X#JONI X#FinalNoImoen
++ @1687 EXTERN X#JONI X#FinalNoImoen
++ @1688 EXTERN X#JONI X#FinalNoImoen

CHAIN ~%DYNAHEIR_JOINED%~ X#DimensionImoen
@1684
END
++ @1685 EXTERN X#JONI X#FinalImoen
++ @1686 EXTERN X#JONI X#FinalImoen
++ @1687 EXTERN X#JONI X#FinalImoen
++ @1688 EXTERN X#JONI X#FinalImoen


/* Dynaheir Initiated Flirts - Placeholders */

APPEND ~%DYNAHEIR_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFlirt7","GLOBAL",1)~ THEN BEGIN X#DYFlirt7
SAY @1689
++ @1690 DO ~SetGlobal("X#DyFlirt7","GLOBAL",2)~ + DyDel1
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + @1691 DO ~SetGlobal("X#DyFlirt7","GLOBAL",2)~ + DyDel2
++ @1692 DO ~SetGlobal("X#DyFlirt7","GLOBAL",2)~ + DyDel3
++ @1693 DO ~SetGlobal("X#DyFlirt7","GLOBAL",2)~ + DyDel5
END

IF ~~ DyDel1
SAY @1694
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + @1695 + DyDel2
++ @1692 + DyDel3
++ @1696 + DyDel4
++ @1693 + DyDel5
END

IF ~~ DyDel2
SAY @1697
IF ~~ THEN EXIT
END

IF ~~ DyDel3
SAY @1698
++ @1699 + DyDel2
++ @1696 + DyDel4
++ @1693 + DyDel5
END

IF ~~ DyDel4
SAY @1700
IF ~~ THEN + DyDel2
END

IF ~~ DyDel5
SAY @1701
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFlirt1","GLOBAL",1)~ THEN BEGIN X#DYFlirt1
SAY @1702
++ @1703 DO ~SetGlobal("X#DyFlirt1","GLOBAL",2)~ + DYFLT1.1
++ @1704 DO ~SetGlobal("X#DyFlirt1","GLOBAL",2)~ + DYFLT1.2
++ @1705 DO ~SetGlobal("X#DyFlirt1","GLOBAL",2)~ + DYFLT1.3
END

IF ~~ DYFLT1.1
SAY @1706
++ @1707 + DYFLT1.4
++ @1708 + DYFLT1.5
END

IF ~~ DYFLT1.2
SAY @1709
++ @1710 + DYFLT1.6
++ @1707 + DYFLT1.4
++ @1708 + DYFLT1.5
++ @1711 + DYFLT1.3
END

IF ~~ DYFLT1.3
SAY @1712
++ @1708 + DYFLT1.5
++ @1713 EXIT
END

IF ~~ DYFLT1.4
SAY @1714
++ @1708 + DYFLT1.5
++ @1713 EXIT
END

IF ~~ DYFLT1.5
SAY @1715
= @1716
= @1717
+ ~ReputationGT(Player1,9)~ + @1718 + DYFLT1.7
+ ~ReputationLT(Player1,10)~ + @1719 + DYFLT1.8
++ @1720 + DYFLT1.9
END

IF ~~ DYFLT1.6
SAY @1721
++ @1708 + DYFLT1.5
++ @1713 EXIT
END

IF ~~ DYFLT1.7
SAY @1722
++ @1723 + DYFLT1.10
++ @1724 + DYFLT1.11
++ @1725 + DYFLT1.9
END

IF ~~ DYFLT1.8
SAY @1726
IF ~~ THEN EXIT
END

IF ~~ DYFLT1.9
SAY @1727
IF ~~ THEN EXIT
END

IF ~~ DYFLT1.10
SAY @1728
IF ~~ THEN + DYFLT1.11
END

IF ~~ DYFLT1.11
SAY @1729
IF ~~ THEN EXIT
END


IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFlirt2","GLOBAL",1)~ THEN BEGIN X#DYFlirt2
SAY @1730
++ @1731 DO ~SetGlobal("X#DyFlirt2","GLOBAL",2)~ + DYFLT2.1
++ @1732 DO ~SetGlobal("X#DyFlirt2","GLOBAL",2)~ + DYFLT2.2
++ @1733 DO ~SetGlobal("X#DyFlirt2","GLOBAL",2)~ + DYFLT2.3
++ @1734 DO ~SetGlobal("X#DyFlirt2","GLOBAL",2)~ + DYFLT2.4
END

IF ~~ DYFLT2.1
SAY @1735
++ @1732 + DYFLT2.2
++ @1733 + DYFLT2.3
++ @1734 + DYFLT2.4
END

IF ~~ DYFLT2.2
SAY @1736
++ @1733 + DYFLT2.3
++ @1737 + DYFLT2.4
END

IF ~~ DYFLT2.3
SAY @1738
= @1739
++ @1740 + DYFLT2.5
++ @1741 + DYFLT2.4
++ @1742 + DYFLT2.6
END

IF ~~ DYFLT2.4
SAY @1743
++ @1744 + DYFLT2.7
++ @1745 + DYFLT2.8
++ @1746 + DYFLT2.6
END

IF ~~ DYFLT2.5
SAY @1747
++ @1733 EXIT
++ @1737 + DYFLT2.4
END

IF ~~ DYFLT2.6
SAY @1748
IF ~~ THEN EXIT
END

IF ~~ DYFLT2.7
SAY @1749
IF ~~ THEN EXIT
END

IF ~~ DYFLT2.8
SAY @1750
= @1751
+ ~ReputationGT(Player1,9)~ + @1752 EXIT
+ ~ReputationLT(Player1,10)~ + @1753 EXIT
++ @1754 EXIT
END


IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFlirt3","GLOBAL",1)~ THEN BEGIN X#DYFlirt3
SAY @1755
++ @1756 DO ~SetGlobal("X#DyFlirt3","GLOBAL",2)~ + DYFLT3.1
++ @1757 DO ~SetGlobal("X#DyFlirt3","GLOBAL",2)~ + DYFLT3.2
++ @1758 DO ~SetGlobal("X#DyFlirt3","GLOBAL",2)~ + DYFLT3.2
END

IF ~~ DYFLT3.1
SAY @1759
++ @1760 + DYFLT3.3
++ @1761 + DYFLT3.4
++ @1762 + DYFLT3.2
END

IF ~~ DYFLT3.2
SAY @1763
++ @1764 + DYFLT3.5
++ @1765 + DYFLT3.6
++ @1766 + DYFLT3.7
END

IF ~~ DYFLT3.3
SAY @1767
++ @1768 + DYFLT3.4
++ @1769 + DYFLT3.2
++ @1762 + DYFLT3.2
END

IF ~~ DYFLT3.4
SAY @1770
++ @1771 EXIT
++ @1772 + DYFLT3.2
++ @1773 + DYFLT3.2
END

IF ~~ DYFLT3.5
SAY @1774
++ @1775 + DYFLT3.8
++ @1776 + DYFLT3.9
++ @1777 + DYFLT3.10
END

IF ~~ DYFLT3.6
SAY @1778
IF ~~ THEN + DYFLT3.5
END

IF ~~ DYFLT3.7
SAY @1779
IF ~~ THEN + DYFLT3.5
END

IF ~~ DYFLT3.8
SAY @1780
IF ~~ THEN EXIT
END

IF ~~ DYFLT3.9
SAY @1781
IF ~~ THEN EXIT
END

IF ~~ DYFLT3.10
SAY @1782
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFlirt4","GLOBAL",1)~ THEN BEGIN X#DYFlirt4
SAY @1783
++ @1784 DO ~SetGlobal("X#DyFlirt4","GLOBAL",2)~ + DYFLT4.1
++ @1785 DO ~SetGlobal("X#DyFlirt4","GLOBAL",2)~ + DYFLT4.2
++ @1786 DO ~SetGlobal("X#DyFlirt4","GLOBAL",2)~ + DYFLT4.3
++ @1787 DO ~SetGlobal("X#DyFlirt4","GLOBAL",2)~ + DYFLT4.3A
++ @1788 DO ~SetGlobal("X#DyFlirt4","GLOBAL",2)~ + DYFLT4.4
+ ~Class(Player1,BARD_ALL)~ + @1789 DO ~SetGlobal("X#DyFlirt4","GLOBAL",2)~ + DYFLT4.4
++ @1790 DO ~SetGlobal("X#DyFlirt4","GLOBAL",2)~ + DYFLT4.4
++ @1791 DO ~SetGlobal("X#DyFlirt4","GLOBAL",2)~ + DYFLT4.5
END

IF ~~ DYFLT4.1
SAY @1792
++ @1793 EXIT
++ @1794 + DYFLT4.3
++ @1787 + DYFLT4.3A
++ @1788 + DYFLT4.4
+ ~Class(Player1,BARD_ALL)~ + @1789 + DYFLT4.4
++ @1790 + DYFLT4.4
END

IF ~~ DYFLT4.2
SAY @1795
= @1796
++ @1797 EXIT
++ @1794 + DYFLT4.3
++ @1787 + DYFLT4.3A
++ @1788 + DYFLT4.4
+ ~Class(Player1,BARD_ALL)~ + @1798 + DYFLT4.4
++ @1790 + DYFLT4.4
END

IF ~~ DYFLT4.3
SAY @1799
++ @1800 + DYFLT4.6
++ @1801 + DYFLT4.3A
++ @1788 + DYFLT4.4
+ ~Class(Player1,BARD_ALL)~ + @1798 + DYFLT4.4
++ @1790 + DYFLT4.4
END

IF ~~ DYFLT4.3A
SAY @1802
IF ~~ THEN EXIT
END

IF ~~ DYFLT4.4
SAY @1803
= @1804
++ @1797 EXIT
++ @1800 + DYFLT4.6
++ @1805 + DYFLT4.3A
END

IF ~~ DYFLT4.5
SAY @1806
++ @1797 EXIT
++ @1800 + DYFLT4.6
++ @1805 + DYFLT4.3A
END

IF ~~ DYFLT4.6
SAY @1807
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFlirt5","GLOBAL",1)~ THEN BEGIN X#DYFlirt5
SAY @1808
IF ~~ THEN DO ~SetGlobal("X#DyFlirt5","GLOBAL",2)~ + DYFLT5.1
END

IF ~~ DYFLT5.1
SAY @1809
++ @1810 + DYFLT5.2
++ @1811 + DYFLT5.3
++ @1812 + DYFLT5.4
END

IF ~~ DYFLT5.2
SAY @1813
++ @1814 + DYFLT5.5
++ @1815 + DYFLT5.6
++ @1816 EXIT
END

IF ~~ DYFLT5.3
SAY @1817
= @1818
IF ~~ THEN EXIT
END

IF ~~ DYFLT5.4
SAY @1819
= @1820
++ @1821 EXIT
++ @1822 + DYFLT5.2
++ @1811 + DYFLT5.3
END

IF ~~ DYFLT5.5
SAY @1823
= @1824
IF ~~ THEN EXIT
END

IF ~~ DYFLT5.6
SAY @1825
= @1826
= @1827
= @1828
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DyFlirt6","GLOBAL",1)~ THEN BEGIN X#DYFlirt6
SAY @1829
++ @1830 DO ~SetGlobal("X#DyFlirt6","GLOBAL",2)~ + DYFLT6.1
++ @1831 DO ~SetGlobal("X#DyFlirt6","GLOBAL",2)~ + DYFLT6.2
+ ~CheckStatGT(Player1,15,WIS)~ + @1832 DO ~SetGlobal("X#DyFlirt6","GLOBAL",2)~ + DYFLT6.3
+ ~CheckStatGT(Player1,15,WIS)~ + @1833 DO ~SetGlobal("X#DyFlirt6","GLOBAL",2)~ + DYFLT6.4
END

IF ~~ DYFLT6.1
SAY @1834  //nothing
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1835 + DYFLT6.5  //anf loyal to you
++ @1836 + DYFLT6.5 //belongs midden
++ @1837 + DYFLT6.6  //flatter
++ @1838 + DYFLT6.7  //wry
END

IF ~~ DYFLT6.2
SAY @1839    // mood returns
IF ~~ THEN EXIT
END

IF ~~ DYFLT6.3
SAY @1840  //different
+ ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,LAWFUL_NEUTRAL)~ + @1835 + DYFLT6.4
++ @1836 + DYFLT6.5 //belongs midden
++ @1837 + DYFLT6.6 //flatter
++ @1838 + DYFLT6.7 //wry
END

IF ~~ DYFLT6.4
SAY @1841  //not loyal different
IF ~~ THEN EXIT
END

IF ~~ DYFLT6.5
SAY @1842 //condemn tamoko too
IF ~~ THEN EXIT
END

IF ~~ DYFLT6.6
SAY @1843  //comliment
IF ~~ THEN EXIT
END

IF ~~ DYFLT6.7
SAY @1844   //but are you sure 
IF ~~ THEN EXIT
END

END
