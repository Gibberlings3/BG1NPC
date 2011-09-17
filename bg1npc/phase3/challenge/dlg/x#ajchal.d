BEGIN ~X#AJDRSI~
APPEND ~%AJANTIS_JOINED%~

/* entertain me */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisEntertain","GLOBAL",2) Global("X#AjantisCoChalEntertain","GLOBAL",0)~ THEN ajcochal_entertain
SAY @0
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalEntertain","GLOBAL",1) StartCutScene("X#AJRCU7") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisCoChalEntertain","GLOBAL",1)~ THEN ajcochal_entertain_01
SAY @1
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalEntertain","GLOBAL",2) StartCutScene("X#AJRCU6") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisCoChalEntertain","GLOBAL",2)~ THEN ajcochal_entertain_01
SAY @2
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalEntertain","GLOBAL",3) ClearAllActions() StartCutScene("X#AJRCU8") StartCutSceneMode()~ EXIT
END


/* present */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisProtect","GLOBAL",2) Global("X#AjantisCoChalGift","GLOBAL",0)~ THEN ajcochal_gift
SAY @3
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalGift","GLOBAL",1) ClearAllActions() StartCutScene("X#AJRCUT") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisCoChalGift","GLOBAL",1)~ THEN ajcochal_gift_01
SAY @4
IF ~~ THEN DO ~SetGlobal("X#AjantisCoChalGift","GLOBAL",2)~ EXIT
END

/* dragon */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisDragon","GLOBAL",2) Global("X#AjantisCoChalDragon","GLOBAL",0)~ THEN ajcochal_dragon
SAY @5
= @6
= @7
= @8
IF ~~ THEN DO ~SetGlobal("X#AjantisDragon","GLOBAL",3) SetGlobal("X#AjantisRomanceSilverDragon","GLOBAL",1) SetGlobal("X#AjantisCoChalDragon","GLOBAL",1) ClearAllActions() StartCutScene("X#AJRCU2") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceSilverGone","GLOBAL",1)~ THEN silverdragon_gone
SAY @9 
= @10
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceRedDragon","GLOBAL",1) SetGlobal("X#AjantisRomanceSilverGone","GLOBAL",2) ClearAllActions() StartCutScene("X#AJRCU4") StartCutSceneMode()~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceRedDragon","GLOBAL",1)~ THEN reddragon
SAY @11
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceRedDragon","GLOBAL",2) ClearAllActions() StartCutScene("X#AJRCU5") StartCutSceneMode()~ EXIT
END

END

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceSilverDragon","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ silverdragon
@12 DO ~SetGlobal("X#AjantisRomanceSilverDragon","GLOBAL",2)~
== ~X#AJDRSI~ @13
== ~%AJANTIS_JOINED%~ @14
= @15
== ~X#AJDRSI~ @16 DO ~SetGlobal("X#AjantisRomanceSilverGone","GLOBAL",1) ClearAllActions() StartCutScene("X#AJRCU3") StartCutSceneMode()~ 
EXIT

