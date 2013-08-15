BEGIN X#CHOP

IF ~%BGT_VAR% Global("X#XanQuest1","GLOBAL",1)~ THEN BEGIN CHOPIntro
SAY @0
IF ~~ THEN EXTERN ~X#CRU11~ CRUIntro
END

IF ~~ THEN BEGIN CHOP1
SAY @0
IF ~~ THEN EXTERN ~X#CRU11~ CRU1
END

IF ~~ THEN BEGIN CHOP1.1
SAY @1
IF ~~ THEN EXTERN ~X#CRU11~ CRU2
END

IF ~~ THEN BEGIN CHOP2NORC
SAY @2
IF ~~ THEN DO ~SetGlobal("X#XanQuest1","GLOBAL",2) ReputationInc(-4) Attack("X#DAVID") ActionOverride("X#CRU11", Attack("X#DAVID"))~
EXIT
END

IF ~~ THEN BEGIN CHOP2ORC
SAY @3
IF ~~ THEN DO ~SetGlobal("X#XanQuest1","GLOBAL",2) ReputationInc(-4) Attack("X#DAVID") ActionOverride("X#CRU11", Attack("X#DAVID"))~
EXIT
END

IF ~Global("X#XanQuest1","GLOBAL",3)~ THEN BEGIN CHOPKILLEDDAVID
SAY @4
IF ~~ THEN DO ~EscapeArea() ActionOverride("X#CRU11", EscapeArea())~
EXIT
END

IF ~~ THEN BEGIN CHOP3
SAY @5
IF ~~ THEN DO ~SetGlobal("X#XanQuest1","GLOBAL",2) Kill("X#DAVID") ReputationInc(-1) Enemy() ActionOverride("X#CRU11", Enemy())~
EXIT
END

IF ~~ THEN BEGIN CHOP4
SAY @6
IF ~~ THEN DO ~SetGlobal("X#XanQuest1","GLOBAL",2) Enemy() ActionOverride("X#CRU11", Enemy())~
EXIT
END

IF ~~ THEN BEGIN CHOPXAN4
SAY @7
IF ~~ THEN EXTERN ~X#DAVI~ DAVIXAN3
END

IF ~%BGT_VAR% Global("X#XanQuest1","GLOBAL",7)~ THEN BEGIN CHOPXAN6
SAY @8
IF ~~ THEN EXTERN ~X#CRU11~ CRUXAN1
END

CHAIN3 X#CHOP CHOPXAN1
@9
== ~%XAN_JOINED%~ @10
= @11
== X#CHOP @12
== ~%XAN_JOINED%~ @13
== X#CHOP @14
DO ~SetGlobal("X#XanQuest1","GLOBAL",4)~
END ~%XAN_JOINED%~ XANQU1.1

CHAIN3 X#CHOP CHOPXAN5
@15
== X#CRU11 @16
== ~X#DAVI~ @17
DO ~SetGlobal("X#XanQuest1","GLOBAL",6)~
EXIT
