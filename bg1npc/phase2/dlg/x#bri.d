/* REPLACEMENTS */

REPLACE_SAY ~%CORAN_JOINED%~ %BGTCORANJState4% @0

REPLACE_SAY ~%tutu_var%BRIELB~ 14 @1
ALTER_TRANS ~%tutu_var%BRIELB~ BEGIN 14 END BEGIN END BEGIN ACTION ~SetGlobal("P#Briel_Stay","GLOBAL",1) RealSetGlobalTimer("X#BriLostPatience","GLOBAL",1800)~ END

/* RETAINED - can't see another way to code it without a messy E_B-fest*/
REPLACE ~%tutu_var%BRIELB~
IF ~Global("HelpBrielbara","GLOBAL",1)~ THEN BEGIN 16 // from:
SAY @2
IF ~Global("P#CoranBaby","GLOBAL",2) Global("P#Briel_Stay","GLOBAL",1) InParty("coran")~ THEN DO ~SetGlobal("X#BriFinale","GLOBAL",1)~ GOTO returnBriel
IF ~GlobalLT("P#CoranBaby","GLOBAL",2) Global("P#Briel_Stay","GLOBAL",1) InParty("coran")~ THEN DO ~SetGlobal("X#BriFinale","GLOBAL",1)~ GOTO NamaraCor
IF ~Global("P#Briel_Stay","GLOBAL",2) InParty("coran")~ THEN DO ~SetGlobal("X#BriFinale","GLOBAL",1)~ GOTO BrielCurse
IF ~Global("P#Briel_Stay","GLOBAL",3)~ THEN DO ~SetGlobal("X#BriFinale","GLOBAL",1)~ GOTO CoranStay
IF ~Global("P#Briel_Stay","GLOBAL",1) !InParty("coran")~ THEN DO ~SetGlobal("X#BriFinale","GLOBAL",1)~ EXIT
IF ~!Global("P#Briel_Stay","GLOBAL",1) !InParty("coran")~ THEN DO ~SetGlobal("X#BriFinale","GLOBAL",1)~ EXIT
IF ~GlobalGT("P#Briel_Stay","GLOBAL",1)~ THEN DO ~SetGlobal("X#BriFinale","GLOBAL",1)~ EXIT
END
END

/* NEW CONTENT */

//GLOBAL BRIEL_STAY 1 - Briel is waiting to be talked to//
//GLOBAL BRIEL_STAY 2 - Coran turned CN need script to make Briel leave//
//GLOBAL BRIEL_STAY 3 - Coran left party need script to make Briel leave//
//GLOBAL BRIEL_STAY 4 - talked to Briel again and took Baby//
//GLOBAL CoranHasBaby 1 - for banters//
//Timer ReturnNamara for >3 weeks is for the romance//
//GLOBAN CoranRomancePath 3 sets the romance to CN path//
//ITEMS: X#CBOOK -guide to parenthood, X#CBABY - Namara, X#CMILK -everlasting milk bottles, X#COBAG -potion case//

APPEND ~%CORAN_JOINED%~

/* CoranReturnsBabyNotInRomance */
/* Script from X#CORAN1.baf */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CNRBabeBack","GLOBAL",1)~ THEN BEGIN CNRBabeBack
SAY @3 
= @4
IF ~~ THEN DO ~LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",1) SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) SetGlobal("P#CNRBabeBack","GLOBAL",2) SetGlobal("P#CoranMoves","GLOBAL",4) SetGlobalTimer("P#Alimony","GLOBAL",604800)~
/* Goes to "CoranLeavesParty" in X#Coran1.baf */ 
EXIT
END
END


APPEND ~%CORAN_POST%~
/* Coran's rejoining dialogue */
/* From Phase 2 P#RS0103.baf */
IF WEIGHT #-100 ~%BGT_VAR% Global("P#CoranMoves","GLOBAL",6)~ THEN BEGIN CNRBack
SAY @5
IF ~~ THEN DO ~SetGlobal("P#CoranMoves","GLOBAL",7) JoinParty()~
EXIT
END
END

APPEND ~%CORAN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("P#CoranBaby","GLOBAL",1)~ THEN BEGIN CORANBABY
SAY @6 
IF ~~ THEN REPLY @7 DO ~SetGlobal("P#CoranBaby","GLOBAL",2) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO CB_1.1
IF ~~ THEN REPLY @8 DO ~SetGlobal("P#CoranBaby","GLOBAL",2) SetGlobal("P#CoranRepeat","GLOBAL",1) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO CB_1.2
IF ~~ THEN REPLY @9 DO ~SetGlobal("P#CoranBaby","GLOBAL",2) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO CB_1.3
END

IF ~~ THEN BEGIN CB_1.1
SAY @10
IF ~~ THEN REPLY @11 GOTO CB_1.4
IF ~~ THEN REPLY @12 GOTO CB_1.5
IF ~~ THEN REPLY @13 GOTO CB_1.6
END

IF ~~ THEN BEGIN CB_1.3
SAY @14
IF ~~ THEN REPLY @11 GOTO CB_1.4
IF ~~ THEN REPLY @12 GOTO CB_1.5
IF ~~ THEN REPLY @15 GOTO CB_1.6
END

IF ~~ THEN BEGIN CB_1.2
SAY @16
IF ~~ THEN DO ~SetGlobal("P#CoranRepeat","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CB_1.4
SAY @17
IF ~~ THEN DO ~SetGlobal("P#CoranWillComplain","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CB_1.5
SAY @18
IF ~~ THEN DO ~ReputationInc(-1) ChangeAlignment("coran",CHAOTIC_NEUTRAL) SetGlobal("P#Briel_Stay","GLOBAL",2) SetGlobal("P#Briel_Stay","GLOBAL",2) SetGlobal("P#CoranRomancePath","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN CB_1.6
SAY @19
IF ~~ THEN DO ~SetGlobal("P#Briel_Stay","GLOBAL",3) ReputationInc(-1) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("P#CBABY_AGAIN","GLOBAL",1)~ THEN BEGIN CBABY_SECOND
SAY @20 
IF ~~ THEN REPLY @7 DO ~SetGlobal("P#CBABY_AGAIN","GLOBAL",2)~ GOTO DCB_1.1
IF ~~ THEN REPLY @9 DO ~SetGlobal("P#CBABY_AGAIN","GLOBAL",2)~ GOTO DCB_1.3
END

IF ~~ THEN BEGIN DCB_1.1
SAY @10
IF ~~ THEN REPLY @11 GOTO DCB_1.4
IF ~~ THEN REPLY @12 GOTO DCB_1.5
IF ~~ THEN REPLY @21 GOTO DCB_1.6
END

IF ~~ THEN BEGIN DCB_1.3
SAY @14
IF ~~ THEN REPLY @11 GOTO DCB_1.4
IF ~~ THEN REPLY @12 GOTO DCB_1.5
IF ~~ THEN REPLY @15 GOTO DCB_1.6
END

IF ~~ THEN BEGIN DCB_1.4
SAY @17
IF ~~ THEN DO ~SetGlobal("P#CoranWillComplain","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN DCB_1.5
SAY @18
IF ~~ THEN DO ~ReputationInc(-1) ChangeAlignment("coran",CHAOTIC_NEUTRAL) SetGlobal("P#Briel_Stay","GLOBAL",2) SetGlobal("P#CoranRomancePath","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN DCB_1.6
SAY @19
IF ~~ THEN DO ~SetGlobal("P#Briel_Stay","GLOBAL",3) ReputationInc(-1) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("P#Briel_Stay","GLOBAL",1) Global("P#CB_COMPLAINS","GLOBAL",1)~ THEN BEGIN CB_COMPLAINT
SAY @22 
IF ~~ THEN REPLY @23 DO ~SetGlobal("P#CB_COMPLAINS","GLOBAL",2)~ GOTO CB_2.1
IF ~~ THEN REPLY @24 DO ~SetGlobal("P#CB_COMPLAINS","GLOBAL",2)~ GOTO CB_2.2
IF ~~ THEN REPLY @21 DO ~SetGlobal("P#CB_COMPLAINS","GLOBAL",2)~ GOTO CB_2.3
END

IF ~~ THEN BEGIN CB_2.1
SAY @17
IF ~~ THEN DO ~SetGlobal("P#CoranWillQuit","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CB_2.2
SAY @18
IF ~~ THEN DO ~ReputationInc(-1) ChangeAlignment("coran",CHAOTIC_NEUTRAL) SetGlobal("P#Briel_Stay","GLOBAL",2) SetGlobal("P#Briel_Stay","GLOBAL",2) SetGlobal("P#CoranRomancePath","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN CB_2.3
SAY @21
IF ~~ THEN DO ~SetGlobal("P#Briel_Stay","GLOBAL",3) ReputationInc(-1) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("P#CB_QUITS","GLOBAL",1)~ THEN BEGIN CB_QUITS
SAY @25 
IF ~~ THEN DO ~SetGlobal("P#CB_QUITS","GLOBAL",2) SetGlobal("P#Briel_Stay","GLOBAL",3) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN CoranRun
SAY @26
IF ~~ THEN DO ~SetGlobal("P#CoranHasBaby","GLOBAL",1) SetGlobalTimer("P#ReturnNamara","GLOBAL",151500)~ EXIT
END

IF ~~ THEN BEGIN Grumbles
SAY @27
IF ~~ THEN DO ~SetGlobal("P#CoranHasBaby","GLOBAL",1) SetGlobalTimer("P#ReturnNamara","GLOBAL",151500)~ EXIT
END

IF ~~ THEN BEGIN Lover
SAY @28
IF ~~ THEN DO ~SetGlobal("P#CoranHasBaby","GLOBAL",1) SetGlobalTimer("P#ReturnNamara","GLOBAL",151500)~ EXIT
END

IF ~~ THEN BEGIN CoranMumbles
SAY @29
IF ~~ THEN DO ~SetGlobal("P#CoranPrompted","GLOBAL",1)~ EXTERN ~%tutu_var%BRIELB~ BrielCurse
END

IF ~~ THEN BEGIN CoranSigh
SAY @30
IF ~~ THEN EXIT
END

END

APPEND ~%tutu_var%BRIELB~
IF ~%BGT_VAR% Global("P#Briel_Stay","GLOBAL",1) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN BEGIN returnBriel
SAY @31
IF ~~ THEN EXTERN ~%CORAN_JOINED%~ CBaby_Chain
END

IF ~~ THEN BEGIN BRIEL_PC
SAY @32
IF ~~ THEN REPLY @33 DO ~SetGlobal("P#Briel_Stay","GLOBAL",4) GiveItemCreate("X#CBABY","coran",1,0,0) GiveItemCreate("X#CBOOK","coran",1,0,0) GiveItemCreate("X#COBAG","coran",1,0,0) GiveItemCreate("X#CMILK","coran",1,0,0)~ EXTERN ~%CORAN_JOINED%~ CoranRun
IF ~~ THEN REPLY @34 DO ~SetGlobal("P#Briel_Stay","GLOBAL",4) GiveItemCreate("X#CBABY","coran",1,0,0) GiveItemCreate("X#CBOOK","coran",1,0,0) GiveItemCreate("X#COBAG","coran",1,0,0) GiveItemCreate("X#CMILK","coran",1,0,0)~ EXTERN ~%CORAN_JOINED%~ CoranRun
IF ~~ THEN REPLY @35 DO ~SetGlobal("P#Briel_Stay","GLOBAL",4) GiveItemCreate("X#CBABY","coran",1,0,0) GiveItemCreate("X#CBOOK","coran",1,0,0) GiveItemCreate("X#COBAG","coran",1,0,0) GiveItemCreate("X#CMILK","coran",1,0,0)~ EXTERN ~%CORAN_JOINED%~ Grumbles
IF ~Global("P#CoranRomancePath","GLOBAL",1)~ THEN REPLY @36 DO ~SetGlobal("P#Briel_Stay","GLOBAL",4) GiveItemCreate("X#CBABY","coran",1,0,0) GiveItemCreate("X#CBOOK","coran",1,0,0) GiveItemCreate("X#COBAG","coran",1,0,0) GiveItemCreate("X#CMILK","coran",1,0,0)~ EXTERN ~%CORAN_JOINED%~ Lover
+ ~PartyGoldGT("10001")~ + @37 DO ~GiveGoldForce(-10000)~ GOTO OhMine
END

IF ~~ OhMine
SAY @38
= @39
IF ~~ THEN DO ~SetGlobal("P#Briel_Stay","GLOBAL",5) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN NamaraCor
SAY @40
IF ~~ THEN EXTERN ~%CORAN_JOINED%~ CoranMumbles
END

IF ~~ THEN BEGIN BrielCurse
SAY @41
IF ~~ THEN EXTERN ~%CORAN_JOINED%~ CoranSigh
END

IF ~~ THEN BEGIN CoranStay
SAY @42
IF ~~ THEN EXIT
END

END

CHAIN3 ~%CORAN_JOINED%~ CBaby_Chain
@43
== ~%tutu_var%BRIELB~ @44
== ~%CORAN_JOINED%~ @45
== ~%tutu_var%BRIELB~ @46
== ~%CORAN_JOINED%~ @47
== ~%tutu_var%BRIELB~ @48
== ~%CORAN_JOINED%~ @49
== ~%tutu_var%BRIELB~ @50
== ~%CORAN_JOINED%~ @51
== ~%tutu_var%BRIELB~ @52
== ~%CORAN_JOINED%~ @53
== ~%tutu_var%BRIELB~ @54
== ~%CORAN_JOINED%~ @55
== ~%tutu_var%BRIELB~ @56
== ~%CORAN_JOINED%~ @57
== ~%tutu_var%BRIELB~ @58
== ~%CORAN_JOINED%~ @59
== ~%tutu_var%BRIELB~ @60
END ~%tutu_var%BRIELB~ BRIEL_PC
