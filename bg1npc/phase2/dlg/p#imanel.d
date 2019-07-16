BEGIN P#IMANEL

APPEND P#IMANEL
/* If talked before Kivan is around */
IF ~OR(3) !InParty("kivan") !InMyArea("kivan") StateCheck("kivan",CD_STATE_NOTVALID) Global("P#EMMAFight","GLOBAL",0)~ THEN BEGIN EmmaW
SAY @1
IF ~~ THEN EXIT
END

/* if talked to when Kivan is present */
IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("P#EMMAFight","GLOBAL",1)~ THEN BEGIN EmmaQ
SAY @0
IF ~~ THEN DO ~SetGlobal("P#EMMAFight","GLOBAL",2)~ EXTERN ~%KIVAN_JOINED%~ EMKIBigChain
END

IF ~Global("P#EMMAFight","GLOBAL",5) Dead("kivan")~ THEN BEGIN EmmaKivDead
SAY @2
IF ~~ THEN REPLY @3 GOTO JoinNow
IF ~~ THEN REPLY @4 GOTO EmmaReward
IF ~Race(Player1,ELF)~ THEN REPLY @5 GOTO FarewellElf
IF ~!Race(Player1,ELF)~ THEN REPLY @5 GOTO FarewellNotElf
END

IF ~~ THEN BEGIN JoinNow
SAY @6
IF ~~ THEN REPLY @4 GOTO EmmaReward
IF ~~ THEN REPLY @7 GOTO FarewellNotElf
END

IF ~~ THEN BEGIN FarewellElf
SAY @8
IF ~~ THEN DO ~ReputationInc(-4)
SetGlobal("P#EMMAFight","GLOBAL",7)
ActionOverride("P#IMANEL",EscapeArea())
ActionOverride("P#WOLF01",EscapeArea())
ActionOverride("P#WOLF02",EscapeArea())
ActionOverride("P#WOLF03",EscapeArea())
ActionOverride("P#WOLF04",EscapeArea())
ActionOverride("P#WOLF05",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN FarewellNotElf
SAY @9
IF ~~ THEN DO ~ReputationInc(-4)
SetGlobal("P#EMMAFight","GLOBAL",7)
ActionOverride("P#IMANEL",EscapeArea())
ActionOverride("P#WOLF01",EscapeArea())
ActionOverride("P#WOLF02",EscapeArea())
ActionOverride("P#WOLF03",EscapeArea())
ActionOverride("P#WOLF04",EscapeArea())
ActionOverride("P#WOLF05",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN EmmaReward
SAY @10
IF ~~ THEN DO ~ReputationInc(-4)
SetGlobal("P#EMMAFight","GLOBAL",7)
ActionOverride("P#WOLF01",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF02",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF03",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF04",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF05",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF01",Enemy())
ActionOverride("P#WOLF02",Enemy())
ActionOverride("P#WOLF03",Enemy())
ActionOverride("P#WOLF04",Enemy())
ActionOverride("P#WOLF05",Enemy())
ActionOverride("P#IMANEL",Enemy())~ EXIT
END

IF ~~ THEN BEGIN EMKI.PC
SAY @11
IF ~~ THEN REPLY @12 GOTO WithKivan
IF ~~ THEN REPLY @13 GOTO OfferJoin
IF ~~ THEN REPLY @14 GOTO AskWolves
IF ~~ THEN REPLY @15 GOTO AskWolves
END

IF ~~ THEN BEGIN WithKivan
SAY @16
IF ~~ THEN EXTERN ~%KIVAN_JOINED%~ KIVReact1
END

IF ~~ THEN BEGIN OfferJoin
SAY @17
IF ~~ THEN REPLY @18 GOTO LetKivanGo
IF ~~ THEN REPLY @19 GOTO WillKill
END

IF ~~ THEN BEGIN LetKivanGo
SAY @20
IF ~~ THEN EXTERN ~%KIVAN_JOINED%~ KIVReact2
END

IF ~~ THEN BEGIN WillKill
SAY @21
IF ~~ THEN EXTERN ~%KIVAN_JOINED%~ KIVReact3
END

IF ~~ THEN BEGIN AskWolves
SAY @22
IF ~~ THEN REPLY @12 GOTO WithKivan
IF ~~ THEN REPLY @23 GOTO OfferJoin
IF ~~ THEN REPLY @18 GOTO LetKivanGo
IF ~~ THEN REPLY @19 GOTO WillKill
END

IF ~~ THEN BEGIN EM2
SAY @24
IF ~~ THEN DO ~SetGlobal("P#EMMAFight","GLOBAL",3)
ActionOverride("P#WOLF01",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF02",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF03",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF04",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF05",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF01",Enemy())
ActionOverride("P#WOLF02",Enemy())
ActionOverride("P#WOLF03",Enemy())
ActionOverride("P#WOLF04",Enemy())
ActionOverride("P#WOLF05",Enemy())
ActionOverride("P#IMANEL",Enemy())~ EXIT
END

END

APPEND ~%KIVAN_JOINED%~

IF ~~ THEN BEGIN KIVReact1
SAY @25
IF ~~ THEN EXTERN ~P#IMANEL~ EM2
END

IF ~~ THEN BEGIN KIVReact2
SAY @26
IF ~~ THEN DO ~SetGlobal("P#EMMAFight","GLOBAL",3)
ActionOverride("P#WOLF01",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF02",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF03",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF04",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF05",MoveToObject("P#IMANEL"))
ActionOverride("P#WOLF01",Enemy())
ActionOverride("P#WOLF02",Enemy())
ActionOverride("P#WOLF03",Enemy())
ActionOverride("P#WOLF04",Enemy())
ActionOverride("P#WOLF05",Enemy())
ActionOverride("P#IMANEL",Enemy())~ EXIT
END

IF ~~ THEN BEGIN KIVReact3
SAY @27
IF ~~ THEN DO ~SetGlobal("P#EMMAFight","GLOBAL",5)
LeaveParty()
ActionOverride("kivan",Enemy())~
EXIT
END

END

CHAIN3 ~%KIVAN_JOINED%~ EMKIBigChain
@28
== ~P#IMANEL~ @29
= @30
= @31
= @32
== ~%KIVAN_JOINED%~ @33
== ~P#IMANEL~ @34
= @35
== ~%KIVAN_JOINED%~ @36
== ~P#IMANEL~ @37
= @38
== ~%KIVAN_JOINED%~ @39
== ~P#IMANEL~ @40
= @41
= @42
== ~%KIVAN_JOINED%~ @43
== ~P#IMANEL~ @44
= @45
= @46
= @47
= @48
//== ~%KIVAN_JOINED%~ IF ~Dead("tazok")~ THEN @49
//== ~P#IMANEL~ IF ~Dead("tazok")~ THEN @50
//= @51
== ~%KIVAN_JOINED%~ @43
== ~P#IMANEL~ @52
== ~%KIVAN_JOINED%~ @53
== ~P#IMANEL~ @54
= @55
= @56
= @57
= @58
== ~%KIVAN_JOINED%~ @59
== ~P#IMANEL~ @60
= @61
DO ~CreateItem("P#BOW",0,0,0)~
END ~P#IMANEL~ EMKI.PC
