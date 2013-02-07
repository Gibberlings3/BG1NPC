ADD_TRANS_ACTION ~%tutu_var%LOTHAN~ BEGIN 1 END BEGIN END ~SetGlobal("P#BranwenLothander","GLOBAL",1)~

APPEND ~%BRANWEN_JOINED%~

/* Love Talk 1 regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",2)~ THEN BEGIN X#BRLoveTalk1
SAY @0
++ @1 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT1.1
++ @2 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT1.2
++ @3 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT1.3
++ @4 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT1.4
++ @5 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT1.11
END

IF ~~ P#BRLT1.1
SAY @6
++ @7 + P#BRLT1.7
++ @8 + P#BRLT1.8
++ @9 + P#BRLT1.2
END

IF ~~ P#BRLT1.2
SAY @10
++ @11 + P#BRLT1.3
++ @12 + P#BRLT1.5
++ @13 + P#BRLT1.6
END

IF ~~ P#BRLT1.5
SAY @14
IF ~~ THEN EXIT
END

IF ~~ P#BRLT1.6
SAY @15
IF ~~ THEN EXIT
END

IF ~~ P#BRLT1.3
SAY @16
++ @17 + P#BRLT1.8
++ @18 + P#BRLT1.9
++ @19 + P#BRLT1.8
END

IF ~~ P#BRLT1.4
SAY @20
++ @21 + P#BRLT1.7
++ @22 + P#BRLT1.7
++ @23 + P#BRLT1.7
END

IF ~~ P#BRLT1.7
SAY @24
IF ~~ THEN EXIT
END

IF ~~ P#BRLT1.8
SAY @25
= @26
++ @27 + P#BRLT1.10
++ @28 + P#BRLT1.12
++ @29 + P#BRLT1.6
++ @30 + P#BRLT1.10
END

IF ~~ P#BRLT1.9
SAY @31
IF ~~ THEN EXIT
END

IF ~~ P#BRLT1.10
SAY @32
++ @33 + P#BRLT1.13
++ @34 + P#BRLT1.13
++ @35 + P#BRLT1.13
++ @36 + P#BRLT1.14
END

IF ~~ P#BRLT1.11
SAY @37
++ @17 + P#BRLT1.8
++ @18 + P#BRLT1.9
++ @19 + P#BRLT1.8
END

IF ~~ P#BRLT1.12
SAY @38
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT1.13
SAY @39
= @40
IF ~~ THEN EXIT
END

IF ~~ P#BRLT1.14
SAY @41
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

/* Love Talk 2 regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",4)~ THEN BEGIN X#BRLoveTalk2
SAY @42
++ @43 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT2.1
++ @44 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT2.1
++ @45 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT2.2
END

IF ~~ P#BRLT2.1
SAY @46
IF ~~ THEN GOTO P#BRLT2.6
END

IF ~~ P#BRLT2.2
SAY @47
++ @48 + P#BRLT2.3
++ @49 + P#BRLT2.4
++ @50 + P#BRLT2.5
END

IF ~~ P#BRLT2.3
SAY @51
IF ~~ THEN EXIT
END

IF ~~ P#BRLT2.4
SAY @52
IF ~~ THEN GOTO P#BRLT2.6
END

IF ~~ P#BRLT2.5
SAY @53
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT2.6
SAY @54
= @55
++ @56 + P#BRLT2.8
++ @57 + P#BRLT2.8
++ @58 + P#BRLT2.7
END

IF ~~ P#BRLT2.7
SAY @59
IF ~~ THEN EXIT
END

IF ~~ P#BRLT2.8
SAY @60
= @61
= @62
= @63
++ @64 + P#BRLT2.9
++ @65 + P#BRLT2.10
++ @66 + P#BRLT2.11
++ @67 + P#BRLT2.12
END

IF ~~ P#BRLT2.9
SAY @68
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT2.10
SAY @69
IF ~~ THEN EXIT
END

IF ~~ P#BRLT2.11
SAY @70
IF ~~ THEN EXIT
END

IF ~~ P#BRLT2.12
SAY @71
IF ~~ THEN EXIT
END

/*  Love Talk 3 - regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",6)~ THEN BEGIN X#BRLoveTalk3
SAY @72
++ @73 DO ~SetGlobal("P#BRLoveTalk","GLOBAL",7) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT3.1
++ @74 DO ~SetGlobal("P#BRLoveTalk","GLOBAL",7) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT3.7
+ ~InParty("sharteel")~ + @75 DO ~SetGlobal("P#BRLoveTalk","GLOBAL",7) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT3.2
+ ~!InParty("sharteel")~ + @75 DO ~SetGlobal("P#BRLoveTalk","GLOBAL",7) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT3.3
++ @76 DO ~SetGlobal("P#BRLoveTalk","GLOBAL",7) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT3.4
++ @77 DO ~SetGlobal("P#BRLoveTalk","GLOBAL",7) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT3.5
++ @78 DO ~SetGlobal("P#BRLoveTalk","GLOBAL",7) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT3.12
END

IF ~~ P#BRLT3.1
SAY @79
IF ~~ THEN GOTO P#BRLT3.7
END

IF ~~ P#BRLT3.2
SAY @80
IF ~~ THEN GOTO P#BRLT3.6
END

IF ~~ P#BRLT3.3
SAY @81
IF ~~ THEN GOTO P#BRLT3.6
END

IF ~~ P#BRLT3.4
SAY @82
IF ~~ THEN EXIT
END

IF ~~ P#BRLT3.5
SAY @83
IF ~~ THEN GOTO P#BRLT3.6
END

IF ~~ P#BRLT3.6
SAY @84
IF ~~ THEN GOTO P#BRLT3.7
END

IF ~~ P#BRLT3.7
SAY @85
= @86
++ @87 + P#BRLT3.10
++ @88 + P#BRLT3.12
++ @89 + P#BRLT3.9
++ @90 + P#BRLT3.8
END

IF ~~ P#BRLT3.8
SAY @91
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT3.9
SAY @92
IF ~~ THEN GOTO P#BRLT3.10
END

IF ~~ P#BRLT3.10
SAY @93
++ @94 + P#BRLT3.13
++ @95 + P#BRLT3.12
++ @96 + P#BRLT3.11
++ @97 + P#BRLT3.8
END

IF ~~ P#BRLT3.11
SAY @98
IF ~~ THEN EXIT
END

IF ~~ P#BRLT3.12
SAY @99
IF ~~ THEN EXIT
END

IF ~~ P#BRLT3.13
SAY @100
= @101
IF ~~ THEN EXIT
END

/*  Love Talk 4 - regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",8)~THEN BEGIN X#BRLoveTalk4
SAY @102
++ @103 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT4.1
++ @104 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT4.2
++ @105 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT4.3
++ @106 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT4.4
END

IF ~~ P#BRLT4.1
SAY @107
++ @108 + P#BRLT4.6
++ @109 + P#BRLT4.7
++ @110 + P#BRLT4.4
END

IF ~~ P#BRLT4.2
SAY @111
= @112
++ @113 + P#BRLT4.1
++ @45 + P#BRLT4.4
++ @114 + P#BRLT4.3
END

IF ~~ P#BRLT4.3
SAY @115
++ @116 + P#BRLT4.5
++ @117 + P#BRLT4.4
++ @118 + P#BRLT4.1
END

IF ~~ P#BRLT4.4
SAY @119
IF ~~ THEN EXIT
END

IF ~~ P#BRLT4.5
SAY @120
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT4.6
SAY @121
IF ~~ THEN GOTO P#BRLT4.7
END

IF ~~ P#BRLT4.7
SAY @122
++ @123 + P#BRLT4.8
++ @124 + P#BRLT4.9
++ @125 + P#BRLT4.10
++ @126 + P#BRLT4.11
END

IF ~~ P#BRLT4.8
SAY @127
IF ~~ THEN GOTO P#BRLT4.7
END

IF ~~ P#BRLT4.9
SAY @128
= @129
IF ~~ THEN GOTO P#BRLT4.7
END

IF ~~ P#BRLT4.10
SAY @130
= @131
IF ~~ THEN GOTO P#BRLT4.7
END

IF ~~ P#BRLT4.11
SAY @132
IF ~~ THEN EXIT
END

/*  Love Talk 5 - regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",10)~ THEN BEGIN X#BRLoveTalk5
SAY @133
++ @134 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT5.1
++ @135 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT5.2
++ @136 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT5.3
++ @137 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT5.4
END

IF ~~ P#BRLT5.1
SAY @138
IF ~~ THEN GOTO P#BRLT5.5
END

IF ~~ P#BRLT5.2
SAY @139
++ @140 + P#BRLT5.4
++ @141 + P#BRLT5.1
++ @142 + P#BRLT5.3
END

IF ~~ P#BRLT5.3
SAY @143
IF ~~ THEN GOTO P#BRLT5.5
END

IF ~~ P#BRLT5.4
SAY @144
IF ~~ THEN EXIT
END

IF ~~ P#BRLT5.5
SAY @145
++ @146 + P#BRLT5.6
++ @147 + P#BRLT5.7
++ @148 + P#BRLT5.8
++ @149 + P#BRLT5.9
END

IF ~~ P#BRLT5.6
SAY @150
IF ~~ THEN GOTO P#BRLT5.10
END

IF ~~ P#BRLT5.7
SAY @151
IF ~~ THEN GOTO P#BRLT5.10
END

IF ~~ P#BRLT5.8
SAY @152
IF ~~ THEN GOTO P#BRLT5.10
END

IF ~~ P#BRLT5.9
SAY @153
IF ~~ THEN GOTO P#BRLT5.10
END

IF ~~ P#BRLT5.10
SAY @154
IF ~~ THEN EXIT
END

/*  Love Talk 6 - regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",12)~ THEN BEGIN X#BRLoveTalk6
SAY @155
++ @156 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT6.6
++ @157 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT6.6
++ @158 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT6.1
++ @159 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT6.3
++ @160 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT6.2
END

IF ~~ P#BRLT6.1
SAY @161
IF ~~ THEN GOTO P#BRLT6.7
END

IF ~~ P#BRLT6.2
SAY @162
IF ~~ THEN GOTO P#BRLT6.7
END

IF ~~ P#BRLT6.3
SAY @163
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT6.4
SAY @164
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT6.5
SAY @165
IF ~~ THEN EXIT
END

IF ~~ P#BRLT6.6
SAY @166
IF ~~ THEN GOTO P#BRLT6.7
END

IF ~~ P#BRLT6.7
SAY @167
++ @168 + P#BRLT6.9
++ @169 + P#BRLT6.8
++ @170 + P#BRLT6.8
++ @171 + P#BRLT6.8
++ @172 + P#BRLT6.4
++ @173 + P#BRLT6.5
END

IF ~~ P#BRLT6.8
SAY @174 
= @175
++ @176 + P#BRLT6.10
++ @177 + P#BRLT6.5
++ @178 + P#BRLT6.11
++ @179 EXIT
END

IF ~~ P#BRLT6.9
SAY @180
= @181
IF ~~ THEN EXIT
END

IF ~~ P#BRLT6.10
SAY @182
IF ~~ THEN EXIT
END

IF ~~ P#BRLT6.11
SAY @183
= @184
= @185
IF ~~ THEN EXIT
END

/*  Love Talk 7 - At Rest */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",14)~ THEN BEGIN X#BRLoveTalk7
SAY @186 
++ @187 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT7.1
++ @188 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT7.2
++ @189 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT7.3
++ @190 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT7.4
END

IF ~~ P#BRLT7.1
SAY @191
IF ~~ THEN GOTO P#BRLT7.5
END

IF ~~ P#BRLT7.2
SAY @192
IF ~~ THEN GOTO P#BRLT7.5
END

IF ~~ P#BRLT7.3
SAY @193
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ P#BRLT7.4
SAY @194
IF ~~ THEN GOTO P#BRLT7.5
END

IF ~~ P#BRLT7.5
SAY @195
++ @113 + P#BRLT7.6
++ @196 + P#BRLT7.7
++ @197 + P#BRLT7.7
++ @198 + P#BRLT7.8
++ @199 + P#BRLT7.9
++ @200 + P#BRLT7.10
END

IF ~~ P#BRLT7.6
SAY @201
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT7.7
SAY @202
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT7.8
SAY @203
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT7.9
SAY @204
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT7.10
SAY @205 
IF ~~ THEN DO ~RestParty() SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

/*  Love Talk 8 - HPPercent<99 percent */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",16)~ THEN BEGIN X#BRLoveTalk8
SAY @206
++ @207 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT8.1
++ @208 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT8.4
++ @209 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT8.2
++ @210 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT8.3
END

IF ~~ P#BRLT8.1
SAY @211
IF ~~ THEN GOTO P#BRLT8.4
END

IF ~~ P#BRLT8.2
SAY @212
IF ~~ THEN GOTO P#BRLT8.4
END

IF ~~ P#BRLT8.3
SAY @213
IF ~~ THEN EXIT
END

IF ~~ P#BRLT8.4
SAY @214
++ @215 + P#BRLT8.8
++ @216 + P#BRLT8.7
++ @217 + P#BRLT8.6
++ @218 + P#BRLT8.5
END

IF ~~ P#BRLT8.5
SAY @219
IF ~~ THEN EXIT
END

IF ~~ P#BRLT8.6
SAY @220
IF ~~ THEN EXIT
END

IF ~~ P#BRLT8.7
SAY @221
IF ~~ THEN GOTO P#BRLT8.8
END

IF ~~ P#BRLT8.8
SAY @222
IF ~~ THEN EXIT
END

/*  Love Talk 9 - At Rest */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",18)~ THEN BEGIN X#BRLoveTalk9
SAY @223
++ @224 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT9.1
++ @225 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT9.2
++ @226 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT9.3
END

IF ~~ P#BRLT9.1
SAY @227
IF ~~ THEN GOTO P#BRLT9.4
END

IF ~~ P#BRLT9.2
SAY @228
IF ~~ THEN GOTO P#BRLT9.4
END

IF ~~ P#BRLT9.3
SAY @229
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT9.4
SAY @230
++ @231 + P#BRLT9.5
++ @232 + P#BRLT9.5
++ @233 + P#BRLT9.5
++ @234 + P#BRLT9.3
END

IF ~~ P#BRLT9.5
SAY @235
++ @21 + P#BRLT9.7
++ @236 + P#BRLT9.7
++ @237 + P#BRLT9.6
++ @238 + P#BRLT9.8
END

IF ~~ P#BRLT9.6
SAY @239
IF ~~ THEN DO ~RestParty() SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT9.7
SAY @240
++ @241 + P#BRLT9.9
++ @242 + P#BRLT9.10
++ @243 + P#BRLT9.11
++ @244 + P#BRLT9.12
END

IF ~~ P#BRLT9.8
SAY @245
= @246
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT9.9
SAY @247
++ @248 + P#BRLT9.13
++ @249 + P#BRLT9.10
++ @250 + P#BRLT9.6
 END

IF ~~ P#BRLT9.10
SAY @251
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT9.11
SAY @252
IF ~~ THEN DO ~RestParty() SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT9.12
SAY @253
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT9.13
SAY @254
= @255
IF ~~ THEN DO ~RestParty()~ EXIT 
END

/*  Love Talk 10 - regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",20)~ THEN BEGIN X#BRLoveTalk10
SAY @256
++ @257 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT10.5
++ @258 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT10.5
++ @259 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT10.4
++ @260 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT10.1
END

IF ~~ P#BRLT10.1
SAY @261
++ @262 + P#BRLT10.2
++ @263 + P#BRLT10.2
++ @264 + P#BRLT10.3
END

IF ~~ P#BRLT10.2
SAY @265
IF ~~ THEN EXIT
END

IF ~~ P#BRLT10.3
SAY @266
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT10.4
SAY @267
IF ~~ THEN GOTO P#BRLT10.5
END

IF ~~ P#BRLT10.5
SAY @268
++ @269 + P#BRLT10.9
++ @270 + P#BRLT10.11
++ @271 + P#BRLT10.10
++ @272 + P#BRLT10.7
++ @273 + P#BRLT10.6
END

IF ~~ P#BRLT10.6
SAY @274
++ @275 + P#BRLT10.11
++ @276 + P#BRLT10.7
++ @277 + P#BRLT10.8
END

IF ~~ P#BRLT10.7
SAY @278
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT10.8
SAY @279
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT10.9
SAY @280
IF ~~ THEN GOTO P#BRLT10.11
END

IF ~~ P#BRLT10.10
SAY @281
IF ~~ THEN GOTO P#BRLT10.11
END

IF ~~ P#BRLT10.11
SAY @282
++ @283 + P#BRLT10.12
++ @284 + P#BRLT10.13
++ @285 + P#BRLT10.13
END

IF ~~ P#BRLT10.12
SAY @286
IF ~~ THEN EXIT
END

IF ~~ P#BRLT10.13
SAY @287
IF ~~ THEN EXIT
END

/*  Love Talk 11 - Outdoors */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",22)~ THEN BEGIN X#BRLoveTalk11
SAY @288
= @289
++ @290 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT11.1
++ @291 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT11.1
++ @292 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT11.2
++ @293 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT11.3
END

IF ~~ P#BRLT11.1
SAY @294
++ @295 + P#BRLT11.5
++ @296 + P#BRLT11.4
++ @293 + P#BRLT11.3
END

IF ~~ P#BRLT11.2
SAY @297
++ @298 + P#BRLT11.5
++ @299 + P#BRLT11.4
++ @293 + P#BRLT11.3
++ @300 + P#BRLT11.5
END

IF ~~ P#BRLT11.3
SAY @301
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT11.4
SAY @302
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT11.5
SAY @303
++ @304 + P#BRLT11.6
++ @305 + P#BRLT11.7
++ @306 + P#BRLT11.8
++ @307 + P#BRLT11.9
END

IF ~~ P#BRLT11.6
SAY @308
IF ~~ THEN EXIT
END

IF ~~ P#BRLT11.7
SAY @309
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT11.8
SAY @310
IF ~~ THEN GOTO P#BRLT11.9
END

IF ~~ P#BRLT11.9
SAY @311
IF ~~ THEN EXIT
END

/*  Love Talk 12 - regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",24)~ THEN BEGIN X#BRLoveTalk12
SAY @312
++ @313 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT12.2
++ @314 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT12.3
++ @315 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT12.3
++ @316 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT12.1
END

IF ~~ P#BRLT12.1
SAY @317
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ P#BRLT12.2
SAY @318
++ @319 + P#BRLT12.3
++ @320 + P#BRLT12.1
END

IF ~~ P#BRLT12.3
SAY @55
= @321
++ @322 + P#BRLT12.5
++ @323 + P#BRLT12.5
++ @324 + P#BRLT12.1
++ @325 + P#BRLT12.4
END

IF ~~ P#BRLT12.4
SAY @326
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT12.5
SAY @55
= @327
++ @328 + P#BRLT12.7
++ @329 + P#BRLT12.7
++ @330 + P#BRLT12.6
END

IF ~~ P#BRLT12.6
SAY @331
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ P#BRLT12.7
SAY @55
= @55
++ @332 + P#BRLT12.8
++ @333 + P#BRLT12.1
++ @334 + P#BRLT12.6
END

IF ~~ P#BRLT12.8
SAY @335
= @55
= @336
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",2)~ EXIT
END

/*  Here start the RA = 2 Lovetalks */
/*  Love Talk 13 - At Rest */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",26)~ THEN BEGIN X#BRLoveTalk13
SAY @337
++ @338 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT13.2
++ @339 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT13.2
++ @340 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT13.15
++ @341 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT13.1
END

IF ~~ P#BRLT13.1
SAY @342
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT13.2
SAY @343
++ @344 + P#BRLT13.4
++ @345 + P#BRLT13.4
++ @346 + P#BRLT13.3
++ @347 + P#BRLT13.15
END

IF ~~ P#BRLT13.3
SAY @348
IF ~~ THEN GOTO P#BRLT13.4
END

IF ~~ P#BRLT13.4
SAY @349
++ @350 + P#BRLT13.10
++ @351 + P#BRLT13.11
++ @352 + P#BRLT13.12
++ @353 + P#BRLT13.13
++ @354 + P#BRLT13.14
+ ~RandomNum(4,1)~ + @355 + P#BRLT13.5
+ ~RandomNum(4,2)~ + @355 + P#BRLT13.6
+ ~RandomNum(4,3)~ + @355 + P#BRLT13.7
+ ~RandomNum(4,4)~ + @355 + P#BRLT13.8
++ @356 + P#BRLT13.15
END

IF ~~ P#BRLT13.5
SAY @357
= @358
IF ~~ THEN GOTO P#BRLT13.9
END

IF ~~ P#BRLT13.6
SAY @357
= @359
IF ~~ THEN GOTO P#BRLT13.9
END

IF ~~ P#BRLT13.7
SAY @357
= @360
IF ~~ THEN GOTO P#BRLT13.9
END

IF ~~ P#BRLT13.8
SAY @357
= @361
IF ~~ THEN GOTO P#BRLT13.9
END

IF ~~ P#BRLT13.9
SAY @362
++ @363 + P#BRLT13.4
+ ~RandomNum(4,1)~ + @364 + P#BRLT13.5
+ ~RandomNum(4,2)~ + @364 + P#BRLT13.6
+ ~RandomNum(4,3)~ + @364 + P#BRLT13.7
+ ~RandomNum(4,4)~ + @364 + P#BRLT13.8
++ @356 + P#BRLT13.15
END

IF ~~ P#BRLT13.10
SAY @365
IF ~~ THEN GOTO P#BRLT13.9
END

IF ~~ P#BRLT13.11
SAY @366
IF ~~ THEN GOTO P#BRLT13.9
END

IF ~~ P#BRLT13.12
SAY @367
IF ~~ THEN GOTO P#BRLT13.9
END

IF ~~ P#BRLT13.13
SAY @368
IF ~~ THEN GOTO P#BRLT13.9
END

IF ~~ P#BRLT13.14
SAY @369
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT13.15
SAY @370 
IF ~~ THEN DO ~RestParty()~ EXIT 
END

/*  Love Talk 14 - Morning After 13 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",28)~ THEN BEGIN X#BRLoveTalk14
SAY @371
++ @372 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT14.1
++ @373 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT14.4
++ @374 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT14.4
++ @375 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT14.2
END

IF ~~ P#BRLT14.1
SAY @376
IF ~~ THEN EXIT
END

IF ~~ P#BRLT14.2
SAY @377
++ @378 + P#BRLT14.3
++ @379 + P#BRLT14.1
++ @380 + P#BRLT14.4
END

IF ~~ P#BRLT14.3
SAY @381
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ P#BRLT14.4
SAY @382
++ @383 + P#BRLT14.1
++ @384 + P#BRLT14.1
++ @385 + P#BRLT14.5
END

IF ~~ P#BRLT14.5
SAY @386
= @387
IF ~~ THEN EXIT
END

/*  Love Talk 15 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",30)~ THEN BEGIN X#BRLoveTalk15
SAY @388
++ @389 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT15.1
++ @390 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT15.4
++ @391 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT15.2
++ @392 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT15.3
END

IF ~~ P#BRLT15.1
SAY @393
IF ~~ THEN GOTO P#BRLT15.4
END

IF ~~ P#BRLT15.2
SAY @394
IF ~~ THEN GOTO P#BRLT15.4
END

IF ~~ P#BRLT15.3
SAY @395
IF ~~ THEN GOTO P#BRLT15.4
END

IF ~~ P#BRLT15.4
SAY @396 
++ @397 + P#BRLT15.6
++ @398 + P#BRLT15.5
++ @399 + P#BRLT15.5
END

IF ~~ P#BRLT15.5
SAY @400
IF ~~ THEN EXIT
END

IF ~~ P#BRLT15.6
SAY @401
= @402
++ @403 + P#BRLT15.7
++ @404 + P#BRLT15.7
++ @405 + P#BRLT15.7
END

IF ~~ P#BRLT15.7
SAY @406
++ @407 + P#BRLT15.5
++ @408 +P#BRLT15.8
++ @409 + P#BRLT15.8
END

IF ~~ P#BRLT15.8
SAY @410
++ @411 + P#BRLT15.9
++ @412 + P#BRLT15.9
++ @413 + P#BRLT15.9
END

IF ~~ P#BRLT15.9
SAY @414
= @415
= @416
++ @417 + P#BRLT15.10
++ @418 + P#BRLT15.11
++ @419 + P#BRLT15.12
END

IF ~~ P#BRLT15.10
SAY @420
IF ~~ THEN GOTO P#BRLT15.13
END

IF ~~ P#BRLT15.11
SAY @421
IF ~~ THEN GOTO P#BRLT15.13
END

IF ~~ P#BRLT15.12
SAY @422
IF ~~ THEN GOTO P#BRLT15.13
END

IF ~~ P#BRLT15.13
SAY @423
IF ~~ THEN EXIT
END

/*  Love Talk 16 - At Rest */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",32)~ THEN BEGIN X#BRLoveTalk16
SAY @424
++ @425 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT16.1
++ @426 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT16.2
++ @427 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT16.3
++ @428 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT16.4
++ @429 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT16.5
END

IF ~~ P#BRLT16.1
SAY @430
IF ~~ THEN GOTO P#BRLT16.6
END

IF ~~ P#BRLT16.2
SAY @431
IF ~~ THEN GOTO P#BRLT16.6
END

IF ~~ P#BRLT16.3
SAY @432
IF ~~ THEN GOTO P#BRLT16.6
END

IF ~~ P#BRLT16.4
SAY @433
IF ~~ THEN GOTO P#BRLT16.6
END

IF ~~ P#BRLT16.5
SAY @434
IF ~~ THEN GOTO P#BRLT16.6
END

IF ~~ P#BRLT16.6
SAY @435
++ @436 + P#BRLT16.7
++ @437 + P#BRLT16.8
++ @438 + P#BRLT16.9
END

IF ~~ P#BRLT16.7
SAY @439
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT16.8
SAY @440
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ P#BRLT16.9
SAY @441
IF ~~ THEN DO ~RestParty()~ EXIT 
END

/*  Love Talk 17 - regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",34)~ THEN BEGIN X#BRLoveTalk17
SAY @442
++ @443 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT17.2
++ @444 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT17.2
++ @445 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT17.1
++ @446 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT17.3
END

IF ~~ P#BRLT17.1
SAY @447
IF ~~ THEN GOTO P#BRLT17.3
END

IF ~~ P#BRLT17.2
SAY @448
IF ~~ THEN GOTO P#BRLT17.3
END

IF ~~ P#BRLT17.3
SAY @449
= @450
++ @451 + P#BRLT17.4
++ @452 + P#BRLT17.5
++ @453 + P#BRLT17.5
++ @454 + P#BRLT17.6
END

IF ~~ P#BRLT17.4
SAY @455
IF ~~ THEN GOTO P#BRLT17.7
END

IF ~~ P#BRLT17.5
SAY @456
IF ~~ THEN GOTO P#BRLT17.7
END

IF ~~ P#BRLT17.6
SAY @457
IF ~~ THEN GOTO P#BRLT17.7
END

IF ~~ P#BRLT17.7
SAY @458
++ @459 + P#BRLT17.8
++ @460 + P#BRLT17.9
++ @461 + P#BRLT17.10
++ @462 + P#BRLT17.11
++ @463 + P#BRLT17.12
END

IF ~~ P#BRLT17.8
SAY @464
IF ~~ THEN GOTO P#BRLT17.13
END

IF ~~ P#BRLT17.9
SAY @465
IF ~~ THEN GOTO P#BRLT17.13
END

IF ~~ P#BRLT17.10
SAY @466
IF ~~ THEN GOTO P#BRLT17.13
END

IF ~~ P#BRLT17.11
SAY @467
IF ~~ THEN GOTO P#BRLT17.13
END

IF ~~ P#BRLT17.12
SAY @468
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT17.13
SAY @469
IF ~~ THEN EXIT
END

/*  Love Talk 18 - At Rest */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",36)~ THEN BEGIN X#BRLoveTalk18
SAY @470
= @471
++ @472 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT18.5
++ @473 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT18.1
++ @474 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT18.2
++ @475 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1) RealSetGlobalTimer("P#BRLoveTalkTime","GLOBAL",BRROM_TIMER)~ + P#BRLT18.3
END

IF ~~ THEN P#BRLT18.1
SAY @476
++ @477 + P#BRLT18.3
++ @478 + P#BRLT18.4
++ @479 + P#BRLT18.2
END

IF ~~ THEN P#BRLT18.2
SAY @480
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ THEN P#BRLT18.3
SAY @481
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ THEN P#BRLT18.4
SAY @482
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ THEN P#BRLT18.5
SAY @483
+ ~Class(Player1,RANGER_ALL)~ + @484 + P#BRLT18.6
++ @485 + P#BRLT18.2
++ @486 + P#BRLT18.7
++ @487 + P#BRLT18.8
END

IF ~~ THEN P#BRLT18.6
SAY @488
IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ THEN P#BRLT18.7
SAY @489
IF ~~ THEN GOTO P#BRLT18.9
END

IF ~~ THEN P#BRLT18.8
SAY @490
IF ~~ THEN GOTO P#BRLT18.9
END

IF ~~ THEN P#BRLT18.9
SAY @491
++ @492 + P#BRLT18.10
++ @493 + P#BRLT18.10
++ @494 + P#BRLT18.2
END

IF ~~ THEN P#BRLT18.10
SAY @495
IF ~~ THEN DO ~RestParty()~ EXIT 
END

/*  Love Talk 19 - regular */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",38)~ THEN BEGIN X#BRLoveTalk19
SAY @496
++ @497 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT19.1
++ @498 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT19.3
++ @499 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT19.2
END

IF ~~ P#BRLT19.1
SAY @500
IF ~~ THEN GOTO P#BRLT19.3
END

IF ~~ P#BRLT19.2
SAY @501
IF ~~ THEN EXIT
END

IF ~~ P#BRLT19.3
SAY @502
= @503
++ @504 + P#BRLT19.4
++ @505 + P#BRLT19.5
++ @506 + P#BRLT19.6
++ @507 + P#BRLT19.6
++ @508 + P#BRLT19.7
END

IF ~~ P#BRLT19.4
SAY @509
IF ~~ THEN GOTO P#BRLT19.8
END

IF ~~ P#BRLT19.5
SAY @510
IF ~~ THEN GOTO P#BRLT19.8
END

IF ~~ P#BRLT19.6
SAY @511
IF ~~ THEN GOTO P#BRLT19.8
END

IF ~~ P#BRLT19.7
SAY @512
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT 
END

IF ~~ P#BRLT19.8
SAY @513
IF ~~ THEN EXIT
END

/* Love Talk 20 - Chapter GT 6 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk","GLOBAL",40)~ THEN BEGIN X#BRLoveTalk20
SAY @514
= @515
++ @516 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT20.1
++ @517 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT20.5
++ @518 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT20.2
++ @519 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT20.5
++ @520 DO ~IncrementGlobal("P#BRLoveTalk","GLOBAL",1)~ + P#BRLT20.3
END

IF ~~ P#BRLT20.1
SAY @521
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLT20.2
SAY @522
++ @523 + P#BRLT20.3
++ @524 + P#BRLT20.1
++ @525 + P#BRLT20.4
END

IF ~~ P#BRLT20.3
SAY @526
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT 
END

IF ~~ P#BRLT20.4
SAY @527
IF ~~ THEN GOTO P#BRLT20.5
END

IF ~~ P#BRLT20.5
SAY @528
= @529
= @530
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

/*  Here are the conditional talks */
/*  Back in Candlkeep! Just RomanceMatch=1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk1","GLOBAL",1)~ THEN BEGIN X#BRLoveTalkCandlekeep
SAY @531
++ @532 DO ~SetGlobal("P#BRLoveTalk1","GLOBAL",2)~ + P#BRLTSE.2
++ @533 DO ~SetGlobal("P#BRLoveTalk1","GLOBAL",2)~ + P#BRLTSE.4
++ @534 DO ~SetGlobal("P#BRLoveTalk1","GLOBAL",2)~ + P#BRLTSE.3
++ @535 DO ~SetGlobal("P#BRLoveTalk1","GLOBAL",2)~ + P#BRLTSE.1
END

IF ~~ P#BRLTSE.1
SAY @536
IF ~~ THEN EXIT
END

IF ~~ P#BRLTSE.2
SAY @537
IF ~~ THEN GOTO P#BRLTSE.4
END

IF ~~ P#BRLTSE.3
SAY @538
IF ~~ THEN GOTO P#BRLTSE.4
END

IF ~~ P#BRLTSE.4
SAY @539
++ @540 + P#BRLTSE.5
++ @541 + P#BRLTSE.7
++ @542 + P#BRLTSE.7
++ @543 + P#BRLTSE.6
END

IF ~~ P#BRLTSE.5
SAY @544
IF ~~ THEN GOTO P#BRLTSE.7
END

IF ~~ P#BRLTSE.6
SAY @545
IF ~~ THEN EXIT
END

IF ~~ P#BRLTSE.7
SAY @546
IF ~~ THEN EXIT
END

/* Party Poisoned! Just RomanceMatch=1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk2","GLOBAL",1)~ THEN BEGIN X#BRLoveTalkPoisoned
SAY @547
++ @548 DO ~SetGlobal("P#BRLoveTalk2","GLOBAL",2)~ + P#BRLTPO.1
++ @549 DO ~SetGlobal("P#BRLoveTalk2","GLOBAL",2)~ + P#BRLTPO.2
++ @550 DO ~SetGlobal("P#BRLoveTalk2","GLOBAL",2)~ + P#BRLTPO.3
++ @551 DO ~SetGlobal("P#BRLoveTalk2","GLOBAL",2)~ + P#BRLTPO.4
END

IF ~~ P#BRLTPO.1
SAY @552
IF ~~ THEN GOTO P#BRLTPO.5
END

IF ~~ P#BRLTPO.2
SAY @553
IF ~~ THEN GOTO P#BRLTPO.5
END

IF ~~ P#BRLTPO.3
SAY @554
IF ~~ THEN GOTO P#BRLTPO.5
END

IF ~~ P#BRLTPO.4
SAY @555
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLTPO.5
SAY @556
+ ~Global("P#BranwenRomanceActive","GLOBAL",1)~ + @557 + P#BRLTPO.6
++ @558 + P#BRLTPO.7
++ @559 + P#BRLTPO.8
END

IF ~~ P#BRLTPO.6
SAY @560
IF ~~ THEN GOTO P#BRLTPO.9
END

IF ~~ P#BRLTPO.7
SAY @561
IF ~~ THEN GOTO P#BRLTPO.9
END

IF ~~ P#BRLTPO.8
SAY @562
IF ~~ THEN GOTO P#BRLTPO.9

END

IF ~~ P#BRLTPO.9
SAY @563
IF ~~ THEN EXIT
END

/* Prayer after Bhaal Just RomanceMatch=1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk3","GLOBAL",1)~ THEN BEGIN X#BRLoveTalkPrayer
SAY @564
= @565
++ @566 DO ~SetGlobal("P#BRLoveTalk3","GLOBAL",2)~ + P#BRLTBH.1
++ @567 DO ~SetGlobal("P#BRLoveTalk3","GLOBAL",2)~ + P#BRLTBH.1
++ @179 DO ~SetGlobal("P#BRLoveTalk3","GLOBAL",2)~ + P#BRLTBH.2
END

IF ~~ P#BRLTBH.1
SAY @568
++ @569 + P#BRLTBH.3
++ @570 + P#BRLTBH.4
++ @571 + P#BRLTBH.5
++ @572 + P#BRLTBH.6
END

IF ~~ P#BRLTBH.2
SAY @573
++ @566 + P#BRLTBH.1
++ @574 + P#BRLTBH.5
++ @179 + P#BRLTBH.7
END

IF ~~ P#BRLTBH.3
SAY @575
IF ~~ THEN GOTO P#BRLTBH.8
END

IF ~~ P#BRLTBH.4
SAY @576
IF ~~ THEN GOTO P#BRLTBH.8
END

IF ~~ P#BRLTBH.5
SAY @577
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ P#BRLTBH.6
SAY @578
IF ~~ THEN GOTO P#BRLTBH.8
END

IF ~~ P#BRLTBH.7
SAY @579
IF ~~ THEN EXIT
END

IF ~~ P#BRLTBH.8
SAY @580
++ @581 + P#BRLTBH.9
++ @582 + P#BRLTBH.5
++ @583 + P#BRLTBH.10
END

IF ~~ P#BRLTBH.9
SAY @584
++ @585 + P#BRLTBH.11
++ @586 + P#BRLTBH.11
++ @583 + P#BRLTBH.10
END

IF ~~ P#BRLTBH.10
SAY @587
IF ~~ THEN EXIT
END

IF ~~ P#BRLTBH.11
SAY @588
IF ~~ THEN EXIT
END

/* Undercity */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BRLoveTalk4","GLOBAL",1)~ THEN BEGIN X#BRLoveTalkUndercity
SAY @589
++ @590 DO ~SetGlobal("P#BRLoveTalk4","GLOBAL",2)~ + P#BRLTUN.3
++ @591 DO ~SetGlobal("P#BRLoveTalk4","GLOBAL",2)~ + P#BRLTUN.3
++ @592 DO ~SetGlobal("P#BRLoveTalk4","GLOBAL",2)~ + P#BRLTUN.2
++ @593 DO ~SetGlobal("P#BRLoveTalk4","GLOBAL",2)~ + P#BRLTUN.1
END

IF ~~ P#BRLTUN.1
SAY @594
IF ~~ THEN EXIT
END

IF ~~ P#BRLTUN.2
SAY @595
IF ~~ THEN GOTO P#BRLTUN.3
END

IF ~~ P#BRLTUN.3
SAY @596
= @597
++ @598 + P#BRLTUN.4
++ @599 + P#BRLTUN.5
++ @600 + P#BRLTUN.6
END

IF ~~ P#BRLTUN.4
SAY @601
IF ~~ THEN GOTO P#BRLTUN.7
END

IF ~~ P#BRLTUN.5
SAY @602
IF ~~ THEN GOTO P#BRLTUN.7
END

IF ~~ P#BRLTUN.6
SAY @603
IF ~~ THEN GOTO P#BRLTUN.7
END

IF ~~ P#BRLTUN.7
SAY @604
= @605
++ @606 + P#BRLTUN.8
++ @87 + P#BRLTUN.9
++ @607 + P#BRLTUN.9
END

IF ~~ P#BRLTUN.8
SAY @608
IF ~~ THEN GOTO P#BRLTUN.9
END

IF ~~ P#BRLTUN.9
SAY @609
= @610
IF ~~ THEN EXIT
END

/* Branwen's Repetitive Flirts */
/* Early in Romance */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranFlirtEarly","GLOBAL",1) HPPercentLT(Player1,95)~ THEN BEGIN BrFlirtEarly01
SAY @611  
IF ~RandomNum(25,1)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly1
IF ~RandomNum(25,2)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly2
IF ~RandomNum(25,3)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly3
IF ~RandomNum(25,4)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly4
IF ~RandomNum(25,5)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly5
IF ~RandomNum(25,6)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly6
IF ~RandomNum(25,7)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly7
IF ~RandomNum(25,8)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly8
IF ~RandomNum(25,9)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly9
IF ~RandomNum(25,10)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly10
IF ~RandomNum(25,11)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly11
IF ~RandomNum(25,12)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly12
IF ~RandomNum(25,13)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly13
IF ~RandomNum(25,14)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly14
IF ~RandomNum(25,15)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly15
IF ~RandomNum(25,16)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly16
IF ~RandomNum(25,17)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly17
IF ~RandomNum(25,18)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly18
IF ~RandomNum(25,19)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly19
IF ~RandomNum(25,20)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly20
IF ~RandomNum(25,21)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly8
IF ~RandomNum(25,22)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly8
IF ~RandomNum(25,23)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly8
IF ~RandomNum(25,24)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly8
IF ~RandomNum(25,25)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly8
END

IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranFlirtEarly","GLOBAL",1) HPPercentGT(Player1,94)~ THEN BEGIN BrFlirtEarly02
SAY @611 
IF ~RandomNum(19,1)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly1
IF ~RandomNum(19,2)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly2
IF ~RandomNum(19,3)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly3
IF ~RandomNum(19,4)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly4
IF ~RandomNum(19,5)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly5
IF ~RandomNum(19,6)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly6
IF ~RandomNum(19,7)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly7
IF ~RandomNum(19,8)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly20
IF ~RandomNum(19,9)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly9
IF ~RandomNum(19,10)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly10
IF ~RandomNum(19,11)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly11
IF ~RandomNum(19,12)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly12
IF ~RandomNum(19,13)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly13
IF ~RandomNum(19,14)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly14
IF ~RandomNum(19,15)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly15
IF ~RandomNum(19,16)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly16
IF ~RandomNum(19,17)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly17
IF ~RandomNum(19,18)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly18
IF ~RandomNum(19,19)~ DO ~SetGlobal("P#BranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtEarlyTime","GLOBAL",BRROM_TIMER)~ + BrFlirtEarly19
END

IF ~~ BrFlirtEarly1
SAY @612
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly2
SAY @613
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly3
SAY @614
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly4
SAY @615
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly5
SAY @616
++ @617 + BrFlirtEarly5.1
++ @618 + BrFlirtEarly5.2
++ @619 + BrFlirtEarly5.3
++ @620 EXIT
END

IF ~~ BrFlirtEarly5.1
SAY @621
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly5.2
SAY @622
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly5.3
SAY @623
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly6
SAY @624
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly7
SAY @625
= @626
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly8
SAY @627
IF ~~ THEN DO ~ReallyForceSpellRES("SPPR103",Player1)~ EXIT
END

IF ~~ BrFlirtEarly9
SAY @628
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly10
SAY @629
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly11
SAY @630
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly12
SAY @631
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly13
SAY @632
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly14
SAY @633
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly15
SAY @634
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly16
SAY @635
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly17
SAY @636
= @637
++ @638 + BrFlirtEarly17.1
++ @639 + BrFlirtEarly17.2
END

IF ~~ BrFlirtEarly17.1
SAY @640
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly17.2
SAY @641
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly18
SAY @642
IF ~~ THEN EXIT

END

IF ~~ BrFlirtEarly19
SAY @643
IF ~~ THEN EXIT
END

IF ~~ BrFlirtEarly20
SAY @644
IF ~~ THEN EXIT
END

/* Early in Romance */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranFlirtLate","GLOBAL",1)~ THEN BEGIN BrFlirtLate01
SAY @611  
IF ~RandomNum(20,1)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate1
IF ~RandomNum(20,2)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate2
IF ~RandomNum(20,3)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate3
IF ~RandomNum(20,4)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate4
IF ~RandomNum(20,5)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate5
IF ~RandomNum(20,6)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate6
IF ~RandomNum(20,7)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate7
IF ~RandomNum(20,8)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate8
IF ~RandomNum(20,9)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate9
IF ~RandomNum(20,10)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate10
IF ~RandomNum(20,11)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate11
IF ~RandomNum(20,12)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate12
IF ~RandomNum(20,13)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate13
IF ~RandomNum(20,14)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate14
IF ~RandomNum(20,15)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate15
IF ~RandomNum(20,16)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate16
IF ~RandomNum(20,17)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate17
IF ~RandomNum(20,18)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate18
IF ~RandomNum(20,19)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate19
IF ~RandomNum(20,20)~ DO ~SetGlobal("P#BranFlirtLate","GLOBAL",0) RealSetGlobalTimer("P#BranFlirtLateTime","GLOBAL",BRROM_TIMER)~ + BrFlirtLate20
END

IF ~~ BrFlirtLate1
SAY @645
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate2
SAY @646
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate3
SAY @647
= @648
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate4
SAY @649
= @650
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate5
SAY @651
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate6
SAY @652
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate7
SAY @653
++ @654 + BrFlirtLate7.1
++ @655 + BrFlirtLate7.2
++ @656 + BrFlirtLate7.3
END

IF ~~ BrFlirtLate7.1
SAY @657
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate7.2
SAY @658
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate7.3
SAY @659
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate8
SAY @660
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate9
SAY @661
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate10
SAY @662
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate11
SAY @663
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate12
SAY @664
++ @665 + BrFlirtLate12.1
++ @666 + BrFlirtLate12.2
++ @620 + BrFlirtLate12.3
END

IF ~~ BrFlirtLate12.1
SAY @667
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate12.2
SAY @668
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate12.3
SAY @669
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate13
SAY @670
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate14
SAY @671
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate15
SAY @672
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate16
SAY @673
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate17
SAY @674
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate18
SAY @675
++ @676 + BrFlirtLate18.1
++ @677 + BrFlirtLate18.1
++ @678 + BrFlirtLate18.2
++ @679 + BrFlirtLate18.2
END

IF ~~ BrFlirtLate18.1
SAY @680
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate18.2
SAY @681
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate19
SAY @682
= @683
IF ~~ THEN EXIT
END

IF ~~ BrFlirtLate20
SAY @684
IF ~~ THEN EXIT
END

END

/* NPC Reactions to the Romance all trigger by BRA=2 */

CHAIN IF ~%BGT_VAR% Global("X#AjBRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("alora") See("branwen") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJBRRORE1
@685
DO ~SetGlobal("X#AjBRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @686
== ~%AJANTIS_BANTER%~ @687
== ~%BRANWEN_BANTER%~ @688
== ~%AJANTIS_BANTER%~ @689
EXIT

CHAIN IF ~%BGT_VAR% Global("P#CoBRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COBRRORE1
@690
DO ~SetGlobal("P#CoBRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @691
== ~%CORAN_BANTER%~ @692
== ~%BRANWEN_BANTER%~ @693
== ~%CORAN_BANTER%~ @694
== ~%BRANWEN_BANTER%~ @695
== ~%CORAN_BANTER%~ @696
== ~%BRANWEN_BANTER%~ @697
== ~%CORAN_BANTER%~ @698
EXIT

CHAIN IF ~%BGT_VAR% Global("X#EDBRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%EDWIN_BANTER%~ EDBR1
@699
DO ~SetGlobal("X#EDBRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @700
== ~%EDWIN_BANTER%~ @701
== ~%BRANWEN_BANTER%~ @702
== ~%EDWIN_BANTER%~ @703
== ~%BRANWEN_BANTER%~ @704
== ~%EDWIN_BANTER%~ @705
EXIT

CHAIN IF ~%BGT_VAR% Global("X#FABRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FABRRORE1
@706
DO ~SetGlobal("X#FABRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @707
== ~%FALDORN_BANTER%~ @708
== ~%BRANWEN_BANTER%~ @709
== ~%FALDORN_BANTER%~ @710
== ~%BRANWEN_BANTER%~ @711
== ~%FALDORN_BANTER%~ @712
== ~%BRANWEN_BANTER%~ @713
== ~%FALDORN_BANTER%~ @714
== ~%BRANWEN_BANTER%~ @715
== ~%FALDORN_BANTER%~ @716
== ~%BRANWEN_BANTER%~ @717
== ~%FALDORN_BANTER%~ @718
EXIT

CHAIN IF ~%BGT_VAR% Global("X#Garrick_BranRORE","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%GARRICK_BANTER%~ Garrick_Branwen_RORE1
@719
DO ~SetGlobal("X#Garrick_BranRORE","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @720
== ~%GARRICK_BANTER%~ @721
== ~%BRANWEN_BANTER%~ @722
== ~%GARRICK_BANTER%~ @723
EXIT

CHAIN IF ~%BGT_VAR% Global("X#IMBRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%IMOEN_BANTER%~ IMBRRORE1
@724
DO ~SetGlobal("X#IMBRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @725
== ~%IMOEN_BANTER%~ @726
== ~%BRANWEN_BANTER%~ @727
== ~%IMOEN_BANTER%~ @728
== ~%BRANWEN_BANTER%~ @729
== ~%IMOEN_BANTER%~ @730
== ~%BRANWEN_BANTER%~ @731
== ~%IMOEN_BANTER%~ @732
== ~%BRANWEN_BANTER%~ @733
== ~%IMOEN_BANTER%~ @734
== ~%BRANWEN_BANTER%~ @735
EXIT

CHAIN IF ~%BGT_VAR% Global("X#KHBRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%KHALID_BANTER%~ KHBRRORE1
@736
DO ~SetGlobal("X#KHBRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @737
== ~%KHALID_BANTER%~ @738
== ~%BRANWEN_BANTER%~ @739
== ~%KHALID_BANTER%~ @740
== ~%BRANWEN_BANTER%~ @741
EXIT

CHAIN IF ~%BGT_VAR% Global("P#Branwen_Kivan1RORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("kivan") InMyArea("kivan") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN ~%BRANWEN_BANTER%~ BRKIRORE1
@742
DO ~SetGlobal("P#Branwen_Kivan1RORE1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @743
== ~%BRANWEN_BANTER%~ @744
== ~%KIVAN_BANTER%~ @745
= @746
== ~%BRANWEN_BANTER%~ @747
== ~%KIVAN_BANTER%~ @748
== ~%BRANWEN_BANTER%~ @749
== ~%KIVAN_BANTER%~ @750
EXIT

CHAIN IF ~%BGT_VAR% Global("X#SABRRORE1","LOCALS",0) CombatCounter(0) Global("P#BranwenRomanceActive","GLOBAL",2) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SABRRORE1
@751
DO ~SetGlobal("X#SABRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @752
== ~%SAFANA_BANTER%~ @753
EXIT

CHAIN IF ~%BGT_VAR% Global("X#SHBRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHBRRORE1
@754
DO ~SetGlobal("X#SHBRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @755
== ~%SHARTEEL_BANTER%~ @756
== ~%BRANWEN_BANTER%~ @757
== ~%SHARTEEL_BANTER%~ @758
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XABRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XABRRORE1
@759
DO ~SetGlobal("X#XABRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @760
== ~%XAN_BANTER%~ @761
== ~%BRANWEN_BANTER%~ @762
== ~%XAN_BANTER%~ @763
== ~%BRANWEN_BANTER%~ @764
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XZBRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%XZAR_BANTER%~ XZBRRORE1
@765
DO ~SetGlobal("X#XZBRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @766
== ~%XZAR_BANTER%~ @767
== ~%BRANWEN_BANTER%~ @768
== ~%XZAR_BANTER%~ @769
== ~%BRANWEN_BANTER%~ @770
EXIT

CHAIN IF ~%BGT_VAR% Global("X#MIBRRORE1","LOCALS",0) Global("P#BranwenRomanceActive","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("branwen") See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIBRRORE1
@771
DO ~SetGlobal("X#MIBRRORE1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @772
END
++ @773 EXTERN ~%BRANWEN_BANTER%~ MIBRRORE1.1
++ @774 EXTERN ~%BRANWEN_BANTER%~ MIBRRORE1.1
++ @179 EXTERN ~%BRANWEN_BANTER%~ MIBRRORE1.1

CHAIN ~%BRANWEN_BANTER%~ MIBRRORE1.1
@775
== ~%MINSC_BANTER%~ @776
= @777
EXIT
