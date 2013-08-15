APPEND ~%AJANTIS_JOINED%~

/* What is your motivation for this quest? (LT 1) */

/* lovetalk_motivation */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",2)~ THEN lovetalk_motivation
SAY @0
++ @1 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + motivation_05
+ ~Class(Player1,PALADIN)~ + @2 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + motivation_01
+ ~OR(2)
Class(Player1,PALADIN)
ReactionGT(Player1,NEUTRAL_UPPER)~ + @3 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + motivation_03
+ ~!Class(Player1,PALADIN) ReactionLT(Player1,FRIENDLY_LOWER)~ + @3 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + motivation_04
++ @4 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + motivation_07
+ ~!Class(Player1,PALADIN)~ + @5 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + motivation_02
END

IF ~~ THEN motivation_01
SAY @6
++ @7 + motivation_05
++ @8 + motivation_08
++ @9 + motivation_08
++ @10 + motivation_10
END

IF ~~ THEN motivation_02
SAY @11
= @12
= @13
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNoGorion","GLOBAL",1)~ EXIT
END 

IF ~~ THEN motivation_03
SAY @14
IF ~~ THEN + motivation_06
END

IF ~~ THEN motivation_04
SAY @15
IF ~~ THEN + motivation_06
END

IF ~~ THEN motivation_05
SAY @16
++ @17 + motivation_11
++ @18 + motivation_12
++ @19 + motivation_15
++ @20 + motivation_13
END

IF ~~ THEN motivation_06
SAY @21
++ @7 +
motivation_05
++ @8
+ motivation_08
++ @9 + motivation_08
++ @10 + motivation_10
END

IF ~~ THEN motivation_07
SAY @22
++ @1 +
motivation_05
+ ~Class(Player1,PALADIN)~ + @23 + motivation_01
+ ~OR(2)
Class(Player1,PALADIN)
ReactionGT(Player1,NEUTRAL_UPPER)~ + @3 + motivation_03
+ ~!Class(Player1,PALADIN) ReactionLT(Player1,FRIENDLY_LOWER)~ + @3 + motivation_04
+ ~!Class(Player1,PALADIN)~ + @5 + motivation_02
++ @24 + motivation_09
END 

IF ~~ THEN motivation_08
SAY @25
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNoGorion","GLOBAL",1)~ EXIT
END 

IF ~~ THEN motivation_09
SAY @26
= @27
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END 

IF ~~ THEN motivation_10
SAY @28
= @29
= @30
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNoGorion","GLOBAL",1)~ EXIT
END 

IF ~~ THEN motivation_11
SAY @31
IF ~~ THEN + motivation_14
END

IF ~~ THEN motivation_12
SAY @32
++ @33 + motivation_14
++ @34 + motivation_16
++ @35 + motivation_16
END

IF ~~ THEN motivation_13
SAY @36
IF ~~ THEN + motivation_14
END

IF ~~ THEN motivation_14
SAY @37
= @38
IF ~~ THEN EXIT
END

IF ~~ THEN motivation_15
SAY @39
IF ~~ THEN + motivation_14
END

IF ~~ THEN motivation_16
SAY @40
IF ~~ THEN + motivation_14
END

/* Most Holy Order of the Radiant Heart (LT 2) */

/* lovetalk_order */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",4)~ THEN lovetalk_order
SAY @41
++ @42 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + order_03
++ @43 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + order_03
++ @44 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + order_01
+ ~Class(Player1,PALADIN)~ + @45 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + order_10
++ @46 DO ~SetGlobal("X#AjantisRomanceNoOrderMember","GLOBAL",1) IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + order_05
++ @47 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + order_11
END

IF ~~ THEN order_01
SAY @48
++ @49 + order_02
++ @50 + order_03
+ ~Class(Player1,PALADIN)~ + @51 + order_10
++ @52 + order_05
END

IF ~~ THEN order_02
SAY @53
++ @54 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_06
+ ~Alignment(Player1,LAWFUL_GOOD)
OR(2)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_ALL)~ + @55 + order_26
+ ~!Alignment(Player1,LAWFUL_GOOD) OR(2) Class(Player1,PALADIN) Class(Player1,FIGHTER_ALL)~ + @55 + order_16
+ ~!Class(Player1,PALADIN) !Class(Player1,FIGHTER_ALL)~ + @55 + order_16
+ ~!Class(Player1,PALADIN)~ + @56 DO ~SetGlobal("X#WhatIsEvil","LOCALS",1)~ + order_27
+ ~!Class(Player1,PALADIN)~ + @57 DO ~SetGlobal("X#DontLikeorder","LOCALS",1)~ + order_07
++ @58 + order_04
END

IF ~~ THEN order_03
SAY @59
++ @54 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_06
+ ~Alignment(Player1,LAWFUL_GOOD) OR(2) Class(Player1,PALADIN) Class(Player1,FIGHTER_ALL)~ + @55 + order_26
+ ~!Alignment(Player1,LAWFUL_GOOD) OR(2) Class(Player1,PALADIN) Class(Player1,FIGHTER_ALL)~ + @55 + order_16
+ ~!Class(Player1,PALADIN) !Class(Player1,FIGHTER_ALL)~ + @55 + order_16
+ ~!Class(Player1,PALADIN)~ + @60 DO ~SetGlobal("X#WhatIsEvil","LOCALS",1)~ + order_27
+ ~!Class(Player1,PALADIN)~ + @57 DO ~SetGlobal("X#DontLikeorder","LOCALS",1)~ + order_07
++ @61 + order_05
END

IF ~~ THEN order_04
SAY @62
IF ~~ THEN EXIT
END

IF ~~ THEN order_05
SAY @63
IF ~~ THEN + order_04
END

IF ~~ THEN order_06
SAY @64
IF ~Alignment(Player1,LAWFUL_GOOD)
OR(2)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_ALL)~ THEN + order_14
IF ~!Alignment(Player1,LAWFUL_GOOD)
OR(2)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_ALL)~ THEN + order_24
IF ~!Class(Player1,PALADIN)
!Class(Player1,FIGHTER_ALL)~ THEN + order_24
END

IF ~~ THEN order_07
SAY @65
++ @66 + order_12
++ @67 + order_09
++ @68 + order_08
END

IF ~~ THEN order_08
SAY @69
++ @70 + order_12
++ @71 + order_11
END

IF ~~ THEN order_09
SAY @72
IF ~~ THEN + order_12
END

IF ~~ THEN order_10
SAY @73
++ @74 + order_03
++ @75 + order_05
++ @76 + order_19
END

IF ~~ THEN order_11
SAY @77
= @78
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN order_12
SAY @77
= @79
++ @80 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_13
++ @81 + order_25
++ @82 + order_19
+ ~!Class(Player1,PALADIN) Global("X#WhatIsEvil","LOCALS",0)~ + @83 + order_31
END

IF ~~ THEN order_13
SAY @84
IF ~Alignment(Player1,LAWFUL_GOOD)
OR(2)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_ALL)~ THEN + order_14
IF ~!Alignment(Player1,LAWFUL_GOOD)
OR(2)
Class(Player1,PALADIN)
Class(Player1,FIGHTER_ALL)~ THEN + order_24
IF ~!Class(Player1,PALADIN)
!Class(Player1,FIGHTER_ALL)~ THEN + order_24
END

IF ~~ THEN order_14
SAY @85
++ @86 + order_15
++ @87 DO ~SetGlobal("X#AjantisRomanceNoOrderMember","GLOBAL",1)~ + order_24
END

IF ~~ THEN order_15
SAY @88
IF ~~ THEN + order_16
END

IF ~~ THEN order_16
SAY @89
= @90
++ @91 + order_17
++ @92 + order_18
++ @93 + order_05
END

IF ~~ THEN order_17
SAY @62
IF ~~ THEN + order_20
END

IF ~~ THEN order_18
SAY @94
IF ~~ THEN + order_17
END

IF ~~ THEN order_19
SAY @95
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceNoInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN order_20
SAY @96
++ @97 + order_22
++ @98 + order_21
++ @99 + order_22
END

IF ~~ THEN order_21
SAY @100
IF ~~ THEN + order_22
END

IF ~~ THEN order_22
SAY @101
IF ~~ THEN + order_23
END

IF ~~ THEN order_23
SAY @102
IF ~~ THEN EXIT
END

IF ~~ THEN order_24
SAY @103
++ @104 + order_16
++ @105 + order_05
END 

IF ~~ THEN order_25
SAY @106
IF ~~ THEN EXIT
END

IF ~~ THEN order_26
SAY @85
++ @86 + order_15
++ @87 DO ~SetGlobal("X#AjantisRomanceNoOrderMember","GLOBAL",1)~ + order_15
END

IF ~~ THEN order_27
SAY @107
++ @108 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_06
++ @109 + order_28
+ ~Global("X#DontLikeorder","LOCALS",0)~ + @110 + order_07
++ @111 + order_04
END

IF ~~ THEN order_28
SAY @112
++ @113 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_06
++ @114 + order_30
++ @115 + order_29
++ @116 + order_29A
++ @57 + order_07
++ @111 + order_04
END

IF ~~ THEN order_29
SAY @117
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END 

IF ~~ order_29A
SAY @118
++ @113 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_06
++ @57 + order_07
++ @119 + order_04
END

IF ~~ THEN order_30
SAY @120
++ @113 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_06
++ @57 + order_07
++ @119 + order_04
END

IF ~~ THEN order_31
SAY @121
++ @109 + order_32
++ @80 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_13
++ @122 + order_25
++ @123 + order_19
END

IF ~~ THEN order_32
SAY @112
++ @80 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_13
++ @122 + order_25
++ @123 + order_19
++ @114 + order_33
++ @116 + order_29A
++ @124 + order_29
END

IF ~~ THEN order_33
SAY @125
++ @80 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + order_13
++ @122 + order_25
++ @123 + order_19
END


/* Helm (LT 3) */
/* lovetalk_helm */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",6)~ THEN lovetalk_helm
SAY @126
++ @127 DO ~SetGlobal("X#AjantisRomanceHelmGod","GLOBAL",1) IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + helm_01
++ @128 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + helm_03
+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,PALADIN_ALL)~ + @129 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + helm_12
++ @130 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + helm_14
END

IF ~~ THEN helm_01
SAY @131
++ @132 + helm_02
++ @133 + helm_15
END

IF ~~ THEN helm_02
SAY @134
IF ~~ THEN + helm_05
END

IF ~~ THEN helm_03
SAY @135
++ @136 + helm_05
++ @137 + helm_06
++ @138 DO ~SetGlobal("X#AjantisRomanceKlagen1","LOCALS",1)~ + helm_04
++ @139 + helm_14
END

IF ~~ THEN helm_04
SAY @140
IF ~~ THEN + helm_05
END

IF ~~ THEN helm_05
SAY @141
IF ~~ THEN + helm_07
END

IF ~~ THEN helm_06
SAY @142
IF ~~ THEN + helm_07
END

IF ~~ THEN helm_07
SAY @143
++ @144 DO ~SetGlobal("X#AjantisRomanceHelmDogmas","GLOBAL",1)~ + helm_08
+ ~Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @145 + helm_10
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @145 + helm_14
END

IF ~~ THEN helm_08
SAY @146
= @147
= @148 
= @149
IF ~Global("X#AjantisRomanceKlagen1","LOCALS",1)~ THEN + helm_09
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @150 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + helm_18
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1) Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @151 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + helm_15
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1) !Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @151 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + helm_17
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @152 + helm_23
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1)~ + @153 + helm_11
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1) !Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @154 + helm_19
+ ~!Global("X#AjantisRomanceKlagen1","LOCALS",1) !Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @155 + helm_20
END

IF ~~ THEN helm_09
SAY @156
+ ~Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @157 + helm_22
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @157 + helm_24
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @158 + helm_19
+ ~Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @159 + helm_15
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @160 + helm_20
END

IF ~~ THEN helm_10
SAY @161
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceHelmDogmas","GLOBAL",1)~ + helm_08
END

IF ~~ THEN helm_11
SAY @162
IF ~~ THEN + helm_09
END

IF ~~ THEN helm_12
SAY @163
++ @164 + helm_21
++ @165 + helm_05
++ @166 DO ~SetGlobal("X#AjantisRomanceNoRoad","GLOBAL",1)~ + helm_13
++ @167 + helm_14
END

IF ~~ THEN helm_13
SAY @168
++ @169 + helm_14
++ @170 + helm_21
++ @171 + helm_05
++ @172 + helm_14
END

IF ~~ THEN helm_14
SAY @173
IF ~Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ THEN + helm_16
IF ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN helm_15
SAY @174
IF ~~ THEN EXIT
END

IF ~~ THEN helm_16
SAY @175
IF ~~ THEN EXIT
END

IF ~~ THEN helm_17
SAY @176
IF ~~ THEN EXIT
END

IF ~~ THEN helm_18
SAY @177
IF ~Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ THEN + helm_16
IF ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN helm_19
SAY @178
IF ~~ THEN EXIT
END

IF ~~ THEN helm_20
SAY @179
= @180
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN helm_21
SAY @181
++ @182 + helm_05
++ @183 EXIT
END

IF ~~ THEN helm_22
SAY @184
IF ~~ THEN EXIT
END

IF ~~ THEN helm_23
SAY @185
IF ~~ THEN + helm_09
END

IF ~~ THEN helm_24
SAY @186
IF ~~ THEN EXIT
END 

/* honor and justice (LT 4) */
/* lovetalk_justice */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",8)~ THEN lovetalk_justice
SAY @187
= @188
++ @189 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + justice_01
++ @190 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + justice_02
++ @191 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + justice_04
+ ~!Class(Player1,PALADIN)~ + @192 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + justice_03
++ @193 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + justice_15
++ @194 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + justice_05
END

IF ~~ THEN justice_01
SAY @195
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_02
SAY @196
IF ~~ THEN + justice_12
END

IF ~~ THEN justice_03
SAY @197 
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_04
SAY @198
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_05
SAY @199
+ ~ReputationGT(Player1,11)~ + @200 + justice_04
+ ~ReputationLT(Player1,12)~ + @200 + justice_07
+ ~ReputationGT(Player1,11)~ + @201 + justice_06
+ ~ReputationLT(Player1,12)~ + @201 + justice_07
++ @202 + justice_09
END

IF ~~ THEN justice_06
SAY @203
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_07
SAY @204
IF ~~ THEN + justice_08
END

IF ~~ THEN justice_08
SAY @205
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3)
SetGlobal("X#AjantisRomanceShutUpLowRep","GLOBAL",1)~ EXIT
END //romance ends, but will be revived from Ajantis' side if rep increases

IF ~~ THEN justice_09
SAY @206
++ @207 + justice_10
++ @208 + justice_11
END

IF ~~ THEN justice_10
SAY @209 
= @210
++ @211 + justice_11
+ ~ReputationGT(Player1,12)~ + @212 + justice_02
+ ~ReputationLT(Player1,13)~ + @212 + justice_16
END

IF ~~ THEN justice_11
SAY @213
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN justice_12
SAY @214 
++ @215 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + justice_14
++ @216 DO ~SetGlobal("X#AjantisRomanceHonor1","LOCALS",1)~ + justice_13
++ @217 + justice_17
END

IF ~~ THEN justice_13
SAY @218
IF ~~ THEN + justice_17
END

IF ~~ THEN justice_14
SAY @219
IF ~~ THEN + justice_17
END

IF ~~ THEN justice_15
SAY @220
= @221
IF ~~ THEN + justice_12
END

IF ~~ THEN justice_16
SAY @222
IF ~~ THEN + justice_02
END

IF ~~ THEN justice_17
SAY @223
+ ~Global("X#AjantisRomanceHonor1","LOCALS",1)~ + @224 + justice_18
+ ~!Global("X#AjantisRomanceHonor1","LOCALS",1)~ + @225 + justice_18
++ @226 + justice_27
+ ~!Global("X#AjantisRomanceHonor1","LOCALS",1)~ + @227 + justice_28
+ ~!Class(Player1,PALADIN) !Global("X#AjantisRomanceHonor1","LOCALS",1)~ + @228 + justice_29
END

IF ~~ THEN justice_18
SAY @229
+ ~!Class(Player1,THIEF) ReputationGT(Player1,11)~ + @230 + justice_19
+ ~!Class(Player1,THIEF) ReputationLT(Player1,12)~ + @230 + justice_20
+ ~Class(Player1,THIEF)~ + @230 + justice_21
+ ~!Class(Player1,THIEF)~ + @231 + justice_26
+ ~Class(Player1,THIEF)~ + @231 + justice_21
+ ~!Global("X#AjantisRomanceHonor1","LOCALS",1)~ + @232 + justice_29
END

IF ~~ THEN justice_19
SAY @233
IF ~~ THEN + justice_25
END

IF ~~ THEN justice_20
SAY @234
IF ~~ THEN + justice_25
END

IF ~~ THEN justice_21
SAY @235
+ ~ReputationGT(Player1,11)~ + @236 + justice_22
+ ~ReputationLT(Player1,12)~ + @236 + justice_23
++ @237 + justice_24
++ @238 + justice_24
END

IF ~~ THEN justice_22
SAY @239
= @240
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceThief","GLOBAL",1)~ EXIT
END //Ajantis stays "friend", but romance stopped.

IF ~~ THEN justice_23
SAY @241
= @240
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceThief","GLOBAL",1)~ EXIT
END //romance stopped, but Ajantis stays "friend", if rep increases again.

IF ~~ THEN justice_24
SAY @242
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN justice_25
SAY @243
IF ~~ THEN EXIT
END

IF ~~ THEN justice_26
SAY @244
IF ~ReputationGT(Player1,11)~ THEN + justice_19
IF ~ReputationLT(Player1,12)~ THEN + justice_20
END

IF ~~ THEN justice_27
SAY @245
++ @246 + justice_18
+ ~!Global("X#AjantisRomanceHonor1","LOCALS",1)~ + @247 + justice_28
+ ~!Global("X#AjantisRomanceHonor1","LOCALS",1)~ + @228 + justice_29
END

IF ~~ THEN justice_28
SAY @248
IF ~~ THEN + justice_11
END

IF ~~ THEN justice_29
SAY @249
IF ~~ THEN + justice_11
END

/* good and evil (LT 5) */

/* lovetalk_evil */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",10)~ THEN lovetalk_evil
SAY @250
++ @251 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + evil_01
++ @252 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + evil_02
++ @253 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + evil_03
++ @254 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + evil_09
+ ~!Class(PLayer1,Paladin_ALL)~ + @255 DO ~SetGlobal("X#AjantisRomanceEvil1","LOCALS",1) IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + evil_10
++ @256 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + evil_06
+ ~InParty("tiax") Global("P#KnowBhaal","GLOBAL",0)~ + @257 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + evil_06
END

IF ~~ THEN evil_01
SAY @258
IF ~~ THEN + evil_05
END

IF ~~ THEN evil_02
SAY @259
IF ~~ THEN + evil_05
END

IF ~~ THEN evil_03
SAY @260
IF ~~ THEN + evil_05
END

IF ~~ THEN evil_04
SAY @261
IF ~~ THEN EXIT
END

IF ~~ THEN evil_05
SAY @262
= @263
++ @264 + evil_15
++ @265 + evil_16
++ @266 + evil_17
++ @267 + evil_18
++ @268 + evil_04
+ ~!Global("X#AjantisRomanceEvil1","LOCALS",1)~ + @269 + evil_10
END

IF ~~ THEN evil_06 
SAY @270
+ ~ReputationGT(Player1,11)~ + @271 + evil_04
+ ~ReputationLT(Player1,12)~ + @271 + evil_07
++ @272 + evil_08
++ @273 + evil_08
END

IF ~~ THEN evil_07
SAY @274
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceShutUpLowRep","GLOBAL",1)~ EXIT
END

IF ~~ THEN evil_08
SAY @275
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN evil_09
SAY @276
IF ~~ THEN + evil_05
END

IF ~~ THEN evil_10
SAY @277
++ @278 + evil_14
+ ~ReputationGT(Player1,13)~ + @279 + evil_12
+ ~ReputationLT(Player1,14)~ + @279 + evil_11
END

IF ~~ THEN evil_11
SAY @280
IF ~~ THEN + evil_13
END

IF ~~ THEN evil_12
SAY @281
IF ~~ THEN + evil_13
END

IF ~~ THEN evil_13
SAY @282
= @283
= @284
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN evil_14
SAY @285
= @283
++ @286 + evil_23
+ ~Global("X#AjantisRomanceEvil1","LOCALS",1)~ + @287 + evil_05
+ ~!Global("X#AjantisRomanceEvil1","LOCALS",1)~ + @287 + evil_19
++ @288 + evil_24
END

IF ~~ THEN evil_15
SAY @289
IF ~~ THEN + evil_19
END

IF ~~ THEN evil_16
SAY @290
IF ~~ THEN + evil_19
END

IF ~~ THEN evil_17
SAY @291
IF ~~ THEN + evil_19
END

IF ~~ THEN evil_18
SAY @292
IF ~~ THEN + evil_19
END

IF ~~ THEN evil_19
SAY @293
++ @294 + evil_20
++ @295 + evil_04
END

IF ~~ THEN evil_20
SAY @296
= @297
= @298
++ @299 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + evil_28
++ @300 + evil_21
+ ~!Class(PLAYER1,Paladin_ALL)~ + @301 + evil_22
END

IF ~~ THEN evil_21
SAY @302
IF ~~ THEN EXIT
END

IF ~~ THEN evil_22
SAY @303
IF ~~ THEN EXIT
END

IF ~~ THEN evil_23
SAY @304
IF ~Global("X#AjantisRomanceEvil1","LOCALS",1)~ THEN + evil_05
IF ~!Global("X#AjantisRomanceEvil1","LOCALS",1)~ THEN + evil_19
END

IF ~~ THEN evil_24
SAY @305
++ @306 + evil_26
++ @307 + evil_27
END

IF ~~ THEN evil_26
SAY @308
= @284
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN evil_27
SAY @309
IF ~~ THEN + evil_26
END

IF ~~ THEN evil_28
SAY @310
IF ~~ THEN EXIT
END

 //
//Waterdeep vs. Candlekeep (LT 6)
//

/* lovetalk_waterdeep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",12)~ THEN lovetalk_waterdeep
SAY @311
++ @312 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + waterdeep_03
++ @313 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + waterdeep_01
++ @314 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + waterdeep_08
END

IF ~~ THEN waterdeep_01
SAY @315
++ @316 + waterdeep_03
++ @317 DO ~SetGlobal("X#AjantisRomanceNoBigCities","GLOBAL",1)~ + waterdeep_02
END

IF ~~ THEN waterdeep_02
SAY @318
++ @319 + waterdeep_03
++ @320 + waterdeep_08
END

IF ~~ THEN waterdeep_03
SAY @321
= @322
= @323
++ @324 + waterdeep_04
++ @325 + waterdeep_08
END

IF ~~ THEN waterdeep_04
SAY @326
++ @327 + waterdeep_05
++ @328 + waterdeep_08
END

IF ~~ THEN waterdeep_05
SAY @329
++ @330 + waterdeep_06
++ @331 + waterdeep_07
END

IF ~~ THEN waterdeep_06
SAY @332
= @333
= @334
= @335
= @336
IF ~~ THEN + waterdeep_07
END

IF ~~ THEN waterdeep_07
SAY @337
= @338
++ @339 + waterdeep_09
++ @340 + waterdeep_10
++ @341 DO ~SetGlobal("X#AjantisRomanceNoBigCities","GLOBAL",1)~ + waterdeep_11
END

IF ~~ THEN waterdeep_08
SAY @342
IF ~~ THEN + waterdeep_12
END

IF ~~ THEN waterdeep_09
SAY @343
IF ~~ THEN + waterdeep_12
END

IF ~~ THEN waterdeep_10
SAY @344
IF ~~ THEN + waterdeep_12
END

IF ~~ THEN waterdeep_11
SAY @345
IF ~~ THEN + waterdeep_12
END

IF ~~ THEN waterdeep_12
SAY @346
++ @347
+ waterdeep_13
++ @348 + waterdeep_14
++ @349 + waterdeep_13
++ @350 + waterdeep_19
END

IF ~~ THEN waterdeep_13
SAY @351
++ @352 + waterdeep_18
++ @353 + waterdeep_15
++ @354 + waterdeep_16
++ @355 + waterdeep_17
END

IF ~~ THEN waterdeep_14
SAY @356
++ @357 + waterdeep_20
++ @358 + waterdeep_20
END

IF ~~ THEN waterdeep_15
SAY @359
IF ~~ THEN + waterdeep_18
END

IF ~~ THEN waterdeep_16
SAY @360
IF ~~ THEN + waterdeep_20
END

IF ~~ THEN waterdeep_17
SAY @361
IF ~~ THEN + waterdeep_20
END

IF ~~ THEN waterdeep_18
SAY @356
IF ~~ THEN + waterdeep_20
END

IF ~~ THEN waterdeep_19
SAY @362
IF ~~ THEN + waterdeep_20
END

IF ~~ THEN waterdeep_20
SAY @363
IF ~~ THEN EXIT
END

/* Ajantis Family (LT 7) */

/* lovetalk_ajantisfamily */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",14)~ THEN lovetalk_ajantisfamily
SAY @364
++ @365 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + ajantisfamily_06
++ @366 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + ajantisfamily_06
++ @367 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + ajantisfamily_01
+ ~GlobalGT("X#AjantisRomanceSheHasInterest","GLOBAL",0)~ + @368 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + ajantisfamily_03
+ ~Global("X#AjantisRomanceSheHasInterest","GLOBAL",0)~ + @369 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + ajantisfamily_04
++ @370 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + ajantisfamily_25 
END

IF ~~ THEN ajantisfamily_01
SAY @371
++ @372 + ajantisfamily_02
++ @373 + ajantisfamily_06
++ @374 + ajantisfamily_24
END

IF ~~ THEN ajantisfamily_02
SAY @375
++ @376 + ajantisfamily_06
++ @377 + ajantisfamily_06
++ @378 + ajantisfamily_24
END

IF ~~ THEN ajantisfamily_03
SAY @379
++ @380 + ajantisfamily_06
++ @381 + ajantisfamily_25 
++ @382 + ajantisfamily_05
END

IF ~~ THEN ajantisfamily_04
SAY @383
++ @384 + ajantisfamily_06
++ @385 + ajantisfamily_25 
++ @386 + ajantisfamily_05
END

IF ~~ THEN ajantisfamily_05
SAY @387
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceShutUp","GLOBAL",1) IncrementGlobal("X#AjantisRomanceShutUpCount","GLOBAL",1)~ EXIT
END

IF ~~ THEN ajantisfamily_06
SAY @388
++ @389 + ajantisfamily_32
++ @390 + ajantisfamily_07
++ @391 + ajantisfamily_33
END

IF ~~ THEN ajantisfamily_07
SAY @392
IF ~~ THEN + ajantisfamily_32
END

IF ~~ THEN ajantisfamily_08
SAY @393
++ @394 + ajantisfamily_09
++ @395 + ajantisfamily_10
++ @396 + ajantisfamily_11
END

IF ~~ THEN ajantisfamily_09
SAY @397
IF ~~ THEN + ajantisfamily_10
END

IF ~~ THEN ajantisfamily_10
SAY @398
++ @399 + ajantisfamily_11
++ @400 + ajantisfamily_25
END

IF ~~ THEN ajantisfamily_11
SAY @401
= @402
IF ~PartyHasItem("X#AJSHLD")~ THEN + ajantisfamily_12
IF ~!PartyHasItem("X#AJSHLD")~ THEN + ajantisfamily_13
END

IF ~~ THEN ajantisfamily_12
SAY @403
IF ~~ THEN + ajantisfamily_14
END

IF ~~ THEN ajantisfamily_13
SAY @404
IF ~~ THEN + ajantisfamily_14
END

IF ~~ THEN ajantisfamily_14
SAY @405
= @406
= @407
= @408
++ @409 + ajantisfamily_15
++ @410 + ajantisfamily_16
++ @411 DO ~SetGlobal("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + ajantisfamily_19
END

IF ~~ THEN ajantisfamily_15
SAY @412
IF ~~ THEN + ajantisfamily_17
END

IF ~~ THEN ajantisfamily_16
SAY @413
IF ~~ THEN + ajantisfamily_17
END

IF ~~ THEN ajantisfamily_17
SAY @414
= @415
++ @416 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + ajantisfamily_18
++ @417 + ajantisfamily_34
++ @418 + ajantisfamily_20
END

IF ~~ THEN ajantisfamily_18
SAY @419
IF ~~ THEN EXIT
END

IF ~~ THEN ajantisfamily_19
SAY @420
++ @421 + ajantisfamily_21
+ ~Global("X#AjantisRomanceSheHasInterest","GLOBAL",0)~ + @422 + ajantisfamily_28
+ ~GlobalGT("X#AjantisRomanceSheHasInterest","GLOBAL",0)~ + @422 + ajantisfamily_29
END

IF ~~ THEN ajantisfamily_20
SAY @423
++ @422 + ajantisfamily_22
++ @424 + ajantisfamily_23
END

IF ~~ THEN ajantisfamily_21
SAY @425
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN ajantisfamily_22
SAY @426
IF ~~ THEN EXIT
END

IF ~~ THEN ajantisfamily_23
SAY @427
++ @428 + ajantisfamily_22
++ @429 + ajantisfamily_30
++ @430 + ajantisfamily_31
END

IF ~~ THEN ajantisfamily_24
SAY @431
++ @432 + ajantisfamily_06
++ @433 + ajantisfamily_21
++ @434 + ajantisfamily_26
END

IF ~~ THEN ajantisfamily_25
SAY @435
IF ~~ THEN EXIT
END

IF ~~ THEN ajantisfamily_26
SAY @436
++ @437 + ajantisfamily_06
++ @438 + ajantisfamily_06
++ @439 + ajantisfamily_27
END

IF ~~ THEN ajantisfamily_27
SAY @440
= @441
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END


IF ~~ THEN ajantisfamily_28
SAY @442
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN ajantisfamily_29
SAY @443
= @444
IF ~~ THEN DO ~IncrementGlobal("X#AjantisRomanceShutUpCount","GLOBAL",1)~ + ajantisfamily_22
END

IF ~~ THEN ajantisfamily_30
SAY @445
= @446
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN ajantisfamily_31
SAY @447
= @448
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN ajantisfamily_32
SAY @449
IF ~~ THEN + ajantisfamily_08
END

IF ~~ THEN ajantisfamily_33
SAY @450
IF ~~ THEN + ajantisfamily_08
END

IF ~~ THEN ajantisfamily_34
SAY @451
IF ~~ THEN EXIT
END

/* CHARNAME's family and mentors (LT 8) */
/* lovetalk_pcfamily */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",16)~ THEN lovetalk_pcfamily
SAY @452
= @453
++ @454 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + pcfamily_01
++ @455 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + pcfamily_02
++ @456 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + pcfamily_04
++ @457 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + pcfamily_03
++ @458 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + pcfamily_20
END

IF ~~ THEN pcfamily_01
SAY @459 
++ @460 + pcfamily_10
++ @461 + pcfamily_03
++ @462 + pcfamily_10
END

IF ~~ THEN pcfamily_02
SAY @463
++ @464 + pcfamily_01
++ @465 + pcfamily_01
++ @466 + pcfamily_04
++ @467 + pcfamily_03
END

IF ~~ THEN pcfamily_03
SAY @468
++ @469 + pcfamily_05
++ @470 + pcfamily_10
++ @471 + pcfamily_06
++ @472 + pcfamily_21 //ShutUp
END

IF ~~ THEN pcfamily_04
SAY @473
++ @474 + pcfamily_08
++ @475 + pcfamily_07
++ @476 + pcfamily_09
++ @477 + pcfamily_03
END

IF ~~ THEN pcfamily_05
SAY @478
IF ~~ THEN + pcfamily_10
END

IF ~~ THEN pcfamily_06
SAY @479
IF ~~ THEN + pcfamily_08
END

IF ~~ THEN pcfamily_07
SAY @480
= @481 
IF ~~ THEN + pcfamily_10
END

IF ~~ THEN pcfamily_08
SAY @482 
IF ~~ THEN + pcfamily_10
END

IF ~~ THEN pcfamily_09
SAY @483
= @484 
IF ~~ THEN + pcfamily_10
END

IF ~~ THEN pcfamily_10
SAY @485
= @486
++ @487 + pcfamily_11
++ @488 + pcfamily_20
END

IF ~~ pcfamily_11
SAY @489
++ @490 DO ~SetGlobal("X#AjRomHCTalkImoen","LOCALS",1)~ + pcfamily_14
++ @491 DO ~SetGlobal("X#AjRomHCTalkFriends","LOCALS",1)~ + pcfamily_15
++ @492 DO ~SetGlobal("X#AjRomHCTalkMages","LOCALS",1)~ + pcfamily_16
++ @493 DO ~SetGlobal("X#AjRomHCTalkTeachers","LOCALS",1)~ + pcfamily_17
++ @494 + pcfamily_12
++ @495 + pcfamily_20
END

IF ~~ pcfamily_12
SAY @496 
++ @497 DO ~SetGlobal("X#AjRomHCTalkImoen","LOCALS",1)~ + pcfamily_14
++ @498 DO ~SetGlobal("X#AjRomHCTalkFriends","LOCALS",1)~ + pcfamily_15
++ @499 DO ~SetGlobal("X#AjRomHCTalkMages","LOCALS",1)~ + pcfamily_16
++ @500 DO ~SetGlobal("X#AjRomHCTalkTeachers","LOCALS",1)~ + pcfamily_17
++ @501 + pcfamily_20
++ @502 + pcfamily_13
END

IF ~~ pcfamily_18
SAY @507
+ ~!Global("X#AjRomHCTalkImoen","LOCALS",1)~ + @490 DO ~SetGlobal("X#AjRomHCTalkImoen","LOCALS",1)~ + pcfamily_14
+ ~!Global("X#AjRomHCTalkFriends","LOCALS",1)~ + @491 DO ~SetGlobal("X#AjRomHCTalkFriends","LOCALS",1)~ + pcfamily_15
+ ~!Global("X#AjRomHCTalkMages","LOCALS",1)~ + @492 DO ~SetGlobal("X#AjRomHCTalkMages","LOCALS",1)~ + pcfamily_16
+ ~!Global("X#AjRomHCTalkTeachers","LOCALS",1)~ + @508 DO ~SetGlobal("X#AjRomHCTalkTeachers","LOCALS",1)~ + pcfamily_17
++ @509 + pcfamily_19
END

IF ~~ THEN pcfamily_13
SAY @503
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN pcfamily_14
SAY @504
IF ~~ THEN + pcfamily_18
END

IF ~~ THEN pcfamily_15
SAY @505
IF ~~ THEN + pcfamily_18
END

IF ~~ THEN pcfamily_16
SAY @506
IF ~~ THEN + pcfamily_18
END

IF ~~ THEN pcfamily_17
SAY @504
IF ~~ THEN + pcfamily_18
END

IF ~~ THEN pcfamily_19
SAY @510
= @511
IF ~~ THEN EXIT
END

IF ~~ THEN pcfamily_20
SAY @512
IF ~~ THEN EXIT
END

IF ~~ THEN pcfamily_21
SAY @513
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) IncrementGlobal("X#AjantisRomanceShutUpCount","GLOBAL",1) SetGlobal("X#AjantisRomanceShutUp","GLOBAL",1)~ EXIT
END


/* Myrmith Splendon, Sir Keldorn (Ajantis' mentors) (LT 9) */

/* lovetalk_knight */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",18)~ THEN lovetalk_knight
SAY @514
++ @515 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + knight_01
++ @516 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + knight_02
++ @517 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + knight_03
++ @518 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + knight_12
END

IF ~~ THEN knight_01
SAY @519
IF ~~ THEN + knight_05
END

IF ~~ THEN knight_02
SAY @520
IF ~~ THEN + knight_05
END

IF ~~ THEN knight_03
SAY @521
++ @522 + knight_04
++ @523 + knight_04
++ @524 + knight_13
++ @525 + knight_13
END

IF ~~ THEN knight_04
SAY @526
IF  ~~ THEN + knight_05
END

IF ~~ THEN knight_05
SAY @527
= @528  
++ @529 + knight_06 
++ @530 + knight_07
++ @531 + knight_12
END

IF ~~ THEN knight_06
SAY @532
++ @533 + knight_08
++ @534 + knight_12
END

IF ~~ THEN knight_07
SAY @535
= @536
++ @537 + knight_08
++ @538 + knight_12
END


IF ~~ THEN knight_08
SAY @539
= @540
++ @541 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + knight_14
++ @542 + knight_10
++ @543 + knight_09
END

IF ~~ THEN knight_09
SAY @544
++ @545 + knight_10
++ @546 + knight_11
END

IF ~~ THEN knight_10
SAY @547
IF ~~ THEN EXIT
END

IF ~~ THEN knight_11
SAY @548
++ @549 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + knight_14
++ @550 + knight_15
++ @551 + knight_16
END

IF ~~ THEN knight_12
SAY @552
IF ~~ THEN EXIT
END

IF ~~ THEN knight_13
SAY @553
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) IncrementGlobal("X#AjantisRomanceShutUpCount","GLOBAL",1) SetGlobal("X#AjantisRomanceShutUp","GLOBAL",1)~ EXIT
END

IF ~~ THEN knight_14
SAY @554
IF ~~ THEN EXIT
END

IF ~~ THEN knight_15
SAY @555
IF ~~ THEN EXIT
END

IF ~~ THEN knight_16
SAY @556
= @557
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~ EXIT 
END

/* Caring home (LT 10) */
/* lovetalk_home */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",20)~ THEN lovetalk_home
SAY @558 
= @559 
++ @560 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + home_13
++ @561 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + home_06
++ @562 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + home_04
++ @563 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + home_05
++ @564 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + home_07
++ @565 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + home_10 
END

IF ~~ THEN home_01 
SAY @566
IF ~~ THEN EXIT
END

IF ~~ THEN home_02 
SAY @567
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) IncrementGlobal("X#AjantisRomanceShutUpCount","GLOBAL",1) SetGlobal("X#AjantisRomanceShutUp","GLOBAL",1)~ EXIT
END

IF ~~ THEN home_03
SAY @568 
IF ~~ THEN + home_08
END

IF ~~ THEN home_04
SAY @569 
IF ~~ THEN + home_03
END

IF ~~ THEN home_05
SAY @570 
IF ~~ THEN + home_03
END

IF ~~ THEN home_06
SAY @571
IF ~~ THEN + home_03
END

IF ~~ THEN home_07
SAY @572 
IF ~~ THEN + home_03
END

IF ~~ THEN home_08
SAY @573 
= @574 
= @575
++ @576 + home_12
++ @577 + home_11
++ @578 + home_16
++ @579 + home_17
++ @580 + home_09
++ @581 + home_10
END

IF ~~ THEN home_09
SAY @582 
IF ~~ THEN + home_18
END

IF ~~ THEN home_10
SAY @583
++ @584 + home_01
++ @585 + home_02
END

IF ~~ THEN home_11
SAY @586
IF ~~ THEN + home_18
END

IF ~~ THEN home_12
SAY @587 
IF ~~ THEN + home_18
END

IF ~~ THEN home_13
SAY @588 
++ @589 + home_14
++ @590 + home_10
END

IF ~~ THEN home_14
SAY @591 
IF ~~ THEN + home_03
END

IF ~~ THEN home_15
SAY @592
IF ~~ THEN + home_14
END

IF ~~ THEN home_16
SAY @593
IF ~~ THEN + home_19
END

IF ~~ THEN home_17
SAY @594
IF ~~ THEN + home_19
END

IF ~~ THEN home_18
SAY @595
IF ~~ THEN EXIT
END

IF ~~ THEN home_19
SAY @596
IF ~~ THEN EXIT
END

/* looking at the stars (LT 11) */
/* lovetalk_stars */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",22)~ THEN lovetalk_stars
SAY @597 
++ @598 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + stars_25
++ @599 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + stars_25
++ @600 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + stars_01
++ @601 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + stars_23
++ @602 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + stars_24
END

IF ~~ THEN stars_01
SAY @603
IF ~~ THEN + stars_02
END

IF ~~ THEN stars_02
SAY @604
++ @605 + stars_04
++ @606 + stars_05
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @607 + stars_03
++ @608 + stars_03
++ @609 + stars_20
END

IF ~~ THEN stars_03
SAY @69
++ @610 + stars_05
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1)~ + @611 + stars_21 
END

IF ~~ THEN stars_04
SAY @612
++ @613 + stars_22
++ @614 + stars_06
++ @615 + stars_20
END

IF ~~ THEN stars_05
SAY @616
++ @613 + stars_22
++ @614 + stars_06
++ @617 + stars_20
END

IF ~~ THEN stars_06
SAY @618
++ @619 DO ~SetGlobal("X#AjantisRomanceStarTalk","GLOBAL",1)~ + stars_07
++ @620 + stars_20
END

IF ~~ THEN stars_07
SAY @621
= @622
= @623
= @624
++ @625 + stars_09
++ @626 + stars_08
++ @627 + stars_20
END

IF ~~ THEN stars_08
SAY @628
++ @629 + stars_10
++ @630 + stars_11
++ @631 + stars_20
END

IF ~~ THEN stars_09
SAY @632
++ @633 + stars_26
++ @634 + stars_08
++ @635 + stars_20 
END

IF ~~ THEN stars_10
SAY @636
IF ~~ THEN + stars_11
END

IF ~~ THEN stars_11
SAY @637 
= @638 
= @639
++ @640 + stars_13
++ @641 + stars_12
++ @642 + stars_17
++ @643 + stars_20
END

IF ~~ THEN stars_12
SAY @644
IF ~~ THEN + stars_13
END

IF ~~ THEN stars_13
SAY @645
= @646
++ @647 + stars_14
++ @648 + stars_15
++ @642 + stars_17
++ @649 + stars_20
END

IF ~~ THEN stars_14
SAY @650
IF ~~ THEN + stars_15
END

IF ~~ THEN stars_15
SAY @651
++ @652 + stars_16
++ @653 + stars_17
++ @654 + stars_20
END

IF ~~ THEN stars_16
SAY @655
= @656
++ @657 + stars_17
++ @658 + stars_20
END

IF ~~ THEN stars_17
SAY @659
++ @660 DO ~SetGlobal("X#AjantisRomanceStars","GLOBAL",1)~ + stars_19
++ @661 DO ~SetGlobal("X#AjantisRomanceStars","GLOBAL",1)~ + stars_20
++ @662 + stars_18
END

IF ~~ THEN stars_18
SAY @663
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN stars_19
SAY @664 
= @665
IF ~~ THEN DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN stars_20
SAY @342
IF ~~ THEN EXIT
END

IF ~~ THEN stars_21
SAY @666
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN stars_22
SAY @667
++ @668 + stars_06
++ @669 + stars_20
END

IF ~~ THEN stars_23
SAY @670
IF ~~ THEN + stars_02
END

IF ~~ THEN stars_24
SAY @671
= @672
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) IncrementGlobal("X#AjantisRomanceShutUpCount","GLOBAL",1) SetGlobal("X#AjantisRomanceShutUp","GLOBAL",1)~ EXIT
END

IF ~~ THEN stars_25
SAY @673
IF ~~ THEN + stars_02
END

IF ~~ THEN stars_26
SAY @674
++ @634 + stars_08
++ @635 + stars_20 
END

/* Morning after Stars (LT 12) */
/* lovetalk_morning_stars */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceStars","GLOBAL",2)~ THEN lovetalk_stars
SAY @675
++ @676 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1) SetGlobal("X#AjantisRomanceStars","GLOBAL",3) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",AJROM_TIMER)~ + morning_stars_01
++ @677 DO ~SetGlobal("X#AjantisRomanceStars","GLOBAL",3) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",AJROM_TIMER)~ + morning_stars_02
END

IF ~~ THEN morning_stars_01
SAY @678
IF ~~ THEN + morning_stars_02
END

IF ~~ THEN morning_stars_02
SAY @679
+ ~!Class(Player1,PALADIN_ALL)~ + @680 + morning_stars_03
+ ~!Class(Player1,PALADIN_ALL)~ + @681 + morning_stars_03
+ ~Class(Player1,PALADIN_ALL)~ + @680 + morning_stars_04
+ ~Class(Player1,PALADIN_ALL)~ + @681 + morning_stars_04
END

IF ~~ THEN morning_stars_03
SAY @682
IF ~~ THEN + morning_stars_05
END

IF ~~ THEN morning_stars_04
SAY @683
IF ~~ THEN + morning_stars_05
END

IF ~~ THEN morning_stars_05
SAY @684
++ @685 + morning_stars_06
++ @686 + morning_stars_06A
END

IF ~~ THEN morning_stars_06
SAY @687
= @688
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceStars","GLOBAL",3)~ EXIT
END
IF ~~ THEN morning_stars_06A
SAY @689
++ @690 + morning_stars_06
++ @691 EXIT
END

/* being on the road vers. being in a comfortable home (LT 13) */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",24)~ THEN lovetalk_road
SAY @692
IF ~Global("X#AjantisRomanceNoRoad","GLOBAL",1)~ THEN DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + road_01
IF ~!Global("X#AjantisRomanceNoRoad","GLOBAL",1)~ THEN DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + road_02
END

IF ~~ THEN road_01
SAY @693
++ @694 + road_03
++ @695 + road_04
+ ~Class(Player1,PALADIN_ALL)~ + @696 DO ~SetGlobal("X#AjantisRomanceOnRoad","GLOBAL",1)~ + road_07
++ @697 + road_05
++ @698 + road_21
END

IF ~~ THEN road_02
SAY @699
++ @694 + road_03
++ @695 + road_04
+ ~Class(Player1,PALADIN_ALL)~ + @696 DO ~SetGlobal("X#AjantisRomanceOnRoad","GLOBAL",1)~ + road_07
++ @697 + road_05
++ @698 + road_21
END

IF ~~ THEN road_03
SAY @700 
+ ~!Global("X#AjantisRomanceNoRoad","GLOBAL",1)~ + @701 + road_04
+ ~Global("X#AjantisRomanceNoRoad","GLOBAL",1)~ + @701 + road_04
+ ~Class(Player1,PALADIN_ALL)~ + @702 DO ~SetGlobal("X#AjantisRomanceOnRoad","GLOBAL",1)~ + road_07
++ @703 + road_05
++ @704 + road_06
++ @698 + road_21
++ @705 + road_23
END

IF ~~ THEN road_04
SAY @706
++ @707 + road_05
+ ~!Class(Player1,PALADIN_ALL)~ + @708 DO ~SetGlobal("X#AjantisRomanceOnRoad","GLOBAL",1)~ + road_10
+ ~Class(Player1,PALADIN_ALL)~ + @709 DO ~SetGlobal("X#AjantisRomanceOnRoad","GLOBAL",1)~ + road_07
++ @710 + road_23
END

IF ~~ THEN road_05
SAY @711
IF ~~ THEN + road_24
END

IF ~~ THEN road_06
SAY @712
+ ~!Global("X#AjantisRomanceNoRoad","GLOBAL",1)~ + @713 + road_04
+ ~Global("X#AjantisRomanceNoRoad","GLOBAL",1)~ + @713 + road_04
+ ~Class(Player1,PALADIN_ALL)~ + @696 DO ~SetGlobal("X#AjantisRomanceOnRoad","GLOBAL",1)~ + road_07
++ @714 + road_05
++ @698 + road_21
++ @705 + road_23
END

IF ~~ THEN road_07
SAY @715
IF ~~ THEN + road_24
END

IF ~~ THEN road_08 
SAY @716
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN road_09 
SAY @717
IF ~~ THEN + road_12
END

IF ~~ THEN road_10
SAY @718
IF ~~ THEN + road_24
END

IF ~~ THEN road_11
SAY @719 
IF ~~ THEN + road_12
END

IF ~~ THEN road_12
SAY @720
++ @721 + road_29
++ @722 + road_13
++ @723 + road_22
END

IF ~~ THEN road_13
SAY @724 
+ ~Global("X#AjantisRomanceOnRoad","GLOBAL",1)~ + @725 + road_14
+ ~!Global("X#AjantisRomanceOnRoad","GLOBAL",1)~ + @726 + road_15
+ ~!Global("X#AjantisRomanceOnRoad","GLOBAL",1)~ + @727 + road_16
+ ~Global("X#AjantisRomanceOnRoad","GLOBAL",1)~ + @727 + road_17
++ @728 + road_18
++ @729 + road_22
END

IF ~~ THEN road_14
SAY @730
= @731 
IF ~~ THEN DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN road_15
SAY @732 
IF ~~ THEN EXIT
END

IF ~~ THEN road_16
SAY @733 
IF ~~ THEN DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN road_17
SAY @734 
IF ~~ THEN DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN road_18
SAY @735
++ @736 + road_19
++ @737 + road_20
END

IF ~~ THEN road_19
SAY @738 
IF ~~ THEN EXIT
END

IF ~~ THEN road_20
SAY @739 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN road_21
SAY @740
IF ~~ THEN EXIT
END

IF ~~ THEN road_22
SAY @741
IF ~~ THEN EXIT
END

IF ~~ THEN road_23
SAY @742
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN road_24
SAY @743
++ @744 + road_12
++ @745 + road_25
++ @746 + road_26
++ @747 + road_28
++ @748 + road_09
++ @749 + road_23
END

IF ~~ THEN road_25
SAY @750
IF ~~ THEN + road_12
END

IF ~~ THEN road_26
SAY @751
++ @752 + road_11
++ @753 + road_27
END

IF ~~ THEN road_27
SAY @754
IF ~~ THEN + road_08
END

IF ~~ THEN road_28
SAY @755 
IF ~~ THEN + road_08
END

IF ~~ THEN road_29
SAY @756
++ @757 + road_13
++ @758 + road_30
+ ~!Class(Player1,PALADIN)~ + @759 + road_31
++ @723 + road_22
END

IF ~~ THEN road_30
SAY @760
++ @761  DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + road_32
++ @762 + road_13
+ ~!Class(Player1,PALADIN)~ + @763 + road_31
++ @723 + road_22
++ @764 + road_20
END

IF ~~ THEN road_31
SAY @765
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN road_32
SAY @766
++ @767 + road_13
++ @723 + road_22
END

/* CHARNAME being a good fighter/mage/whatever - and still "a most beautiful lady, miss." (LT 14) */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",26) ReputationGT(Player1,13)~ THEN lovetalk_beautiful_start1
SAY @768
++ @769 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + beautiful_01
++ @770 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + beautiful_02
++ @771 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + beautiful_01
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",26) ReputationLT(Player1,14)~ THEN lovetalk_beautiful_start2
SAY @772
++ @769 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + beautiful_01
++ @770 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + beautiful_02
++ @771 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + beautiful_01
END

IF ~~ THEN beautiful_01
SAY @773
IF ~~ THEN + beautiful_02
END

IF ~~ THEN beautiful_02
SAY @774
++ @775 + beautiful_04
++ @776 + beautiful_04
++ @777 + 
beautiful_03
++ @778 + beautiful_10
++ @779 + beautiful_10
END

IF ~~ THEN beautiful_03
SAY @780
IF ~~ THEN + beautiful_04
END

IF ~~ THEN beautiful_04
SAY @781
IF ~~ THEN + beautiful_05
END

IF ~~ THEN beautiful_05
SAY @782
= @783
++ @784 + beautiful_06
++ @785 + beautiful_06
++ @786 + beautiful_06
END

IF ~~ THEN beautiful_06
SAY @787 
= @788
++ @789 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + beautiful_09
++ @790 + beautiful_13
++ @791 + beautiful_07
++ @792 + beautiful_12
++ @793 + beautiful_11
END

IF ~~ THEN beautiful_07
SAY @794
++ @795 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + beautiful_09
++ @796 + beautiful_08
++ @797 + beautiful_10
END

IF ~~ THEN beautiful_08
SAY @798
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNoCompliments","GLOBAL",1)~ EXIT
END

IF ~~ THEN beautiful_09
SAY @799
= @800
IF ~~ THEN EXIT
END 

IF ~~ THEN beautiful_10
SAY @801
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN beautiful_11
SAY @802
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceNoInterest","GLOBAL",1)~ EXIT
END 

IF ~~ THEN beautiful_12
SAY @803
++ @804 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + beautiful_09
++ @805 + beautiful_13
++ @806 + beautiful_07
++ @793 + beautiful_11
END

IF ~~ THEN beautiful_13
SAY @807
++ @808 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + beautiful_09
++ @809 + beautiful_07
++ @810 + beautiful_12
++ @811 + beautiful_11
END

//lovetalk_sunset (LT 15)
//became a flirt

/* lovetalk_flowers (LT 15) */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",28)~ THEN lovetalk_flowers
SAY @812 
++ @813 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + flowers_01
++ @814 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + flowers_02
++ @815 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + flowers_11
END

IF ~~ THEN flowers_01
SAY @816
++ @817 + flowers_06
++ @818 + flowers_12
++ @819 + flowers_13
END

IF ~~ THEN flowers_02
SAY @820
++ @817 + flowers_06
++ @818 + flowers_12
++ @819 + flowers_13
END

IF ~~ THEN flowers_06
SAY @821
++ @822 + flowers_07
++ @823 + flowers_08
++ @824 + flowers_15
END

IF ~~ THEN flowers_07
SAY @825
= @826 
= @827 
= @828
++ @829 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + flowers_10
++ @830 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + flowers_10
++ @831 + flowers_10
++ @832 + flowers_16
END

IF ~~ THEN flowers_08
SAY @833
= @834
= @835
= @836
++ @837 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + flowers_09
++ @830 DO ~IncrementGlobal("X#AjantisRomanceSheHasInterest","GLOBAL",1)~ + flowers_09
++ @831 + flowers_09
++ @838 + flowers_16
END

IF ~~ THEN flowers_09
SAY @839
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceFlowerFlirt","GLOBAL",1)~ EXIT
END

IF ~~ THEN flowers_10
SAY @840
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceFlowerFlirt","GLOBAL",1)~ EXIT
END

IF ~~ THEN flowers_11
SAY @841 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNoFlower","GLOBAL",1)~ EXIT
END

IF ~~ THEN flowers_12
SAY @842
++ @843 + flowers_07
++ @823 + flowers_08
++ @824 + flowers_15
END

IF ~~ THEN flowers_13
SAY @844 
++ @845 + flowers_11
++ @846 + flowers_14
END

IF ~~ THEN flowers_14
SAY @847 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN flowers_15
SAY @848 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceNoInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN flowers_16
SAY @849
++ @850 + flowers_09
++ @851 + flowers_17
END

IF ~~ THEN flowers_17
SAY @852 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

/* lovetalk_lover (LT 16) */
 
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",30)~ THEN lovetalk_lover
SAY @853
++ @854 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + lover_02 
++ @855 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + lover_01
++ @856 DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceOtherMan","GLOBAL",1) IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + lover_08
++ @857 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + lover_07
END

IF ~~ THEN lover_01
SAY @858
++ @854 + lover_02
++ @859 DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceOtherMan","GLOBAL",1)~ + lover_08
++ @860 + lover_07
END

IF ~~ THEN lover_02
SAY @861
= @862
= @863
= @864
++ @865 + lover_09
++ @866 + lover_05
+ ~GlobalGT("X#AjantisRomanceSheHasInterest","GLOBAL",3)~ + @867 + lover_03
+ ~GlobalLT("X#AjantisRomanceSheHasInterest","GLOBAL",4)~ + @867 + lover_04
++ @868 + lover_07
END

IF ~~ THEN lover_03
SAY @869
= @870
IF ~~ THEN + lover_06
END

IF ~~ THEN lover_04
SAY @871 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN lover_05
SAY @872
IF ~~ THEN + lover_06
END

IF ~~ THEN lover_06
SAY @873
= @874
IF ~~ THEN EXIT
END

IF ~~ THEN lover_07
SAY @875
IF ~~ THEN EXIT
END

IF ~~ THEN lover_08
SAY @876
IF ~~ THEN EXIT
END

IF ~~ THEN lover_09
SAY @877
= @878
IF ~~ THEN EXIT
END

/* Confessions & marriage proposal (LT18b) */
//script: nur f?r Bhaalknow = 0
//at next rest after messenger

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisHasRing","GLOBAL",3)~ THEN lovetalk_confession
SAY @879
++ @880 DO ~SetGlobal("X#AjantisHasRing","GLOBAL",4)~ + confession_03
++ @881 DO ~SetGlobal("X#AjantisHasRing","GLOBAL",4)~ + confession_01
++ @882 DO ~SetGlobal("X#AjantisHasRing","GLOBAL",4)~ + confession_13 
++ @883 DO ~SetGlobal("X#AjantisHasRing","GLOBAL",4)~ + confession_02
END

IF ~~ THEN confession_01
SAY @884  
IF ~~ THEN + confession_03
END

IF ~~ THEN confession_02
SAY @885
IF ~~ THEN + confession_03
END

IF ~~ THEN confession_03
SAY @886
= @887
= @888
= @889
= @890
++ @891 + confession_04
++ @892 + confession_14
+ ~GlobalGT("X#AjantisRomanceSheHasInterest","GLOBAL",3)~ + @893 + confession_05
+ ~GlobalLT("X#AjantisRomanceSheHasInterest","GLOBAL",4)~ + @893 + confession_06
++ @894 + confession_07
++ @895 + confession_08
++ @896 + confession_12
++ @897 + confession_08
++ @898 + confession_09
END

IF ~~ THEN confession_04
SAY @899
++ @900 DO ~GiveItemCreate("X#AJRORI",Player1,1,0,0)~ + confession_15
++ @901 DO ~GiveItemCreate("X#AJRORI",Player1,1,0,0)~ + confession_15
++ @902 DO ~GiveItemCreate("X#AJRORI",Player1,1,0,0)~ + confession_15
++ @903 DO ~GiveItemCreate("X#AJRORI",Player1,1,0,0)~ + confession_15
END

IF ~~ THEN confession_05
SAY @904
++ @891 + confession_04
++ @892 + confession_14
++ @894 + confession_07
++ @895 + confession_08
++ @896 + confession_12
++ @897 + confession_08
++ @898 + confession_09
END

IF ~~ THEN confession_06
SAY @905
++ @891 + confession_04
++ @892 + confession_14
++ @894 + confession_07
++ @895 + confession_08
++ @896 + confession_12
++ @897 + confession_08
++ @898 + confession_09
END

IF ~~ THEN confession_07
SAY @906 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceOtherMan","GLOBAL",1) RestParty()~ EXIT 
END

IF ~~ THEN confession_08
SAY @907
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceNoInterest","GLOBAL",1) RestParty()~ EXIT 
END

IF ~~ THEN confession_09
SAY @908
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN confession_10
SAY @909
IF ~~ THEN + confession_11
END

IF ~~ THEN confession_11
SAY @910
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ THEN confession_12
SAY @911
++ @891 + confession_04
++ @892 + confession_14
+ ~GlobalGT("X#AjantisRomanceSheHasInterest","GLOBAL",3)~ + @893 + confession_05
+ ~GlobalLT("X#AjantisRomanceSheHasInterest","GLOBAL",4)~ + @893 + confession_06
++ @894 + confession_07
++ @895 + confession_08
++ @897 + confession_08
++ @898 + confession_09
END

IF ~~ THEN confession_13
SAY @912  
IF ~~ THEN + confession_03
END

IF ~~ THEN confession_14
SAY @913 
IF ~~ THEN + confession_04
END

IF ~~ THEN confession_15
SAY @914
++ @915 + confession_16
++ @916 + confession_17
++ @917 + confession_10
END

IF ~~ THEN confession_16
SAY @918
IF ~~ THEN + confession_17
END

IF ~~ THEN confession_17
SAY @919
IF ~~ THEN + confession_11
END

/* Present (LT 18) */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",34) !Global("X#AjantisRomanceNoFlower","GLOBAL",1)~ THEN lovetalk_necklace
SAY @920
++ @921 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + necklace_02
++ @922 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + necklace_02
++ @923 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + necklace_02
++ @924 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + necklace_01
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",34) Global("X#AjantisRomanceNoFlower","GLOBAL",1)~ THEN lovetalk_necklace_2
SAY @925
++ @921 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + necklace_02
++ @922 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + necklace_02
++ @923 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + necklace_02
++ @924 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + necklace_01
END

IF ~~ THEN necklace_01
SAY @926
IF ~~ THEN + necklace_02
END

IF ~~ THEN necklace_02
SAY @927
++ @928 + necklace_03
++ @929 + necklace_04
++ @930 + necklace_05
END

IF ~~ THEN necklace_03
SAY @931
++ @932 + necklace_07
++ @933 + necklace_06
++ @903 + necklace_08
END

IF ~~ THEN necklace_04
SAY @934
++ @932 + necklace_07
++ @933 + necklace_06
++ @903 + necklace_08
END

IF ~~ THEN necklace_05
SAY @935
++ @936 + necklace_07
++ @937 + necklace_06
++ @903 + necklace_08
END

IF ~~ THEN necklace_06
SAY @938
IF ~~ THEN + necklace_08
END

IF ~~ THEN necklace_07
SAY @939 
++ @940 + necklace_06
++ @903 + necklace_08
END

IF ~~ THEN necklace_08
SAY @941 
IF ~~ THEN DO ~GiveItemCreate("X#AJRONE",Player1,1,1,1) SetGlobal("X#AjantisRomanceGotNecklace","GLOBAL",1)~ EXIT
END


//Nighttalk1 (LT 19)


IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",36)~ THEN lovetalk_night1
SAY @942
IF ~Global("X#AjantisRomanceStarTalk","GLOBAL",1)~ THEN DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + night1_02
IF ~!Global("X#AjantisRomanceStarTalk","GLOBAL",1)~ THEN DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + night1_01
END

IF ~~ THEN night1_01
SAY @943
IF ~~ THEN + night1_03
END

IF ~~ THEN night1_02
SAY @944
IF ~~ THEN + night1_03
END

IF ~~ THEN night1_03
SAY @945
= @946
++ @947 + night1_05
++ @948 + night1_05
++ @949 + night1_09
++ @950 + night1_09
++ @951 + night1_04
END

IF ~~ THEN night1_04
SAY @952
++ @947 + night1_05
++ @948 + night1_05
++ @949 + night1_09
++ @950 + night1_09
END

IF ~~ THEN night1_05
SAY @953
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",0)~ THEN + night1_06
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",8)~ THEN + night1_08
END

IF ~~ THEN night1_06
SAY @954
++ @955 + night1_07
++ @956 + night1_13
END

IF ~~ THEN night1_07
SAY @957
IF ~~ THEN EXIT
END

IF ~~ THEN night1_08
SAY @958 
++ @955 + night1_07
++ @956 + night1_13
END

IF ~~ THEN night1_09
SAY @959
= @960
+ ~Global("X#AjantisKnowBhaalTalk","GLOBAL",0)~ + @961 + night1_11
+ ~Global("X#AjantisKnowBhaalTalk","GLOBAL",8)~ + @961 + night1_12
+ ~Global("X#AjantisKnowBhaalTalk","GLOBAL",0)~ + @962 + night1_11
+ ~Global("X#AjantisKnowBhaalTalk","GLOBAL",8)~ + @962 + night1_12
++ @963 + night1_10
END

IF ~~ THEN night1_10
SAY @964
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",0)~ THEN + night1_11
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",8)~ THEN + night1_12
END

IF ~~ THEN night1_11
SAY @965
++ @966 + night1_07
++ @967 + night1_13
++ @968 + night1_14
++ @969 + night1_15
END

IF ~~ THEN night1_12
SAY @970 
++ @966 + night1_07
++ @967 + night1_13
++ @968 + night1_14
++ @969 + night1_15
END

IF ~~ THEN night1_13
SAY @971
IF ~~ THEN + night1_16
END

IF ~~ THEN night1_14
SAY @972
IF ~~ THEN + night1_16
END

IF ~~ THEN night1_15
SAY @973
IF ~~ THEN + night1_16
END

IF ~~ THEN night1_16
SAY @974
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceWantsInt","GLOBAL",1)~ EXIT
END

//
//night talk 2 (LT 20)
//

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",38)~ THEN lovetalk_night2
SAY @975
++ @976 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + night2_01
++ @977 DO ~SetGlobal("X#AjantisRomWCl","LOCALS",1) IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + night2_16
+ ~!Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @978 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + night2_02
+ ~Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @978 DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + night2_05
END

IF ~~ THEN night2_01
SAY @979
++ @977 DO ~SetGlobal("X#AjantisRomWCl","LOCALS",1)~ + night2_16
+ ~!Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @980 + night2_02
+ ~Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @980 + night2_05
END

IF ~~ THEN night2_02
SAY @981
++ @982 + night2_03
++ @983 + night2_04
END

IF ~~ THEN night2_03
SAY @984
IF ~~ THEN + night2_04
END

IF ~~ THEN night2_04
SAY @985
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN night2_05
SAY @986
++ @987 + night2_07
++ @988 + night2_07
++ @989 + night2_06
++ @990 + night2_14
END

IF ~~ THEN night2_06
SAY @991
++ @992 + night2_14
++ @993 + night2_07
++ @994 + night2_07
END

IF ~~ THEN night2_07
SAY @995 
= @996
= @997
= @998
++ @999 + night2_08
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1000 + night2_15
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1001 + night2_15
++ @1002 DO ~SetGlobal("X#AjantisRomanceK","LOCALS",1)~ + night2_09
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1003 + night2_13
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1003 + night2_21
++ @1004 + night2_10
++ @1005 + night2_12
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1006 + night2_11
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1006 + night2_22
++ @1007 + night2_14
END

IF ~~ THEN night2_08
SAY @1008
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1000 + night2_15
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1001 + night2_15
++ @1009 DO ~SetGlobal("X#AjantisRomanceK","LOCALS",1)~ + night2_09
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1003 + night2_13
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1003 + night2_21
++ @1004 + night2_10
++ @1010 + night2_12
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1006 + night2_11
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1006 + night2_22
END

IF ~~ THEN night2_09
SAY @1011
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1000 + night2_15
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1001 + night2_15
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1012 + night2_13
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1012 + night2_21
++ @1013 + night2_12
END

IF ~~ THEN night2_10
SAY @1014
++ @1015 DO ~SetGlobal("X#AjantisRomanceK","LOCALS",1)~ + night2_09
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1016 + night2_15
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1017 + night2_15
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1018 + night2_13
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1018 + night2_21
++ @1013 + night2_12
++ @1019 + night2_14
END

IF ~~ THEN night2_11
SAY @1020
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceWantsInt","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ THEN night2_12
SAY @1021
++ @1000 + night2_15
+ ~!Global("X#AjantisRomanceK","LOCALS",1)~ + @1009 + night2_09
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1003 + night2_13
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1003 + night2_21
+ ~!Global("X#AjantisRomWCl","LOCALS",1)~ + @1006 + night2_11
+ ~Global("X#AjantisRomWCl","LOCALS",1)~ + @1006 + night2_22
++ @1019 + night2_14
END

IF ~~ THEN night2_13
SAY @1022
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceWantsInt","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ THEN night2_14
SAY @1023
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceWantsInt","GLOBAL",0)~ + night2_04
END

IF ~~ THEN night2_15
SAY @1024
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceIntimacy","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN night2_16
SAY @1025
+ ~!Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @1026 + night2_18
+ ~!Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @1027 + night2_19
+ ~!Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @1028 + night2_17
+ ~Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @1026 + night2_05
+ ~Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @1029 + night2_05
+ ~Global("X#AjantisRomanceWantsInt","GLOBAL",1)~ + @1028 + night2_05
END

IF ~~ THEN night2_17
SAY @1030 
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN night2_18
SAY @1031
IF ~~ THEN + night2_20
END

IF ~~ THEN night2_19
SAY @1032
IF ~~ THEN + night2_20
END

IF ~~ THEN night2_20
SAY @1033
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN night2_21
SAY @1034
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceWantsInt","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ THEN night2_22
SAY @1035
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceWantsInt","GLOBAL",2) RestParty()~ EXIT
END

//morning after I2 (LT 20b)

//only for X#AjantisRomanceIntimacy = 1

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceIntimacy1Morning","GLOBAL",1)~ THEN lovetalk_morning2
SAY @1036 
++ @1037 DO ~SetGlobal("X#AjantisRomanceIntimacy1Morning","GLOBAL",2)~ + morning2_01
++ @1038 DO ~SetGlobal("X#AjantisRomanceIntimacy1Morning","GLOBAL",2)~ + morning2_01
++ @1039 DO ~SetGlobal("X#AjantisRomanceIntimacy1Morning","GLOBAL",2)~ + morning2_01
++ @1040 DO ~SetGlobal("X#AjantisRomanceIntimacy1Morning","GLOBAL",2)~ + morning2_06
END

IF ~~ THEN morning2_01
SAY @1041
++ @1042 + morning2_02
++ @1043 + morning2_10
++ @1044 + morning2_03
++ @1045 + morning2_07
END

IF ~~ THEN morning2_02
SAY @1046
++ @1047 + morning2_05
++ @1048 + morning2_03
END

IF ~~ THEN morning2_03
SAY @1049
++ @1050
+ morning2_04
++ @1051 + morning2_05
END

IF ~~ THEN morning2_04
SAY @1052
= @1053
IF ~~ THEN EXIT
END

IF ~~ THEN morning2_05
SAY @1054
IF ~~ THEN EXIT
END

IF ~~ THEN morning2_06
SAY @1055
++ @1056 + morning2_01
++ @1057 + morning2_07
END

IF ~~ THEN morning2_07
SAY @1058
++ @1059 + morning2_09
++ @1060 + morning2_09
++ @1061 + morning2_08
++ @1062 + morning2_08
END

IF ~~ THEN morning2_08
SAY @1063 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN morning2_09
SAY @1064
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceBadInt","GLOBAL",1)~ EXIT
END

IF ~~ THEN morning2_10
SAY @1065
++ @1066 + morning2_05
++ @1048 + morning2_03
END

/* wedding plans (LT 21) */
/* lovetalk_wedding */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",40)~ THEN lovetalk_wedding
SAY @1067
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",0)~ THEN DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + wedding_1_02
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",8)~ THEN DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + wedding_1_01
END

IF ~~ THEN wedding_1_01
SAY @1068
IF ~~ THEN + wedding_1_02
END

IF ~~ THEN wedding_1_02
SAY @1069
++ @1070 DO ~SetGlobal("X#AjantisWaitWed","GLOBAL",1)~ + wedding_01
++ @1071 DO ~SetGlobal("X#AjantisNoWaitWed","GLOBAL",1)~ + wedding_02
+ ~Global("X#AjantisKnowBhaalTalk","GLOBAL",0)~ + @1072 + wedding_19
+ ~Global("X#AjantisKnowBhaalTalk","GLOBAL",8)~ + @1072 + wedding_15
++ @1073 + wedding_04
++ @1074 + wedding_16
END

IF ~~ THEN wedding_01
SAY @1075 
= @1076
++ @1077 + wedding_20
++ @1078 + wedding_22
++ @1079 + wedding_24
++ @1080 + wedding_23
++ @1081 + wedding_21
END

IF ~~ THEN wedding_02
SAY @1082
++ @1083 DO ~SetGlobal("X#AjantisWaitWed","GLOBAL",1)~ + wedding_01
+ ~Global("X#AjantisKnowBhaalTalk","GLOBAL",0)~ + @1084 + wedding_19
+ ~Global("X#AjantisKnowBhaalTalk","GLOBAL",8)~ + @1084 + wedding_15
++ @1085 + wedding_16
END

IF ~~ THEN wedding_03
SAY @1086
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",0)~ THEN + wedding_18
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",8)~ THEN + wedding_07
END

IF ~~ THEN wedding_04
SAY @1087
++ @1088 + wedding_06
++ @1089 + wedding_13
END

IF ~~ THEN wedding_05
SAY @1090
IF ~~ THEN + wedding_14
END

IF ~~ THEN wedding_06
SAY @1091
++ @1092 + wedding_08
++ @1093 + wedding_13
END

IF ~~ THEN wedding_07
SAY @1094
++ @1095 + wedding_17
++ @1096 + wedding_17
++ @1097 + wedding_05
END

IF ~~ THEN wedding_08
SAY @1098
++ @1099 + wedding_11
+ ~!Global("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + @1100 + wedding_12
+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + @1100 + wedding_09
END

IF ~~ THEN wedding_09
SAY @1086
= @1101
= @1102
++ @1103 + wedding_10
++ @1104 + wedding_13
END

IF ~~ THEN wedding_10
SAY @1105
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceMarriageDoubts","GLOBAL",1)~ EXIT
END

IF ~~ THEN wedding_11
SAY @1106
++ @1103 + wedding_10
++ @1104 + wedding_13
END

IF ~~ THEN wedding_12
SAY @1107
= @1102
++ @1103 + wedding_10
++ @1104 + wedding_13
END

IF ~~ THEN wedding_13
SAY @1108
IF ~~ THEN + wedding_14
END

IF ~~ THEN wedding_14
SAY @1109  
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN wedding_15
SAY @1110 
= @1111
++ @1077 + wedding_20
++ @1078 + wedding_22
++ @1079 + wedding_24
++ @1080 + wedding_23
+ ~Global("X#AjantisNoWaitWed","GLOBAL",1) !Global("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + @1112 + wedding_07
+ ~Global("X#AjantisNoWaitWed","GLOBAL",1) Global("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + @1112 + wedding_03
+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + @1113 + wedding_03
++ @1081 + wedding_21
END

IF ~~ THEN wedding_16
SAY @1114 
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_17
SAY @1115
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_18
SAY @1116
++ @1095 + wedding_17
++ @1096 + wedding_17
++ @1117 + wedding_05
END

IF ~~ THEN wedding_19
SAY @1118 
= @1111
++ @1077 + wedding_20
++ @1078 + wedding_22
+ ~!Global("PlayerHasStronghold","GLOBAL",1) !Global("PaladinOrder","GLOBAL",1)~ + @1079 + wedding_24
++ @1080 + wedding_23
+ ~Global("X#AjantisNoWaitWed","GLOBAL",1) !Global("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + @1119 + wedding_18
+ ~Global("X#AjantisNoWaitWed","GLOBAL",1) Global("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + @1119 + wedding_03
+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + @1113 + wedding_03
++ @1081 + wedding_21
END

IF ~~ THEN wedding_20
SAY @1120
= @1121 
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_21
SAY @1122
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_22
SAY @1123
= @1124
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_23
SAY @1125
= @1126
= @1127
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_24
SAY @1128
++ @1129 + wedding_20
++ @1130 + wedding_22
++ @1131 + wedding_23
++ @1132 + wedding_25
END

IF ~~ THEN wedding_25
SAY @1133
++ @1134 + wedding_26
++ @1135 + wedding_05
END

IF ~~ THEN wedding_26
SAY @1136
= @1137
IF ~~ THEN EXIT
END

//Love and the Order (LT 22) 

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLoveTalk","GLOBAL",42)~ THEN lovetalk_true
SAY @1138
IF ~~ THEN DO ~IncrementGlobal("X#AjantisLoveTalk","GLOBAL",1)~ + true1_01
END

IF ~~ THEN true1_01
SAY @1139
++ @1140 + true1_02
++ @1141 + true1_03
++ @1142 + true1_04
++ @1143 + true1_02
++ @1144 + true_10
++ @1145 + true_12
END

IF ~~ THEN true1_02
SAY @1146
IF ~~ THEN + true1_05
END

IF ~~ THEN true1_03
SAY @1147
IF ~~ THEN + true1_05
END

IF ~~ THEN true1_04
SAY @1148
IF ~~ THEN + true1_05
END

IF ~~ THEN true1_05
SAY @1149
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",8)~ THEN + true1_06
IF ~Global("X#AjantisKnowBhaalTalk","GLOBAL",0)~ THEN + true1_07
END

IF ~~ THEN true1_06
SAY @1150
IF ~~ THEN + true1_07
END

IF ~~ THEN true1_07
SAY @1151
++ @1152 + true1_08
++ @1153 + true1_08
++ @1154 + true1_09
END

IF ~~ THEN true1_08
SAY @1155
IF ~~ THEN + true1_10
END

IF ~~ THEN true1_08A
SAY @1156
IF ~~ THEN + true1_10
END

IF ~~ THEN true1_09
SAY @1157
IF ~~ THEN + true1_08A
END

IF ~~ THEN true1_10
SAY @1158
++ @1159 + true_06
++ @1160 + true_11
++ @1161 + true_11
+ ~Global("X#AjantisRomanceNoOrderMember","GLOBAL",1) Alignment(Player1,LAWFUL_GOOD)
OR(2) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL)~ + @1162 + true_07
+ ~!Global("X#AjantisRomanceNoOrderMember","GLOBAL",1) Alignment(Player1,LAWFUL_GOOD)
OR(2) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL)~ + @1162 + true_08
++ @1163 + true_09
++ @1164 + true_02
END

IF ~~ THEN true_02
SAY @1165
++ @1166 + true_03
++ @1167 + true_12
END 

IF ~~ THEN true_03
SAY @1168
++ @1169 + true_06
++ @1170 + true_11
++ @1171 + true_05
END

IF ~~ THEN true_04
SAY @1172
++ @1173 + true_06
++ @1161 + true_11
++ @1163 + true_09
++ @1174 + true_03
END

IF ~~ THEN true_05
SAY @1175
IF ~~ THEN EXIT
END

IF ~~ THEN true_06
SAY @1176
IF ~~ THEN EXIT
END

IF ~~ THEN true_07
SAY @1177
= @1178
++ @1179 + true_04
++ @1169 + true_06
++ @1161 + true_11
++ @1163 + true_09
++ @1174 + true_03
END

IF ~~ THEN true_08
SAY @1178
++ @1179 + true_04
++ @1169 + true_06
++ @1161 + true_11
++ @1163 + true_09
++ @1174 + true_03
END

IF ~~ THEN true_09
SAY @1180
IF ~~ THEN + true_05
END

IF ~~ THEN true_10
SAY @1181
IF ~~ THEN EXIT
END

IF ~~ THEN true_11
SAY @1182
IF ~~ THEN + true_05
END

IF ~~ THEN true_12
SAY @1183
= @1184 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceNoInterest","GLOBAL",1)~ EXIT
END


//nighttalk 3 additional LT 23


IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceNight3","GLOBAL",1)~ THEN lovetalk_intimacy2
SAY @1185 
++ @1186 DO ~SetGlobal("X#AjantisRomanceNight3","GLOBAL",2)~ + intimacy2_01
+ ~!Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1187 DO ~SetGlobal("X#AjantisRomanceNight3","GLOBAL",2)~ + intimacy2_02
++ @1188 DO ~SetGlobal("X#AjantisRomanceNight3","GLOBAL",2)~ + intimacy2_05
END

IF ~~ THEN intimacy2_01
SAY @1189 
+ ~Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1190 + intimacy2_03
+ ~!Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1191 + intimacy2_03
+ ~!Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1192 + intimacy2_03
+ ~!Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1193 + intimacy2_04
+ ~Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1193 + intimacy2_06
++ @1194 + intimacy2_05
END

IF ~~ THEN intimacy2_02
SAY @1195
++ @1196 + intimacy2_03
++ @1192 + intimacy2_03
++ @1193 + intimacy2_04
END

IF ~~ THEN intimacy2_03
SAY @1197
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceMakeLove2","GLOBAL",1) SetGlobal("X#AjantisRomanceIntimacy","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN intimacy2_04
SAY @1198
++ @1199 + intimacy2_03
++ @1200 + intimacy2_03
++ @1201 + intimacy2_05
END

IF ~~ THEN intimacy2_05
SAY @1202
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceNoMakeLove2","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN intimacy2_06
SAY @1203
IF ~~ THEN + intimacy2_04
END

//morning talk after night talk 3 (LT 23b)

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceIntimacy2Morning","GLOBAL",1) Global("X#AjantisRomanceMakeLove2","GLOBAL",1)~ THEN lovetalk_morning3
SAY @1204
+ ~!Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1205 + morning3_01
+ ~!Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1206 + morning3_02
+ ~!Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1207 + morning3_03
+ ~Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1208 + morning3_04
+ ~Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1209 + morning2_08
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceIntimacy2Morning","GLOBAL",1)  Global("X#AjantisRomanceNoMakeLove2","GLOBAL",1)~ THEN lovetalk_morning3_No
SAY @1210
++ @1205 + morning3_01
+ ~!Global("X#AjantisRomanceBadInt","GLOBAL",1)~ + @1206 + morning3_02
++ @1207 + morning3_03
END

IF ~~ THEN morning3_01
SAY @1211
+ ~Global("X#AjantisRomanceNoMakeLove2","GLOBAL",1)~ + @1212 + morning3_02
+ ~Global("X#AjantisRomanceMakeLove2","GLOBAL",1)~ + @1213 + morning3_02
++ @1214 + morning3_03
END

IF ~~ THEN morning3_02
SAY @1215
= @1216
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceIntimacy2Morning","GLOBAL",2) RestParty()~ EXIT 
END

IF ~~ THEN morning3_03
SAY @1217
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceIntimacy2Morning","GLOBAL",2)~ EXIT 
END

IF ~~ THEN morning3_04
SAY @1218
++ @1219 + morning3_01
++ @1220 + morning3_02
++ @1214 + morning3_03
END

/* additional LT Lovetalk dragon */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceDragonTalk","GLOBAL",1)~ THEN lovetalk_dragon
SAY @1221
++ @1222 + dragon_01
++ @1223 + dragon_02
++ @1224 + dragon_03
END

IF ~~ THEN dragon_01
SAY @1225
IF ~~ THEN + dragon_04
END

IF ~~ THEN dragon_02
SAY @1226
IF ~~ THEN + dragon_04
END

IF ~~ THEN dragon_03
SAY @1227
IF ~~ THEN + dragon_04
END

IF ~~ THEN dragon_04
SAY @1228
= @1229
= @1230
++ @1231 + dragon_05
++ @1232 + dragon_06
++ @1233 + dragon_07
+ ~Class(Player1,BARD_ALL)~ + @1234 + dragon_08
END

IF ~~ THEN dragon_05
SAY @1235
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDragonTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN dragon_06
SAY @1236
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDragonTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN dragon_07
SAY @1237
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDragonTalk","GLOBAL",2)~ EXIT
END

IF ~~ dragon_08
SAY @1238
++ @1239 + dragon_05
++ @1232 + dragon_06
++ @1233 + dragon_07
++ @1240 + dragon_09
END

IF ~~ THEN dragon_09
SAY @1241
= @1242
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceDragonTalk","GLOBAL",2)~ EXIT
END

/* Last Lovetalk: Plans for (near) future (LT 24) */
/* After entering dead Undercity */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLastLoveTalk","GLOBAL",1)~ THEN lovetalk_final
SAY @1243
= @1244
++ @1245 + final_01
++ @1246 + final_02
++ @1247 + final_03
++ @1248 + final_04
END

IF ~~ THEN final_01
SAY @1249
IF ~~ THEN + final_05
END

IF ~~ THEN final_02
SAY @1250
IF ~~ THEN + final_05
END

IF ~~ THEN final_03
SAY @1251
IF ~~ THEN + final_05
END

IF ~~ THEN final_04
SAY @1252
= @1253
IF ~~ THEN + final_08
END

IF ~~ THEN final_05
SAY @1254
++ @1255 + final_06
++ @1256 + final_06
++ @1257 + final_08
++ @1258 + final_07
END

IF ~~ THEN final_06
SAY @1259
IF ~~ THEN + final_08
END

IF ~~ THEN final_07
SAY @1260
IF ~~ THEN + final_08
END

IF ~~ THEN final_08
SAY @1261
= @1262
IF ~~ THEN DO ~SetGlobal("X#AjantisLastLoveTalk","GLOBAL",2)~ EXIT
END

END

