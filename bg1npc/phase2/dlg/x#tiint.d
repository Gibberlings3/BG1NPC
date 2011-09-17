APPEND ~%TIAX_JOINED%~
/*  Tiax, Solianna - Werewolf Island (just after washing up on shore) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#TSWIJAWUOS","GLOBAL",1)~ TSWIJAWUOS1
SAY @0
IF ~~ THEN DO ~SetGlobal("X#TSWIJAWUOS","GLOBAL",2)~ EXTERN ~%tutu_var%SOLIA1~ 0
END
END

/*  Tiax, Shaella - Baldur's Gate, SouthEast District (Blade 'n' Stars) */
I_C_T ~%tutu_var%SHAELL~ 0 X#TSBGSED
 == ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @1
 == ~%tutu_var%SHAELL~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @2
END

/* Tiax, Tartusse - Baldur's Gate, North District */
//I_C_T2 ~%tutu_var%TARTUS~ 0 X#TTartBGND
// == ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @3
// == ~%tutu_var%TARTUS~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @4
//END

/* Tiax, Tick - Baldur's Gate, North District */
I_C_T ~%tutu_var%TICK~ 0 X#TTickBGND
 == ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @5 
 == ~%tutu_var%TICK~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @6
END

/* TSBGND // Tiax, Shep - Baldur's Gate, North District */
EXTEND_BOTTOM ~%tutu_var%SHEP~ 0 
IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ EXTERN ~%TIAX_BANTER%~ TSBGND1
END

/* Tiax, Shep - Baldur's Gate, North District */
CHAIN IF WEIGHT #-1 ~~ THEN ~%TIAX_BANTER%~ TSBGND1
@7
== ~%tutu_var%SHEP~ @8
EXIT

/* Tiax, Bartender - Baldur's Gate, Southeast District, Blade And Stars Inn */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#TBBGSEDBASI","GLOBAL",0) InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%tutu_var%INNKE3~ TBBGSEDBASI1
@9
== ~%TIAX_BANTER%~ @10
== ~%tutu_var%INNKE3~ @11
DO ~SetGlobal("X#TBBGSEDBASI","GLOBAL",1)~
END
++ @12 + TBBGSEDBASIB2 //(go to Block Two)
++ @13 + TBBGSEDBASITB3 //(go to Block Three)
++ @14 + TBBGSEDBASIB4 //(go to Block Four)

CHAIN ~%tutu_var%INNKE3~ TBBGSEDBASIB2
@15 
= @16 
= @17 
= @18
== ~%TIAX_BANTER%~ @19
== ~%tutu_var%INNKE3~ @20
END
++ @21 + TBBGSEDBASIB5 //(Block Five)
++ @22 + TBBGSEDBASITB3
++ @23 + TBBGSEDBASIB4 //(Block Four)

APPEND ~%tutu_var%INNKE3~
IF ~~ TBBGSEDBASITB3 // Block Three
SAY @24 //(end conversation, if Bartender talked to again go to Block Six)~
IF ~~ DO ~SetGlobal("X#TBBGSEDBASITB","GLOBAL",1)~ EXIT
END

IF ~~ TBBGSEDBASIB4 // Block Four
SAY @25 //(end conversation, if Bartender talked to again go to Block Six)
IF ~~ THEN DO ~SetGlobal("X#TBBGSEDBASITB","GLOBAL",1)~ EXIT
END

IF ~~ TBBGSEDBASIB5 // Block Five
SAY @26
+ ~PartyGoldGT("300")~ + @27 + TBBGSEDBASIB7 //(Block Seven, option only available if party has over 300 gold)
++ @28 + TBBGSEDBASIB8 //(Block Eight)
++ @29 + TBBGSEDBASIB4 //(Block Four)
END

IF WEIGHT #-1 ~%BGT_VAR% Global("X#TBBGSEDBASITB","GLOBAL",1) InParty("tiax")~ TBBGSEDBASITB6 // Block Six
SAY @30 // (end dialogue, only if Tiax is still in group)
IF ~~ THEN EXIT
END

IF ~~ TBBGSEDBASIB7 // Block Seven
SAY @31
IF ~~ THEN DO ~ReputationInc(1) StartStore("%tutu_var%INN0105",LastTalkedToBy())~ EXIT //(end dialogue, standard bartender dialogue now, plus one reputation point)
END

IF ~~ TBBGSEDBASIB8 // Block Eight
SAY @32 //(end dialogue, go to Block Six if party tries to speak to Bartender again)
IF ~~ THEN DO ~SetGlobal("X#TBBGSEDBASITB","GLOBAL",1)~ EXIT
END
END
