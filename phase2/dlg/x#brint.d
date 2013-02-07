/* Branwen's Interjections */
/* Coder: Rastor <rastor@rpgdungeonmods.tk> */

APPEND ~%tutu_var%TRANZI~

IF ~~ X#TranzigStone2
SAY @0
IF ~~ THEN GOTO 10
END

END

/* Dealing with Tranzig */
INTERJECT ~%tutu_var%TRANZI~ 0 X#BranwenTranzigDialogue
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @1
== ~%tutu_var%TRANZI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @2
= @3
END
IF ~~ THEN EXTERN ~%tutu_var%TRANZI~ 1

INTERJECT ~%tutu_var%TRANZI~ 8 X#BranwenTranzigDialogue1
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @4
END
IF ~~ THEN EXTERN ~%tutu_var%TRANZI~ X#TranzigStone2

EXTEND_BOTTOM ~%tutu_var%ZEKE~ 0 
+ ~!InParty("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ + @1001 + X#UnpetrifiedBranwen
IF ~Global("X#JaheiraZeke","GLOBAL",1)~ THEN GOTO X#JaheiraHitZeke
END
 
APPEND ~%tutu_var%ZEKE~
IF ~~ X#UnpetrifiedBranwen
SAY @1002
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ X#JaheiraHitZeke
SAY @12
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

END

//I_C_T ~%tutu_var%TRANZI~ 7 X#BranwenTranzigChicken
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @5
//== ~%tutu_var%TRANZI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @6
//END

//I_C_T2 ~%tutu_var%SONNER~ 4 X#BranwenSonner1
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @7
//END

//I_C_T ~%tutu_var%GAZIB~ 1 X#BranwenOopah
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @8
//END

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt6
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @9
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @10
//END

I_C_T ~%tutu_var%ZEKE~ 4 X#BranwenAlive
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @11
== ~%tutu_var%ZEKE~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @12
END

//I_C_T2 ~%tutu_var%NOOBER~ 11 X#BranwenNoober
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @13
//== ~%tutu_var%NOOBER~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @14
//END

//I_C_T ~%tutu_var%MULAHE~ 6 X#BranwenTricked
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @15
//== ~%tutu_var%MULAHE~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @16
//END

//I_C_T2 ~%tutu_var%ARDROU~ 0 X#BranwenWorgs
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @17 DO ~SetGlobal("J#ArdTalk","GLOBAL",1)~
//END

/* This line repeats, from 0 above, but it's original dialogue, so I'm not going to change it. */
I_C_T ~%tutu_var%ARDROU~ 3 X#BranwenWorgs2
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @17
END

//I_C_T2 ~%tutu_var%TIBER~ 2 X#BranwenTiber
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @18
//== ~%tutu_var%TIBER~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @19
//END

I_C_T ~%tutu_var%MEILUM~ 4 X#BranwenMelium
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @20
== ~%tutu_var%MEILUM~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @21
END

//I_C_T2 ~%tutu_var%NIKLOS~ 8 X#BranwenNiklos
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @22
//== ~%tutu_var%NIKLOS~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @23
//END

//I_C_T2 ~%tutu_var%NADARI~ 1 X#BranwenBasilisk
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @24
//== ~%tutu_var%NADARI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @25
//END

//I_C_T ~%tutu_var%PERDUE~ 7 X#BranwenPerdue
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @26
//== ~%tutu_var%PERDUE~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @27
//END

//I_C_T ~%tutu_var%PERDUE~ 8 X#BranwenPerdue2
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @26
//== ~%tutu_var%PERDUE~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @27
//END

//I_C_T ~%tutu_var%BASSIL~ 5 X#BranwenBassil
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @28
//== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @29
//END

//I_C_T ~%tutu_var%BASSIL~ 6 X#BranwenBassil2
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @28
//== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @29
//END

//I_C_T ~%tutu_var%BASSIL~ 10 X#BranwenBassil3
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @28
//== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @29
//END

///I_C_T ~%tutu_var%BASSIL~ 11 X#BranwenBassil4
///== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @28
///== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @29
///END

//I_C_T ~%tutu_var%BASSIL~ 12 X#BranwenBassil5
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @28
//== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @29
//END

//I_C_T ~%tutu_var%BASSIL~ 13 X#BranwenBassil6
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @28
//== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @29
//END

//I_C_T ~%tutu_var%BASSIL~ 14 X#BranwenBassil7
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @28
//== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @29
//END

//I_C_T2 ~%tutu_var%ARGHAI~ 0 X#BranwenIron
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @30
//== ~%tutu_var%ARGHAI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @31
//END

I_C_T ~%tutu_var%MINEC2~ 9 X#BranwenMines
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @32
== ~%tutu_var%MINEC2~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @33
END

//I_C_T2 ~%tutu_var%COKSMTH~ 3 X#BranwenWyverns
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @34
//== ~%tutu_var%COKSMTH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @35
//END

//I_C_T2 ~%tutu_var%COKSMTH~ 5 X#BranwenWyverns2a
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @34
//== ~%tutu_var%COKSMTH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @35
//END

//I_C_T2 ~%tutu_var%COKSMTH~ 6 X#BranwenWyverns2b
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @34
//== ~%tutu_var%COKSMTH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @35
//END

I_C_T ~%tutu_var%NALIN~ 1 X#BranwenBrage
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @36
== ~%tutu_var%NALIN~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @37
== ~%tutu_var%NALIN~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @66
END

//I_C_T2 ~%tutu_var%THALAN~ 0 X#BranwenThalantyr
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @38
//END

//I_C_T ~%tutu_var%DRIZZT~ 1 X#BranwenDrizzt
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @39
//END

/* Branwen is in the party but not Xan, Montaron or Viconia */
I_C_T2 ~%tutu_var%BREVLI~ 17 X#BranwenTheftA
== ~%BRANWEN_JOINED%~ IF ~
InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)
OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID)
OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)
OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)
~ THEN @40 DO ~SetGlobal("HelpBrevlik","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~
InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)
OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID)
OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)
OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)
~ THEN @41
END 

/* Branwen and Xan are in the party but not Montaron or Viconia */
I_C_T2 ~%tutu_var%BREVLI~ 17 X#BranwenTheftB
== ~%BRANWEN_JOINED%~ IF ~
InParty("branwen") InMyArea("branwen") StateCheck("branwen",CD_STATE_NOTVALID)
InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)
OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)
OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)
~ THEN @42 DO ~SetGlobal("HelpBrevlik","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~
InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)
InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) 
OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID) 
OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @41
END

/* Branwen and Montaron are in the party but not Xan or Viconia */
I_C_T2 ~%tutu_var%BREVLI~ 17 X#BranwenTheftC
== ~%BRANWEN_JOINED%~ IF ~
InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)
InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) 
OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) 
OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)
~ THEN @43 DO ~SetGlobal("HelpBrevlik","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~
InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)
InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)
OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID)
OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)
~ THEN @41
END

/* Branwen and Viconia are in the party but not Xan or Montaron */
I_C_T2 ~%tutu_var%BREVLI~ 17 X#BranwenTheftD
== ~%BRANWEN_JOINED%~ IF ~
InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)
InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) 
OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) 
OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)
~ THEN @44 DO ~SetGlobal("HelpBrevlik","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~
InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)
InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)
OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID)
OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @41
END

/* New Interjections */

I_C_T ~%tutu_var%TAMAH~ 4 X#BranwenTamah1
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @45 
== ~%tutu_var%TAMAH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @46
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @47
== ~%tutu_var%TAMAH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @48
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @49
== ~%tutu_var%TAMAH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @50
END

I_C_T ~%tutu_var%TAMAH~ 5 X#BranwenTamah2
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @51
== ~%tutu_var%TAMAH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @46
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @47
== ~%tutu_var%TAMAH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @48
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @52
== ~%tutu_var%TAMAH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @50
END

I_C_T ~%tutu_var%TAMAH~ 6 X#BranwenTamah3
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @53
== ~%tutu_var%TAMAH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @46
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @47
== ~%tutu_var%TAMAH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @48
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @54
== ~%tutu_var%TAMAH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @50
END

APPEND ~%BRANWEN_JOINED%~

/* Branwen- Tranzig Death */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranTranzig","GLOBAL",1)~ THEN BEGIN BranQuest2
SAY @55
IF ~~ THEN DO ~SetGlobal("P#BranTranzig","GLOBAL",2)~ EXIT
END

/* In area FW3500 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranInFW3500","GLOBAL",1)~ THEN BEGIN BranwenEastTemple
 SAY @56
 IF ~~ THEN DO ~SetGlobal("P#BranInFW3500","GLOBAL",2)~ EXIT
END

/* got scalp? */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranwenScalp","LOCALS",1)~ THEN BEGIN BranwenScalp
 SAY @57
 IF ~~ THEN DO ~SetGlobal("P#BranwenScalp","LOCALS",2)~ EXIT
END

/* Branwen Idol Talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranwenIdol","LOCALS",1)~ THEN BEGIN BranwenIdol
 SAY @58
 IF ~~ THEN DO ~SetGlobal("P#BranwenIdol","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN GantolBranwen
 SAY @59
 IF ~~ THEN EXTERN ~%tutu_var%GANTOL~ 2
END

/* Dwarf Tossing */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranwenSlayDwarfs","GLOBAL",1)~ THEN BEGIN BranwenSlayDwarfs
 SAY @60
 IF ~~ THEN DO ~SetGlobal("P#BranwenSlayDwarfs","GLOBAL",2)~ EXIT
END

/* Dwarven Riddles: */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranwenDwarfInterject","GLOBAL",1)~ THEN BEGIN BranwenRiddlesDwarfs
SAY @61
IF ~~ THEN DO ~SetGlobal("P#BranwenDwarfInterject","GLOBAL",2) SetGlobal("P#BranDurlag","GLOBAL",1)~ EXIT
END

END

ADD_STATE_TRIGGER ~%tutu_var%GANTOL~ 5 ~!InParty("branwen")~

APPEND ~%tutu_var%GANTOL~

IF ~NumTimesTalkedTo(1) InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN BEGIN GantolBranwen
 SAY @62
 ++ @63 + 2
 ++ @64 + 3
 ++ @65 EXTERN ~%BRANWEN_JOINED%~ GantolBranwen
END

END
