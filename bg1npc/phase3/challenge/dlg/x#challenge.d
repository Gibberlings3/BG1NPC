BEGIN ~X#CAUTZ~
BEGIN ~X#DRAG2~

/* Ajantis and Coran bickering */

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AJCOConflict","GLOBAL",2)~ THEN ~%AJANTIS_BANTER%~ AJCOChallenge1
@0
DO ~SetGlobal("X#AJCOConflict","GLOBAL",3) RealSetGlobalTimer("X#AJCOConflictTime","GLOBAL",3000)~
== ~%CORAN_BANTER%~ @1
== ~%AJANTIS_BANTER%~ @2
== ~%CORAN_BANTER%~ @3
== ~%AJANTIS_BANTER%~ @4
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AJCOConflict","GLOBAL",4)~ THEN ~%CORAN_BANTER%~ AJCOChallenge2
@5
DO ~SetGlobal("X#AJCOConflict","GLOBAL",5) RealSetGlobalTimer("X#AJCOConflictTime","GLOBAL",3000)~
== ~%AJANTIS_BANTER%~ @6
== ~%CORAN_BANTER%~ @7
== ~%AJANTIS_BANTER%~ @8
== ~%CORAN_BANTER%~ @9
== ~%AJANTIS_BANTER%~ @10
== ~%CORAN_BANTER%~ @11
== ~%AJANTIS_BANTER%~ @12
== ~%CORAN_BANTER%~ @13
= @14
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AJCOConflict","GLOBAL",6)~ THEN ~%CORAN_BANTER%~ AJCOChallenge3
@15
DO ~SetGlobal("X#AJCOConflict","GLOBAL",7) RealSetGlobalTimer("X#AJCOConflictTime","GLOBAL",3000)~
== ~%AJANTIS_BANTER%~ @16
== ~%CORAN_BANTER%~ @17
== ~%AJANTIS_BANTER%~ @18
== ~%CORAN_BANTER%~ @19
== ~%AJANTIS_BANTER%~ @20
== ~%CORAN_BANTER%~ @21
== ~%AJANTIS_BANTER%~ @22
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AJCOConflict","GLOBAL",8)~ THEN ~%CORAN_BANTER%~ AJCOChallenge4
@23
DO ~SetGlobal("X#AJCOConflict","GLOBAL",9)~
== ~%AJANTIS_BANTER%~ @24
== ~%CORAN_BANTER%~ @25
== ~%AJANTIS_BANTER%~ @26
== ~%CORAN_BANTER%~ @27
== ~%AJANTIS_BANTER%~ @28
== ~%CORAN_BANTER%~ @29
= @30
== ~%AJANTIS_BANTER%~ @31
== ~%CORAN_BANTER%~ @32
EXIT

/* Now, we get our Challenge Master and this is the body of the challenge */

BEGIN X#MASTE

APPEND X#MASTE

IF ~NumTimesTalkedTo(0)~ THEN BEGIN ChallengeMasterSpeech
SAY @33
= @34
= @35
= @36
++ @37 DO ~SetGlobal("X#AjantisCoranChallenge","GLOBAL",1)~ + Rules
+ ~CheckStatLT(Player1,15,INT)~ + @38 DO ~SetGlobal("X#AjantisCoranChallenge","GLOBAL",1)~ + MasterPlain
++ @39 DO ~SetGlobal("X#AjantisCoranChallenge","GLOBAL",1)~ + AjantisPrize1
++ @40 DO ~SetGlobal("X#AjantisCoranChallenge","GLOBAL",1)~ + CoranPrize1
+ ~InParty("xan") Global("X#XANMatch","GLOBAL",1) !Global("X#XARomanceInactive","GLOBAL",1)~ +  @41  DO ~SetGlobal("X#AjantisCoranChallenge","GLOBAL",1)~ + XanPrize1
+ ~InParty("xan") Global("X#XANMatch","GLOBAL",1) !Global("X#XARomanceInactive","GLOBAL",1)  Global("X#AskAboutXan","GLOBAL",0)~ +  @42  DO ~SetGlobal("X#AjantisCoranChallenge","GLOBAL",1) SetGlobal("X#AskAboutXan","GLOBAL",1)~ + XanAsk1
++ @43 + SetChallenge
END

IF ~~ XanAsk1
SAY @44 
= @45
++ @37 + Rules
+ ~CheckStatLT(Player1,15,INT)~ + @38 + MasterPlain
++ @39 + AjantisPrize1
++ @40 + CoranPrize1
+ ~InParty("xan") Global("X#XANMatch","GLOBAL",1) 
!Global("X#XARomanceInactive","GLOBAL",1)~ +  @41 + XanPrize1
++ @43 + SetChallenge
END


IF ~~ Rules
SAY @46
= @47
= @48
= @49
++ @50 + AjantisPrize1
++ @51 + CoranPrize1
+ ~InParty("xan") Global("X#XANMatch","GLOBAL",1) 
!Global("X#XARomanceInactive","GLOBAL",1)~ +  @41 + XanPrize1
+ ~InParty("xan") Global("X#XANMatch","GLOBAL",1) 
!Global("X#XARomanceInactive","GLOBAL",1)  Global("X#AskAboutXan","GLOBAL",0)~ +  @42  DO ~SetGlobal ("X#AskAboutXan","GLOBAL",1)~ + XanAsk1
++ @43 + SetChallenge
++ @52 + NoCourtship
END

IF ~~ AjantisPrize1
SAY @53
IF ~~ THEN DO ~SetGlobal("X#MaleChallengeDone","GLOBAL",1) SetGlobal("X#AjantisCoranChallenge","GLOBAL",2) SetGlobal("P#CoranRomanceInactive","GLOBAL",1) ActionOverride("X#MASTE",EscapeArea()) ActionOverride("X#MASTE",DestroySelf()) RestParty()~ EXIT
END

IF ~~ CoranPrize1
SAY @54
IF ~~ THEN DO ~SetGlobal("X#MaleChallengeDone","GLOBAL",1) SetGlobal("X#AjantisCoranChallenge","GLOBAL",2) SetGlobal("X#AjantisRomanceActive","GLOBAL",3) ActionOverride("X#MASTE",EscapeArea()) ActionOverride("X#MASTE",DestroySelf()) RestParty()~ EXIT
END

IF ~~ XanPrize1
SAY @55
IF ~~ THEN DO ~SetGlobal("X#MaleChallengeDone","GLOBAL",1) SetGlobal("X#AjantisCoranChallenge","GLOBAL",2) SetGlobal("P#CoranRomanceInactive","GLOBAL",1) SetGlobal("X#AjantisRomanceActive","GLOBAL",3) ActionOverride("X#MASTE",EscapeArea()) ActionOverride("X#MASTE",DestroySelf()) RestParty()~ EXIT
END

IF ~~ NoCourtship
SAY @56
IF ~~ THEN DO ~SetGlobal("X#MaleChallengeDone","GLOBAL",1) SetGlobal("X#AjantisCoranChallenge","GLOBAL",2) SetGlobal("P#CoranRomanceInactive","GLOBAL",1) SetGlobal("X#AjantisRomanceActive","GLOBAL",3)  ActionOverride("X#MASTE",EscapeArea()) ActionOverride("X#MASTE",DestroySelf()) RestParty()~ EXIT
END

IF ~~ NoCourtshipAtAll
SAY @57
IF ~~ THEN DO ~SetGlobal("X#MaleChallengeDone","GLOBAL",1) SetGlobal("X#AjantisCoranChallenge","GLOBAL",2) SetGlobal("P#CoranRomanceInactive","GLOBAL",1) SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#XARomanceInactive","GLOBAL",1) ActionOverride("X#MASTE",EscapeArea()) ActionOverride("X#MASTE",DestroySelf()) RestParty()~ EXIT
END


IF ~~ MasterPlain
SAY @58
++ @59 + Rules
++ @60 + AjantisPrize1
++ @61 + CoranPrize1
+ ~InParty("xan") Global("X#XANMatch","GLOBAL",1) 
!Global("X#XARomanceInactive","GLOBAL",1)~ +  @41 + XanPrize1
+ ~InParty("xan") Global("X#XANMatch","GLOBAL",1) 
!Global("X#XARomanceInactive","GLOBAL",1)  Global("X#AskAboutXan","GLOBAL",0)~ +  @42  DO ~SetGlobal ("X#AskAboutXan","GLOBAL",1)~ + XanAsk1
END

IF ~NumTimesTalkedToGT(0) !Global("X#FightGift","GLOBAL",2) !Global("X#FightChallenge","GLOBAL",3) !Global("X#FightTale","GLOBAL",3) !Global("X#FightDragon","GLOBAL",4) OR(4) Global("X#FightTale","GLOBAL",0)  Global("X#FightGift","GLOBAL",0) Global("X#FightChallenge","GLOBAL",0) Global("X#FightDragon","GLOBAL",0)~ SetChallenge
SAY @62
+ ~Global("X#FightChallenge","GLOBAL",0)~ + @63 + Fight1
+ ~GlobalGT("X#FightChallenge","GLOBAL",0)~ + @63 + Fight2
+ ~Global("X#FightTale","GLOBAL",0)~ + @64 + Tale1
+ ~GlobalGT("X#FightTale","GLOBAL",0)~ + @64 + Tale2
+ ~Global("X#FightGift","GLOBAL",0)~ + @65 + Gift1
+ ~GlobalGT("X#FightGift","GLOBAL",0)~ + @65 + Gift2
+ ~Global("X#FightDragon","GLOBAL",0)~ + @66 + Dragon1
+ ~GlobalGT("X#FightDragon","GLOBAL",0)~ + @66 + Dragon2
++ @67 + AjantisPrize1
++ @68 + CoranPrize1
++ @52 + NoCourtship

END 

IF ~~ Fight1
SAY @69
IF ~~ THEN DO ~SetGlobal("X#FightChallenge","GLOBAL",1)~ EXIT
END

IF ~Global("X#FightChallenge","GLOBAL",3)~ THEN BEGIN CoranFightChallenegeNow
SAY @70
IF ~~ THEN DO ~SetGlobal("X#FightChallenge","GLOBAL",4)~ EXIT
END

IF ~Global("X#FightTale","GLOBAL",3)~ THEN BEGIN CoranTaleChallenegeNow
SAY @70
IF ~~ THEN DO ~SetGlobal("X#FightTale","GLOBAL",4)~ EXIT
END

IF ~~ Fight2
SAY @71
+ ~Global("X#FightTale","GLOBAL",0)~ + @64 + Tale1
+ ~Global("X#FightTale","GLOBAL",1)~ + @64 + Tale2
+ ~Global("X#FightGift","GLOBAL",0)~ + @65 + Gift1
+ ~GlobalGT("X#FightGift","GLOBAL",0)~ + @65 + Gift2
+ ~Global("X#FightDragon","GLOBAL",0)~ + @66 + Dragon1
+ ~GlobalGT("X#FightDragon","GLOBAL",0)~ + @66 + Dragon2
++ @67 + AjantisPrize1
++ @68 + CoranPrize1
++ @52 + NoCourtship
END

IF ~~ Tale1
SAY @72
IF ~~ THEN DO ~SetGlobal("X#FightTale","GLOBAL",1)~ EXIT
END

IF ~~ Tale2
SAY @71
+ ~Global("X#FightChallenge","GLOBAL",0)~ + @63 + Fight1
+ ~GlobalGT("X#FightChallenge","GLOBAL",0)~ + @63 + Fight2
+ ~Global("X#FightGift","GLOBAL",0)~ + @65 + Gift1
+ ~GlobalGT("X#FightGift","GLOBAL",0)~ + @65 + Gift2
+ ~Global("X#FightDragon","GLOBAL",0)~ + @66 + Dragon1
+ ~GlobalGT("X#FightDragon","GLOBAL",0)~ + @66 + Dragon2
++ @73 + AjantisPrize1
++ @74 + CoranPrize1
+ ~InParty("xan") Global("X#XANMatch","GLOBAL",1)
!Global("X#XARomanceInactive","GLOBAL",1)~ +  @75 + XanPrize1
++ @52 + NoCourtship
+ ~ InParty("xan") Global("X#XANMatch","GLOBAL",1) 
!Global("X#XARomanceInactive","GLOBAL",1)~ + @76 + NoCourtshipAtAll
END

IF ~~ Gift1
SAY @77
IF ~~ THEN DO ~SetGlobal("X#FightGift","GLOBAL",1)~ EXTERN ~%CORAN_JOINED%~ X#CoranChallengeGift
END

IF ~Global("X#FightGift","GLOBAL",2)~ THEN BEGIN AjantisGiftExtern
SAY @78
IF ~~ THEN DO ~SetGlobal("X#FightGift","GLOBAL",3) SetGlobal("X#AjantisProtect","GLOBAL",2)~ EXTERN ~%AJANTIS_JOINED%~ ajcochal_gift
END

IF ~Global("X#FightDragon","GLOBAL",4)~ THEN BEGIN AjantisDragonExtern
SAY @78
IF ~~ THEN DO ~SetGlobal("X#AjantisDragon","GLOBAL",2) SetGlobal("X#FightDragon","GLOBAL",8)~ EXTERN ~%AJANTIS_JOINED%~ ajcochal_dragon
END

IF ~~ Gift2
SAY @71
+ ~Global("X#FightTale","GLOBAL",0)~ + @64 + Tale1
+ ~GlobalGT("X#FightTale","GLOBAL",0)~ + @64 + Tale2
+ ~Global("X#FightGift","GLOBAL",0)~ + @65 + Gift1
+ ~GlobalGT("X#FightGift","GLOBAL",0)~ + @65 + Gift2
+ ~Global("X#FightDragon","GLOBAL",0)~ + @66 + Dragon1
+ ~GlobalGT("X#FightDragon","GLOBAL",0)~ + @66 + Dragon2
++ @67 + AjantisPrize1
++ @68 + CoranPrize1
++ @52 + NoCourtship
END

IF ~~ Dragon1
SAY @79
IF ~~ THEN EXTERN ~%CORAN_JOINED%~ X#CoranChallengeDragon
END

IF ~~ Dragon2
SAY @71
+ ~Global("X#FightTale","GLOBAL",0)~ + @64 + Tale1
+ ~GlobalGT("X#FightTale","GLOBAL",0)~ + @64 + Tale2
+ ~Global("X#FightGift","GLOBAL",0)~ + @65 + Gift1
+ ~GlobalGT("X#FightGift","GLOBAL",0)~ + @65 + Gift2
+ ~Global("X#FightChallenge","GLOBAL",0)~ + @63 + Fight1
+ ~GlobalGT("X#FightChallenge","GLOBAL",0)~ + @63 + Fight2
++ @67 + AjantisPrize1
++ @68 + CoranPrize1
++ @52 + NoCourtship
END

//Finale

IF ~ GlobalGT("X#FightTale","GLOBAL",0)  GlobalGT("X#FightGift","GLOBAL",0) GlobalGT("X#FightChallenge","GLOBAL",0) GlobalGT("X#FightDragon","GLOBAL",0)~ THEN BEGIN ChallengeFinale
SAY @80
++ @73 + AjantisPrize1
++ @74 + CoranPrize1
+ ~InParty("xan") Global("X#XANMatch","GLOBAL",1)
!Global("X#XARomanceInactive","GLOBAL",1)~ +  @75 + XanPrize1
++ @52 + NoCourtship
+ ~ InParty("xan") Global("X#XANMatch","GLOBAL",1) 
!Global("X#XARomanceInactive","GLOBAL",1)~ + @76 + NoCourtshipAtAll
END

END

/* Coran's Dialogues */

BEGIN ~X#ELHAN~
BEGIN ~X#ELLES~

APPEND ~%CORAN_JOINED%~

/* Entertainment */

IF WEIGHT #-2 ~Global("X#FightTale","GLOBAL",5)~ THEN BEGIN CoranEntertain1
SAY @81
IF ~~ THEN DO ~SetGlobal("X#FightTale","GLOBAL",6) ClearAllActions() StartCutScene("X#CHALL5") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#FightTale","GLOBAL",6)~ THEN BEGIN CoranEntertain2
SAY @82
IF ~~ THEN DO ~ClearAllActions() StartCutScene("X#CHAL11") StartCutSceneMode()~ EXIT
END

/* Gift */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#FightGift","GLOBAL",1)~ THEN BEGIN X#CoranChallengeGift
SAY @83
=@84
=@85
=@86
=@87
=@88
IF ~~ THEN DO ~SetGlobal("X#FightGift","GLOBAL",2) GiveItemCreate("X#MIRC",Player1,1,0,0)~ EXIT
END

END

/* Entertainment Chains */

CHAIN IF WEIGHT #-2 ~%BGT_VAR% NumTimesTalkedTo(0)~ THEN ~X#ELHAN~ CoranEntertain3
@89
== ~%CORAN_JOINED%~ @90
== ~X#ELHAN~ @91
== ~%CORAN_JOINED%~ @92
== ~X#ELHAN~ @93
== ~%CORAN_JOINED%~ @94
END
IF ~~ THEN DO ~SetGlobal("X#FightTale","GLOBAL",8) ClearAllActions() StartCutScene("X#CHAL13") StartCutSceneMode()~ EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#FightTale","GLOBAL",8)~ THEN ~X#ELLES~ CoranEntertain4
@95
== ~X#ELHAN~ @96
== ~X#ELLES~ @97
== ~X#ELHAN~ @98
== ~X#ELLES~ @99 
== ~X#ELHAN~ @100
== ~X#ELLES~ @101
== ~X#ELHAN~ @102 
== ~X#ELLES~ @103 //Dramatic Irony.  Lovely. :)
== ~X#ELHAN~ IF ~Race(Player1,ELF)~ THEN @104
== ~X#ELHAN~ IF ~!Race(Player1,ELF)~ THEN @105
== ~X#ELLES~ @106
== ~X#ELHAN~ @107
== ~X#ELLES~ @108 
== ~X#ELHAN~ @109
END
IF ~~ THEN DO ~SetGlobal("X#FightTale","GLOBAL",9) ClearAllActions() StartCutScene("X#CHAL12") StartCutSceneMode()~ EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#FightTale","GLOBAL",9)~ THEN ~X#ELLES~ CoranEntertain5
@110
== ~%CORAN_JOINED%~ @111
== ~X#ELLES~ @112

== ~%CORAN_JOINED%~ @113
== ~X#ELLES~ @114 
== ~%CORAN_JOINED%~ @115
== ~X#ELLES~ @116
== ~%CORAN_JOINED%~ @117
== ~X#ELLES~ @118 
== ~%CORAN_JOINED%~ @119
== ~X#ELLES~ @120
END
IF ~~ THEN DO ~SetGlobal("X#FightTale","GLOBAL",10) ActionOverride("X#ELLES",EscapeArea()) ActionOverride("X#ELLES",DestroySelf()) ClearAllActions() StartCutScene("X#CHALL6") StartCutSceneMode()~ EXIT

/* Dragon Challenge */

APPEND ~%CORAN_JOINED%~

IF ~~ X#CoranChallengeDragon
SAY @121
=@122
IF ~~ THEN DO ~SetGlobal("X#FightDragon","GLOBAL",1) ClearAllActions() StartCutScene("X#CHALL7") StartCutSceneMode()~ EXIT
END

END

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#FightDragon","GLOBAL",1)~ THEN ~%CORAN_JOINED%~ CoranMeetsDragon
@123
== X#CAUTZ @124
== ~%CORAN_JOINED%~ @125
== X#CAUTZ @126
== ~%CORAN_JOINED%~ @127
== X#CAUTZ @128
== ~%CORAN_JOINED%~ @129
= @130
== ~%CORAN_JOINED%~ @131
== X#CAUTZ @132
== ~%CORAN_JOINED%~ @133
== X#CAUTZ @134
== ~%CORAN_JOINED%~ @135
== ~%CORAN_JOINED%~ @136

END
++ @137 + COCHFight
++ @138 + COCHHow
++ @139 + COCHPoor
++ @140 + COCHFight1
++ @141 + COCHRats
++ @142 + COCHFight
++ @143 + COCHKinky

CHAIN ~%CORAN_JOINED%~ COCHFight
@144
== X#CAUTZ @145
== ~%CORAN_JOINED%~ @146
END
IF ~~ THEN DO ~SetGlobal("X#FightDragon","GLOBAL",2) ActionOverride("X#CAUTZ",Enemy())~ EXIT

APPEND ~%CORAN_JOINED%~ 

IF WEIGHT #-2 ~%BGT_VAR% Global("X#FightDragon","GLOBAL",3) Dead("X#CAUTZ")~ THEN BEGIN CoranKilledDragon
SAY @147
++ @148 + COCHHero
++ @149 + COCHFlimsy
++ @150 + COCHFlimsy
END

IF ~~ COCHHero
SAY @151
= @152
IF ~~ THEN DO ~SetGlobal("X#FightDragon","GLOBAL",4) ClearAllActions() StartCutScene("X#CHALL9") StartCutSceneMode()~ EXIT
END

IF ~~ COCHFlimsy
SAY @153
+ ~!Race(Player1,ELF)~ + @154 + COCHKing
+ ~Race(Player1,ELF)~ + @155 + COCHKing
++ @156 + COCHWell
END

IF ~~ COCHKing
SAY @157
= @158
IF ~~ THEN GOTO COCHHero
END

IF ~~ COCHWell
SAY @159
= @160
= @158
IF ~~ THEN GOTO COCHHero
END

IF ~~ COCHHow
SAY @161 
++ @139 + COCHPoor
++ @140 + COCHFight1
++ @162 + COCHRats
++ @163 + COCHFight
++ @143 + COCHKinky
END

IF ~~ COCHKinky
SAY @164
++ @165 + COCHFight
END

IF ~~ COCHFight1
SAY @166
IF ~~ THEN GOTO COCHFight
END

IF ~~ COCHRats
SAY @167 
++ @139 + COCHPoor
++ @140 + COCHFight1
++ @163 + COCHFight
END

END

CHAIN ~%CORAN_JOINED%~ COCHPoor
@168
= @169
== X#CAUTZ @170
END
IF ~~ THEN DO ~SetGlobal("X#FightDragon","GLOBAL",5) ClearAllActions() StartCutScene("X#CHAL10") StartCutSceneMode()~ EXIT


CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#FightDragon","GLOBAL",6)~ THEN X#DRAG2 CoranMeetsHusbandDragon
@171
== ~%CORAN_JOINED%~ @172
= @173
== X#CAUTZ @174
== X#DRAG2 @175 
== ~%CORAN_JOINED%~ @176 
END
IF ~~ THEN DO ~SetGlobal("X#FightDragon","GLOBAL",4) ClearAllActions() StartCutScene("X#CHALL9") StartCutSceneMode()~ EXIT

/* Ajantis Texts */

BEGIN ~X#AJDRSI~
APPEND ~%AJANTIS_JOINED%~

/* entertain me */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisEntertain","GLOBAL",2) Global("X#AjantisCoChalEntertain","GLOBAL",0)~ THEN ajcochal_entertain
SAY @177
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalEntertain","GLOBAL",1) StartCutScene("X#AJRCU7") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisCoChalEntertain","GLOBAL",1)~ THEN ajcochal_entertain_01
SAY @178
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalEntertain","GLOBAL",2) StartCutScene("X#AJRCU6") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisCoChalEntertain","GLOBAL",2)~ THEN ajcochal_entertain_01
SAY @179
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalEntertain","GLOBAL",3) ClearAllActions() StartCutScene("X#AJRCU8") StartCutSceneMode()~ EXIT
END


/* present */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisProtect","GLOBAL",2) Global("X#AjantisCoChalGift","GLOBAL",0)~ THEN ajcochal_gift
SAY @180
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalGift","GLOBAL",1) ClearAllActions() StartCutScene("X#AJRCUT") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisCoChalGift","GLOBAL",1)~ THEN ajcochal_gift_01
SAY @181
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalGift","GLOBAL",2)~ EXIT
END

/* dragon */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisDragon","GLOBAL",2) Global("X#AjantisCoChalDragon","GLOBAL",0)~ THEN ajcochal_dragon
SAY @182
= @183
= @184
= @185
IF ~~ THEN DO ~SetGlobal("X#AjantisDragon","GLOBAL",3) SetGlobal("X#AjantisRomanceSilverDragon","GLOBAL",1) SetGlobal("X#AjantisCoChalDragon","GLOBAL",1) ClearAllActions() StartCutScene("X#AJRCU2") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceSilverGone","GLOBAL",1)~ THEN silverdragon_gone
SAY @186 
= @187
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceRedDragon","GLOBAL",1) SetGlobal("X#AjantisRomanceSilverGone","GLOBAL",2) ClearAllActions() StartCutScene("X#AJRCU4") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceRedDragon","GLOBAL",1)~ THEN reddragon
SAY @188
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceRedDragon","GLOBAL",2) ClearAllActions() StartCutScene("X#AJRCU5") StartCutSceneMode()~ EXIT
END

END

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceSilverDragon","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ silverdragon
@189 DO ~SetGlobal("X#AjantisRomanceSilverDragon","GLOBAL",2)~
== ~X#AJDRSI~ @190
== ~%AJANTIS_JOINED%~ @191
= @192
== ~X#AJDRSI~ @193 DO ~SetGlobal("X#AjantisRomanceSilverGone","GLOBAL",1) ClearAllActions() StartCutScene("X#AJRCU3") StartCutSceneMode()~ 
EXIT

