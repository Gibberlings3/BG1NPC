REPLACE_STATE_TRIGGER ~%KAGAIN_JOINED%~ 3 ~Global("%KICKED_OUT%","LOCALS",1)~

/* kobolds */
I_C_T ~%tutu_var%DINK~ 0 X#KagainDink
== ~%KAGAIN_JOINED%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @0
END

APPEND ~%KAGAIN_JOINED%~

/* Kagain, Nashkel mines after talking to Dink */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KagainKobold","GLOBAL",1)~ THEN BEGIN KagainKobold
SAY @1
++ @2 DO ~SetGlobal("X#KagainKobold","GLOBAL",2)~ + KaKob1.1
END

IF ~~ KaKob1.1
SAY @3
++ @4 + KaKob1.2
END

IF ~~ KaKob1.2
SAY @5
IF ~~ THEN EXIT
END

/* Entry to the Undercity */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KagainMaze","GLOBAL",1)~ KagainMaze
SAY @6
++ @7 DO ~SetGlobal("X#KagainMaze","GLOBAL",2)~ + KaMaze1
END

IF ~~ KaMaze1
SAY @8
++ @9 + KagainMaze2
END

/* Kagain, Bridge To Baldur’s Gate */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KBTBG","GLOBAL",1)~ THEN KBTBG1
SAY @10
IF ~~ THEN DO ~SetGlobal("X#KBTBG","GLOBAL",2)~ EXIT
END

/* KagainBaldurEntry */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KagainBaldur","GLOBAL",1)~ THEN KagainBaldur1
SAY @11
++ @12 DO ~SetGlobal("X#KagainBaldur","GLOBAL",2)~ + KagainBaldur2
END

IF ~~ KagainBaldur2
SAY @13
IF ~~ THEN EXIT
END

/* KagainCandlekeepEntry */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KagainInCandlekeep","GLOBAL",1)~ THEN KagainCK1
SAY @14
IF ~~ THEN DO ~SetGlobal("X#KagainInCandlekeep","GLOBAL",2)~ EXIT
END

IF ~~ KagainMaze2
SAY @15
IF ~~ THEN EXIT
END

/* Oublek reaction */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KagainOublek","GLOBAL",1)~ THEN BEGIN KagainOublek1
SAY @16
IF ~~ THEN DO ~SetGlobal("X#KagainOublek","GLOBAL",2)~ EXIT
END

END
