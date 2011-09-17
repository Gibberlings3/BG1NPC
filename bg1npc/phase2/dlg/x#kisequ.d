BEGIN X#KETH

BEGIN X#SAHA01

BEGIN X#IHTIA
APPEND X#IHTIA

IF ~Dead("X#keth")~ SeasnakeLeaves
SAY @0
IF ~~ THEN DO ~SetGlobal("X#KivanSea","GLOBAL",7) EscapeArea() ActionOverride("seasnake",DestroySelf())~ EXIT
END

/* Scene 3 (if did not help Jozzi, she shows up with 5 other Sahuagin)  */
IF ~Global("X#KivanSea","GLOBAL",8)~ SEAL3.1
SAY @1
= @2
IF ~~ THEN DO ~SetGlobal("X#SeasnakeAttack","GLOBAL",2)
ActionOverride("seasnake",Enemy()) 
ActionOverride("seasnake",Attack([PC]))
CreateCreature("X#SAHA01",[-1.-1],0)
CreateCreature("X#SAHA02",[-1.-1],0)
CreateCreature("X#SAHA02",[-1.-1],0)
CreateCreature("X#SAHA01",[-1.-1],0)
CreateCreature("X#SAHA02",[-1.-1],0)
CreateCreature("X#SAHA02",[-1.-1],0)
ActionOverride("X#SAHA01",Attack([PC]))
ActionOverride("X#SAHA02",Attack([PC]))~ EXIT
END

IF ~%BGT_VAR% Global("X#KivanSea","GLOBAL",1)~ StartKivanSeaElfQuest
SAY @3
++ @4 EXTERN ~%KIVAN_JOINED%~ SEAELF1.1
END

IF ~~ SEAL1.2
SAY @5
IF ~~ THEN DO ~SetGlobal("X#KivanSea","GLOBAL",2)~ EXIT
END

IF ~~ SEAL1.3
SAY @6
++ @7 + SEAL1.1
++ @8 EXTERN ~%KIVAN_JOINED%~ SEAL1.7
END

IF ~~ SEAL1.4
SAY @9
IF ~RandomNum(2,1)~ THEN DO ~SetGlobal("X#KivanSea","GLOBAL",4)~ EXTERN ~%KIVAN_JOINED%~ SEKIReconsider
IF~RandomNum(2,2)~ THEN DO ~SetGlobal("X#KivanSea","GLOBAL",4)~ EXTERN ~%KIVAN_JOINED%~ SEAL1.7
END

IF ~~ SEAL1.5
SAY @10
IF ~~ THEN DO ~SetGlobal("X#KivanSea","GLOBAL",4)~ EXTERN ~%KIVAN_JOINED%~ SEKIReconsider
END

IF ~~ SEAL1.6
SAY @11
= @12
++ @13 + SEAL1.4
++ @14 + SEAL1.2
++ @15 + SEAL1.5
END
END

CHAIN ~%KIVAN_JOINED%~ SEKIReconsider
@16
END
++ @17 EXTERN ~%KIVAN_JOINED%~ KivanQuits
++ @18 EXTERN X#IHTIA SEAL1.2

CHAIN ~%KIVAN_JOINED%~ KivanQuits
@19
== X#IHTIA @20
END
IF ~~ THEN DO ~ActionOverride("kivan",LeaveParty()) ActionOverride("kivan",EscapeArea()) ActionOverride("seasnake",EscapeArea())~ EXIT

CHAIN ~%KIVAN_JOINED%~ SEAL1.7
 @21
== ~X#IHTIA~ @22
END
IF ~~ THEN DO ~SetGlobal("X#KivanSea","GLOBAL",4) ActionOverride("seasnake",JumpToPoint([1010.1638]))~
EXIT

CHAIN ~X#IHTIA~ SEAL1.1
 @23
= @24
== ~%KIVAN_JOINED%~ @25
== ~X#IHTIA~ @26
== ~%KIVAN_JOINED%~ @27
== ~X#IHTIA~ @28
= @29
= @30
= @31
== ~%KIVAN_JOINED%~ @32
END
++ @13 + SEAL1.4
++ @14 + SEAL1.2
++ @15 + SEAL1.5
++ @33 + SEAL1.6


CHAIN ~%KIVAN_JOINED%~ SEAELF1.1
@34
== ~X#IHTIA~ @35
== ~%KIVAN_JOINED%~ @36
= @37
= @38
== ~X#IHTIA~ @39
END
++ @40 EXTERN X#IHTIA SEAL1.1
++ @41 EXTERN X#IHTIA SEAL1.1
++ @42 EXTERN X#IHTIA SEAL1.2
+ ~!Race(Player1,ELF)~ + @43 EXTERN X#IHTIA SEAL1.3
++ @44 EXTERN X#IHTIA SEAL1.3


CHAIN IF ~%BGT_VAR% Global("X#KivanSea","GLOBAL",3)~ THEN X#SAHA01 SahaChain1
@45
== X#KETH @46
== X#SAHA01 @47
== X#IHTIA @48
END
IF ~~ THEN DO ~ActionOverride("X#keth",JumpToPoint([1010.1638])) SetGlobal("X#KivanSea","GLOBAL",5) ActionOverride("X#SAHA01",Enemy()) ActionOverride("X#SAHA01",Attack("seasnake")) ActionOverride("X#SAHA02",Enemy()) ActionOverride("X#SAHA01",Attack(Player1)) ChangeEnemyAlly("seasnake",GOODBUTBLUE)~ EXIT

CHAIN IF ~Global("X#KivanSea","GLOBAL",6)~ THEN X#KETH SeasnakeFinal
@49
END
IF ~~ THEN DO ~MoveGlobalObject("kivan","X#keth") ActionOverride("seasnake",JumpToPoint([911.1409]))~ EXTERN ~%KIVAN_JOINED%~ SeasnakeFinal1

CHAIN ~%KIVAN_JOINED%~ SeasnakeFinal1
@50
== X#KETH @51
= @52
= @53
= @54
= @55
== X#IHTIA @56
== X#KETH @57 
== ~%KIVAN_JOINED%~ @58
== X#KETH @59
== X#IHTIA @60
== X#KETH @61
== X#IHTIA @62
= @63
== X#KETH @64
== X#IHTIA @65
== X#KETH @66
= @67
END
IF ~~ THEN DO ~SetGlobal("X#KivanSea","GLOBAL",7) EscapeArea() ActionOverride("seasnake",DestroySelf())~ EXIT
