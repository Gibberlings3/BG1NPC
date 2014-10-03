/* Tiax Quest Variables */

/* X#BelginPlacement */
///* 1 = Belgin spawned */
///* 2 = Belgin has been threatened (he'll hide) */
///* 3 = Belgin hiding (deactivated) */
///* 4 = */
///* 5 = Belgin threatened with his life - will run away FOREVER */
///* 6 = Belgin has run away FOREVER */
///* 7 = Belgin has been sent to a different area to wait */
///* 8 = Belgin has moved to a different area to wait */
///* 11 = the PC has betrayed Belgin to the bountyhunters */
///* 12 = Belgin has destroyed himself following his betrayal */

/* X#BelginHides = timer for Belgin running away */

/* X#KarrisPlacement */
///* 1 = Karris and friends spawned */
///* 2 = Karris and friends are leaving the Blade and Stars following a non-violent conclusion of the encounter */
///* 3 = Karris and friends are leaving the Blade and Stars following a non-violent conclusion of the encounter */
///* 4 = Karris and friends have left the building */

/* X#TiaxQuest */
///* 1 = Belgin has seen Tiax */
///* 2 = Belgin has addressed Tiax */
///* 3 = Karris has seen the PC after the interview with Belgin */
///* 4 = the PC has spoken to Karris in relation to Tiax's quest */
///* 5 = the quest is finished */
///* 6 = the PC has returned to Belgin after clearing his name */
///* 20 = all reactions to the conclusion of the quest are completed */

/* X#BelginFirst */
///* 1 = the PC has spoken to Belgin prior to having Tiax in the party */
///* 2 = the PC has spoken to Belgin twice prior to having Tiax in the party */
///* 3 = the PC has spoken to Belgin three (or more) times prior to having Tiax in the party */

/* X#BelginRobbed */
///* 1 = the PC has robbed Belgin (X#BelginPlacement goes to 2) */

/* X#TiaxQuestBlackmail */
///* 1 = Belgin is being blackmailed */

/* X#KarrisFirst */
///* 1 = the PC has spoken to Karris prior to having talked to Belgin */
///* 2 = the PC has spoken to Karris twice prior to having talked to Belgin */
///* 3 = the PC has spoken to Karris three (or more) times prior to having talked to Belgin */

/* X#TiaxQuestBattle */
///* 1 = the PC has opted to fight Karris */

/* X#KarrisDefends */
///* 1 = Karris and company change alleigance to ENEMY */

/* X#TiaxQuestCyric */ 
///* 1 = cue for Tiax to react to his quest */
///* 2 = Tiax has reacted to his quest */

/* X#TiaxQuestComplain */
///* 1 = Tiax cued to complain about taking too long to confront Belgin after conclusion of the quest */
///* 2 = Tiax has complained about the delay in dealing with Belgin */
///* 3 = Tiax is getting ready to quit the party because of the delay */
///* 4 = Tiax has announced his intention to quit the party because of the delay */

/* X#TiaxQuestTime7 = timer to go confront Belgin after conclusion of the quest */
/* X#TiaxQuestTime5 = timer between the first complaint and leaving the party */

/* X#TiaxQuestTiaxQuits = Tiax has quit the party */

/* X#BelginBattle */
///* 1 = PC has decided to fight Belgin */
///* 2 = battle is joined */

BEGIN ~X#BELGIN~
BEGIN ~X#KARRIS~
BEGIN ~X#TQBH~

/* this one fires if Player initiates dialogue without Tiax in the party */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% OR(3) !InParty("tiax") !InMyArea("tiax") StateCheck("tiax",CD_STATE_NOTVALID) Global("X#TiaxQuest","GLOBAL",0) Global("X#BelginRobbed","GLOBAL",0)~ THEN ~X#BELGIN~ X#TiaxQuestNotStart
@0
END
++ @1 EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne
++ @2 EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne.1 
+ ~Global("X#BelginFirst","GLOBAL",0)~ + @3 DO ~SetGlobal("X#BelginFirst","GLOBAL",1)~ EXTERN X#BELGIN X#TiaxQuestNoStartOne.2 
+ ~Global("X#BelginFirst","GLOBAL",1)~ + @4 DO ~SetGlobal("X#BelginFirst","GLOBAL",2)~ EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne
++ @5 DO ~SetGlobal("X#BelginPlacement","GLOBAL",2) SetGlobal("X#BelginRobbed","GLOBAL",1)~ EXTERN X#BELGIN X#TiaxQuestNoStartOne.3 
/* EXIT state: "X#BelginFirst","GLOBAL",0-1-2 | "X#BelginRobbed","GLOBAL",1, "X#BelginPlacement","GLOBAL",2 if threatened | repeating infinitely until quest started */

/* this one fires if Player initiates dialogue without Tiax in the party, but party has robbed him before */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% OR(2) !InParty("tiax") !InMyArea("tiax") Global("X#TiaxQuest","GLOBAL",0) Global("X#BelginRobbed","GLOBAL",1)~ THEN ~X#BELGIN~ X#TiaxQuestNotStart
@6
END
++ @7 EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne
++ @8 EXIT
+ ~Global("X#BelginFirst","GLOBAL",0)~ + @3 DO ~SetGlobal("X#BelginFirst","GLOBAL",1)~ EXTERN X#BELGIN X#TiaxQuestNoStartOne.2 
+ ~Global("X#BelginFirst","GLOBAL",1)~ + @4 DO ~SetGlobal("X#BelginFirst","GLOBAL",2)~ EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne
/* EXIT state: "X#BelginFirst","GLOBAL",0-1-2 | repeating infinitely until quest started */

CHAIN ~X#BELGIN~ X#TiaxQuestNoStartOne
@9
DO ~AddJournalEntry(@10,QUEST)~
END 
++ @11 EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne.4 
++ @12 EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne.5 
+ ~!Global("X#BelginRobbed","GLOBAL",1)~ + @13 DO ~SetGlobal("X#BelginPlacement","GLOBAL",2) SetGlobal("X#BelginRobbed","GLOBAL",1)~ EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne.3 
+ ~OR(7) InParty("quayle") Race(Player1,GNOME) Race(Player2,GNOME) Race(Player3,GNOME) Race(Player4,GNOME) Race(Player5,GNOME) Race(Player6,GNOME)~ + @14 EXTERN ~X#BELGIN~ X#TiaxQuestNoStartGnome
+ ~Global("X#BelginFirst","GLOBAL",1)~ + @15 DO ~SetGlobal("X#BelginFirst","GLOBAL",2)~ EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne.6 
+ ~Global("X#BelginFirst","GLOBAL",2)~ + @16 DO ~SetGlobal("X#BelginFirst","GLOBAL",3)~ EXTERN ~X#BELGIN~ X#TiaxQuestNoStartOne.6 
/* EXIT state: "X#BelginFirst","GLOBAL",0-1-2-3 | "X#BelginRobbed","GLOBAL",1,"X#BelginPlacement","GLOBAL",2 if threatened | repeating infinitely until quest started */

CHAIN ~X#BELGIN~ X#TiaxQuestNoStartOne.1 
@17
EXIT 

CHAIN ~X#BELGIN~ X#TiaxQuestNoStartOne.2
@18
EXIT 

CHAIN ~X#BELGIN~ X#TiaxQuestNoStartOne.3
@19
DO ~GiveGoldForce(12)~
EXIT 

CHAIN ~X#BELGIN~ X#TiaxQuestNoStartOne.4
@20
EXIT

CHAIN ~X#BELGIN~ X#TiaxQuestNoStartOne.5
@21
EXIT 

CHAIN ~X#BELGIN~ X#TiaxQuestNoStartOne.6
@22
EXIT 

CHAIN ~X#BELGIN~ X#TiaxQuestNoStartGnome
@23 
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @24
DO ~AddJournalEntry(@25,QUEST)~
END
++ @26 EXIT
+ ~Alignment(Player1,MASK_GOOD)~ + @27 EXIT
+ ~Alignment(Player1,MASK_GENEUTRAL) ReputationLT(Player1,15)~ + @28 EXIT
+ ~Alignment(Player1,MASK_EVIL)~ + @29 EXIT
+ ~Alignment(Player1,MASK_EVIL)~ + @30 DO ~SetGlobal("X#BelginPlacement","GLOBAL",2)~ EXIT
+ ~OR(6) Race(Player1,GNOME) Race(Player2,GNOME) Race(Player3,GNOME) Race(Player4,GNOME) Race(Player5,GNOME) Race(Player5,GNOME)~ + @31 EXIT
+ ~InParty("quayle") OR(6) Race(Player1,GNOME) Race(Player2,GNOME) Race(Player3,GNOME) Race(Player4,GNOME) Race(Player5,GNOME) Race(Player5,GNOME)~ + @32 EXIT
++ @33 EXIT
++ @34 EXIT
/* EXIT state: "X#BelginFirst","GLOBAL",0-1-2-3 | "X#BelginRobbed","GLOBAL",1,"X#BelginPlacement","GLOBAL",2 if threatened | repeating infinitely until quest started */

/* If Tiax is in the party, quest starts by Belgin walking over (.cre BCS) and saying: */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) Global("X#TiaxQuest","GLOBAL",1)~ THEN ~X#BELGIN~ X#TiaxQuestStart
@35
== ~%TIAX_JOINED%~ @36
== ~X#BELGIN~ @37
END
++ @38 DO ~SetGlobal("X#TiaxQuest","GLOBAL",2)~ EXTERN ~X#BELGIN~ X#TiaxQuestStartOne
++ @39 DO ~SetGlobal("X#TiaxQuest","GLOBAL",2)~ EXTERN ~X#BELGIN~ X#TiaxQuestStartOne
++ @40 DO ~SetGlobal("X#TiaxQuest","GLOBAL",2)~ EXTERN ~X#BELGIN~ X#TiaxQuestStartOne
++ @41 DO ~SetGlobal("X#TiaxQuest","GLOBAL",2)~ EXTERN ~X#BELGIN~ X#TiaxQuestStartTwo
++ @42 DO ~SetGlobal("X#TiaxQuest","GLOBAL",2)~ EXTERN ~X#BELGIN~ X#TiaxQuestStartThree
+ ~Global("X#BelginRobbed","GLOBAL",1)~ + @43 DO ~SetGlobal("X#TiaxQuest","GLOBAL",2)~ EXTERN ~X#BELGIN~ X#TiaxQuestStartTwo

CHAIN ~X#BELGIN~ X#TiaxQuestStartOne
@44
= @45
END
++ @46 EXTERN ~X#BELGIN~ X#TiaxQuestStartFour
++ @47 EXTERN ~X#BELGIN~ X#TiaxQuestStartFour
++ @48 EXTERN ~X#BELGIN~ X#TiaxQuestStartThree

CHAIN ~X#BELGIN~ X#TiaxQuestStartTwo
@49
= @50
END
++ @51 EXTERN ~X#BELGIN~ X#TiaxQuestStartFour
++ @52 EXTERN ~X#BELGIN~ X#TiaxQuestStartFive
++ @53 EXTERN ~X#BELGIN~ X#TiaxQuestStartThree

CHAIN ~X#BELGIN~ X#TiaxQuestStartThree
@54
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @55
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @56
== ~%XZAR_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @57
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @58
END
++ @59 EXTERN ~X#BELGIN~ X#TiaxQuestStartSeven
++ @60  EXTERN ~X#BELGIN~ X#TiaxQuestStartSix
+ ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ + @61 EXTERN ~X#BELGIN~ X#TiaxQuestStartSix
++ @62 DO ~EraseJournalEntry(@10) EraseJournalEntry(@25) SetGlobal("X#BelginPlacement","GLOBAL",5) ActionOverride("x#belgin",Enemy()) ActionOverride("x#belgin",EscapeArea())~ SOLVED_JOURNAL @63 EXIT
/* EXIT state: "X#TiaxQuest","GLOBAL",2 | "X#BelginPlacement","GLOBAL",5 */

APPEND ~X#BELGIN~

IF ~~ X#TiaxQuestStartFour
SAY @64
IF ~~ THEN GOTO X#TiaxQuestStartSeven 
END

END

CHAIN ~X#BELGIN~ X#TiaxQuestStartFive
@65
== ~%TIAX_JOINED%~ @66
== ~X#BELGIN~ @67
END
++ @68 EXTERN ~X#BELGIN~ X#TiaxQuestStartFour
++ @69 EXTERN ~X#BELGIN~ X#TiaxQuestStartSeven
++ @70 EXTERN ~X#BELGIN~ X#TiaxQuestStartThree

APPEND ~X#BELGIN~

IF ~~ X#TiaxQuestStartSix
SAY @71
IF ~~ THEN DO ~EraseJournalEntry(@10) EraseJournalEntry(@25) SetGlobal("X#BelginPlacement","GLOBAL",5) ActionOverride("x#belgin",EscapeArea())~ SOLVED_JOURNAL @72 EXIT
END
/* EXIT state: "X#TiaxQuest","GLOBAL",2 | "X#BelginPlacement","GLOBAL",5 */

END

CHAIN ~X#BELGIN~ X#TiaxQuestStartSeven
@73
== ~X#BELGIN~ @74
== ~X#BELGIN~ @75
== ~%TIAX_JOINED%~ @76
== ~X#BELGIN~ @77 
== ~X#BELGIN~ @78
== ~%TIAX_JOINED%~ @79
== ~%TIAX_JOINED%~ @80
== ~%TIAX_JOINED%~ @81
== ~%TIAX_JOINED%~ @82
== ~X#BELGIN~ @83
= @84
END
++ @85 EXTERN ~X#BELGIN~ X#TiaxQuestStartEight
++ @86 EXTERN ~X#BELGIN~ X#TiaxQuestStartNine
++ @87 EXTERN ~X#BELGIN~ X#TiaxQuestStartTen
++ @88 EXTERN ~X#BELGIN~ X#TiaxQuestStartSix
++ @89 EXTERN ~X#BELGIN~ X#TiaxQuestBlackmail

CHAIN ~X#BELGIN~ X#TiaxQuestBlackmail
@90
END
++ @91 EXTERN ~X#BELGIN~ X#TiaxQuestStartBlackmail
++ @92 EXTERN ~X#BELGIN~ X#TiaxQuestStartBlackmail
++ @93 EXTERN ~X#BELGIN~ X#TiaxQuestStartBlackmail
++ @94 EXTERN ~X#BELGIN~ X#TiaxQuestEndBlackmail

CHAIN ~X#BELGIN~ X#TiaxQuestEndBlackmail
@95
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @96
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @97
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @98
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @99
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @100
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @101
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @102
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @103
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @104
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @105
END
IF ~~ THEN DO ~EraseJournalEntry(@10) EraseJournalEntry(@25) SetGlobal("X#BelginPlacement","GLOBAL",5) ActionOverride("x#belgin",GivePartyGold(500)) ActionOverride("x#belgin",EscapeArea())~ SOLVED_JOURNAL @106 EXIT
/* EXIT state: "X#TiaxQuest","GLOBAL",2 | "X#BelginPlacement","GLOBAL",5 */

CHAIN ~X#BELGIN~ X#TiaxQuestStartBlackmail
@107
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @96
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @97
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @98
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @99
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @100
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @108
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @109
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID) InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @110
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @111
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @104
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @105
END
IF ~~ THEN DO ~SetGlobal("X#TiaxQuestBlackmail","GLOBAL",1) ActionOverride("x#belgin",GivePartyGold(500)) SetGlobal("X#BelginPlacement","GLOBAL",7)~ UNSOLVED_JOURNAL @112 EXIT
/* EXIT state: "X#TiaxQuestBlackmail","GLOBAL",1 "X#BelginPlacement","GLOBAL",7 "X#TiaxQuest","GLOBAL",2 */

APPEND ~X#BELGIN~

IF ~~ THEN X#TiaxQuestStartEight
SAY @113 
IF ~~ THEN DO ~SetGlobal("X#BelginPlacement","GLOBAL",7)~ UNSOLVED_JOURNAL @114 EXIT
END
/* EXIT state: "X#BelginPlacement","GLOBAL",7 "X#TiaxQuest","GLOBAL",2 */

IF ~~ THEN X#TiaxQuestStartNine
SAY @115
IF ~~ THEN DO ~SetGlobal("X#BelginPlacement","GLOBAL",7)~ UNSOLVED_JOURNAL @114 EXIT
END
/* EXIT state: "X#BelginPlacement","GLOBAL",7 "X#TiaxQuest","GLOBAL",2 */

IF ~~ THEN X#TiaxQuestStartTen
SAY @116
IF ~~ THEN DO ~SetGlobal("X#BelginPlacement","GLOBAL",7)~ UNSOLVED_JOURNAL @114 EXIT
END
/* EXIT state: "X#BelginPlacement","GLOBAL",7 "X#TiaxQuest","GLOBAL",2 */

END

/* Kulyok: "quest still hasn't been completed" dialogue */

CHAIN IF WEIGHT #-2 ~%BGT_VAR% GlobalGT("X#TiaxQuest","GLOBAL",1) GlobalLT("X#TiaxQuest","GLOBAL",5)~ THEN ~X#BELGIN~ X#TiaxQuestNotFinal
@117
== ~X#BELGIN~ IF ~GlobalGT("X#TiaxQuestComplain","GLOBAL",1)~ THEN @118
== ~X#BELGIN~ IF ~OR(2) Global("X#TiaxQuestTiaxQuits","GLOBAL",2) !InParty("tiax")~ THEN @119
END
+ ~Global("X#TiaxQuest","GLOBAL",2)~ + @375 EXTERN X#BELGIN X#BelginPleaseHurry1
+ ~GlobalGT("X#TiaxQuest","GLOBAL",2)~ + @376 EXTERN X#BELGIN X#BelginPleaseHurry1
++ @378 EXTERN X#BELGIN X#BelginPleaseHurry2

CHAIN X#BELGIN X#BelginPleaseHurry1
@377
EXIT

CHAIN X#BELGIN X#BelginPleaseHurry2
@379
DO ~SetGlobal("X#BelginPlacement","GLOBAL",5)
ActionOverride("x#belgin",EscapeArea())~
EXIT

/* Missing, built from scratch -- Belgin ecounter; belgin begs for mercy - either granted, or killed or given to xzar or montaron as body part (fight between viconia and montaron over torture vs simple removal after death ("they don't wiggle around so much")
resolution */

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiaxQuest","GLOBAL",5)~ THEN ~X#BELGIN~ X#TiaxQuestFinal
@117
DO ~SetGlobal("X#TiaxQuest","GLOBAL",6)~
== ~X#BELGIN~ IF ~GlobalGT("X#TiaxQuestComplain","GLOBAL",1)~ THEN @118
== ~X#BELGIN~ IF ~OR(2) Global("X#TiaxQuestTiaxQuits","GLOBAL",2) !InParty("tiax")~ THEN @119
END
++ @120 EXTERN ~X#BELGIN~ X#BelginFinalExtortorBattle
++ @121 EXTERN ~X#BELGIN~ X#BelginFinalEndEncounter
++ @122  EXTERN ~X#BELGIN~ X#BelginFinalExtortorBattle
+ ~Global("X#TiaxQuestBattle","GLOBAL",1)~ + @123  EXTERN ~X#BELGIN~ X#BelginFinalExtortorBattle
+ ~Global("X#TiaxQuestBattle","GLOBAL",0)~ + @124  EXTERN ~X#BELGIN~ X#BelginFinalEndEncounter
+ ~Global("X#TiaxQuestBlackmail","GLOBAL",1)~ + @125 EXTERN ~X#BELGIN~ X#BelginFinalExtortorBattle
+ ~Global("X#TiaxQuestCyric","GLOBAL",2)~ + @126 EXTERN ~X#BELGIN~ X#BelginFinalCyric

CHAIN ~X#BELGIN~ X#BelginFinalExtortorBattle
@127
== ~X#BELGIN~ IF ~Global("X#TiaxQuestBattle","GLOBAL",1)~ @128
== ~X#BELGIN~ IF ~Global("X#TiaxQuestBlackmail","GLOBAL",1)~ @129 
== ~X#BELGIN~ IF ~Global("X#BelginRobbed","GLOBAL",1) Global("X#TiaxQuestBlackmail","GLOBAL",0)~ @130
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @131
== ~X#BELGIN~ IF ~Global("X#BelginRobbed","GLOBAL",0) Global("X#TiaxQuestBlackmail","GLOBAL",1)~ @132 
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @133
== ~X#BELGIN~ IF ~Global("X#BelginRobbed","GLOBAL",1) Global("X#TiaxQuestBlackmail","GLOBAL",1)~ @134
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @135
END
++ @136 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~Global("X#TiaxQuestBattle","GLOBAL",1)~ + @137 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ + @138 EXTERN ~X#BELGIN~ X#BelginFinalCyric 
+ ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ + @139 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ + @140 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ + @141 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ + @142 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ + @143 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ + @144 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ + @145 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ + @146 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ + @147 EXTERN ~X#BELGIN~ X#BelginFinalCyric
+ ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ + @148 EXTERN ~X#BELGIN~ X#BelginFinalCyric
++ @149 EXTERN ~X#BELGIN~ X#BelginFinalEndEncounter
+ ~Global("X#TiaxQuestBattle","GLOBAL",1)~ + @150 EXTERN ~X#BELGIN~ X#BelginFinalEndEncounter
++ @151 EXTERN ~X#BELGIN~ X#BelginFinalEndEncounter

CHAIN ~%TIAX_JOINED%~ X#BelginKillHim
@152
DO ~SetGlobal("X#BelginBattle","GLOBAL",1) ReputationInc(-1) SetGlobal("X#TiaxQuest","GLOBAL",20)~ 
EXIT

CHAIN ~X#BELGIN~ X#BelginFinalCyric
@153
== ~X#BELGIN~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @154
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @155
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @156
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @157
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @158
== ~X#BELGIN~ @159
END
++ @160 DO ~SetGlobal("X#BelginBattle","GLOBAL",1) ReputationInc(-1) SetGlobal("X#TiaxQuest","GLOBAL",20)~ EXIT
+ ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ + @161 EXTERN ~%TIAX_JOINED%~ X#BelginKillHim
+ ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ + @162 DO ~SetGlobal("X#BelginBattle","GLOBAL",1) ReputationInc(-1) SetGlobal("X#TiaxQuest","GLOBAL",20)~ EXIT
+ ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ + @139 DO ~SetGlobal("X#BelginBattle","GLOBAL",1) ReputationInc(-1) SetGlobal("X#TiaxQuest","GLOBAL",20)~ EXIT
+ ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ + @140 DO ~SetGlobal("X#BelginBattle","GLOBAL",1) ReputationInc(-1) SetGlobal("X#TiaxQuest","GLOBAL",20)~ EXIT
++ @163 EXTERN ~X#BELGIN~ X#BelginFinalEndEncounter

CHAIN ~X#BELGIN~ X#BelginFinalEndEncounter
@164
DO ~ActionOverride("x#belgin",GivePartyGold(1000))~
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) Global("X#TiaxQuestCyric","GLOBAL",2)~ THEN @383
DO ~SetGlobal("X#TiaxQuestComplain","GLOBAL",7)~
== ~X#BELGIN~ IF ~Global("X#BelginRobbed","GLOBAL",1) Global("X#TiaxQuestBlackmail","GLOBAL",0)~ THEN @165
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @131
== ~X#BELGIN~ IF ~Global("X#BelginRobbed","GLOBAL",0) Global("X#TiaxQuestBlackmail","GLOBAL",1)~ THEN @132 
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @166
== ~X#BELGIN~ IF ~Global("X#BelginRobbed","GLOBAL",1) Global("X#TiaxQuestBlackmail","GLOBAL",1)~ THEN @134 DO ~GiveGoldForce(2000)~
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @135
END
++ @167 DO ~SetGlobal("X#TiaxQuest","GLOBAL",20) ActionOverride("x#belgin",EscapeArea())~ EXIT
++ @168 DO ~SetGlobal("X#TiaxQuest","GLOBAL",20) ActionOverride("x#belgin",EscapeArea())~ EXIT
++ @169 DO ~SetGlobal("X#BelginBattle","GLOBAL",1) ReputationInc(-1) SetGlobal("X#TiaxQuest","GLOBAL",20)~ EXIT
++ @170 DO ~SetGlobal("X#TiaxQuest","GLOBAL",20) ActionOverride("x#belgin",EscapeArea())~ EXIT

/* Dialogue begins as soon as players arrive at second floor of Blade and Stars. */
/* Reminder to everyone: goal is to reward evil not good */

/* Giving Karris's bounty hunters something to say */

CHAIN IF ~%BGT_VAR% NumTimesTalkedTo(0)~ THEN X#TQBH BountyHuntersSpeak1
@171
EXIT

CHAIN IF ~%BGT_VAR% NumTimesTalkedToGT(0)~ THEN X#TQBH BountyHuntersSpeak2
@172
EXIT

CHAIN X#KARRIS X#TiaxQuestKarrisNotYet.1
@180
EXIT

CHAIN X#KARRIS X#TiaxQuestKarrisNotYet.2
@181
EXIT

CHAIN X#KARRIS X#TiaxQuestKarrisNotYet.3
@182
EXIT

CHAIN X#KARRIS X#TiaxQuestKarrisNotYet.4
@183
EXIT

CHAIN X#KARRIS X#TiaxQuestKarrisNotYet.5
@184
EXIT


CHAIN IF ~%BGT_VAR% Global("X#TiaxQuest","GLOBAL",3)~ THEN ~X#KARRIS~ X#TiaxQuestKarris
@189
== ~%VICONIA_BANTER%~ IF ~ReputationGT(Player1,14) InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @190
== ~%SHARTEEL_BANTER%~ IF ~ReputationGT(Player1,14) InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @191
== ~%VICONIA_BANTER%~ IF ~ReputationLT(Player1,15) InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @192
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @193
== ~%SHARTEEL_BANTER%~ IF ~ReputationLT(Player1,15) InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @194
END
++ @195 DO ~SetGlobal("X#TiaxQuest","GLOBAL",4)~ EXTERN ~X#KARRIS~ X#TiaxQuestKarrisTwo
++ @196 DO ~SetGlobal("X#TiaxQuest","GLOBAL",4)~ EXTERN ~X#KARRIS~ X#TiaxQuestKarrisTwo
++ @197 DO ~SetGlobal("X#TiaxQuest","GLOBAL",4)~ EXTERN ~X#KARRIS~ X#TiaxQuestKarrisThree
++ @198 DO ~SetGlobal("X#TiaxQuest","GLOBAL",4)~ EXTERN ~X#KARRIS~ X#TiaxQuestKarrisDenial
++ @199 DO ~SetGlobal("X#TiaxQuest","GLOBAL",4)~ EXTERN ~X#KARRIS~ X#TiaxQuestKarrisFour

CHAIN ~X#KARRIS~ X#TiaxQuestKarrisTwo
@200
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @201
== ~%MONTARON_BANTER%~ IF ~ReputationLT(Player1,15) InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @202
END
++ @203 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisFive
++ @204 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisFive
++ @205 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisSix
++ @206 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisDenial
++ @207 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisSeven
++ @208 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisFour

/* In case PC speaks to Karris again  - before either selling Belgin out or proving Telliax's survival */
CHAIN IF ~%BGT_VAR% Global("X#TiaxQuest","GLOBAL",4)~ THEN ~X#KARRIS~ X#TiaxQuestKarrisTwelve
@185
END
+ ~Global("X#KarrisFirst","GLOBAL",0)~ + @174 DO ~SetGlobal("X#KarrisFirst","GLOBAL",1)~ EXTERN X#KARRIS X#TiaxQuestKarrisNotYet.1
+ ~Global("X#KarrisFirst","GLOBAL",1)~ + @175 DO ~SetGlobal("X#KarrisFirst","GLOBAL",2)~ EXTERN X#KARRIS X#TiaxQuestKarrisNotYet.2
+ ~Global("X#KarrisFirst","GLOBAL",2)~ + @176 DO ~SetGlobal("X#KarrisFirst","GLOBAL",3)~ EXTERN X#KARRIS X#TiaxQuestKarrisNotYet.3
++ @186 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisTwo
++ @187 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisSeven 
++ @188 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisFour
/* EXIT state = "X#KarrisFirst","GLOBAL",0-1-2-3 "X#TiaxQuest","GLOBAL",4 (repeats infinitely) */

/* In case PC speaks to Karris before meeting Belgin  */
CHAIN IF ~%BGT_VAR% GlobalLT("X#TiaxQuest","GLOBAL",3)~ THEN ~X#KARRIS~ X#TiaxQuestKarrisNotYet
@173
END
+ ~Global("X#KarrisFirst","GLOBAL",0)~ + @174 DO ~SetGlobal("X#KarrisFirst","GLOBAL",1)~ EXTERN X#KARRIS X#TiaxQuestKarrisNotYet.1
+ ~Global("X#KarrisFirst","GLOBAL",1)~ + @175 DO ~SetGlobal("X#KarrisFirst","GLOBAL",2)~ EXTERN X#KARRIS X#TiaxQuestKarrisNotYet.2
+ ~Global("X#KarrisFirst","GLOBAL",2)~ + @176 DO ~SetGlobal("X#KarrisFirst","GLOBAL",3)~ EXTERN X#KARRIS X#TiaxQuestKarrisNotYet.3
++ @177 EXTERN X#KARRIS X#TiaxQuestKarrisNotYet.4
++ @178 EXTERN X#KARRIS X#TiaxQuestKarrisNotYet.4
++ @179 EXTERN X#KARRIS X#TiaxQuestKarrisNotYet.5
/* EXIT state = "X#KarrisFirst","GLOBAL",0-1-2-3 "X#TiaxQuest","GLOBAL",0 (repeats infinitely)  */

APPEND ~X#KARRIS~ 

IF ~~ THEN BEGIN X#TiaxQuestKarrisThree
SAY @209
IF ~~ THEN EXIT
END
/* EXIT state = "X#TiaxQuest","GLOBAL",4  */

END

CHAIN ~X#KARRIS~ X#TiaxQuestKarrisFour
@210
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @211
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @212
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @213
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @214
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @215
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @216
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @217
END
IF ~~ THEN DO ~
ActionOverride("X#KARRIS",Enemy())
ActionOverride("X#TQBH1",Enemy())
ActionOverride("X#TQBH2",Enemy())
ActionOverride("X#TQBH3",Enemy())
ActionOverride("X#TQBH4",Enemy())
EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114) 
SetGlobal("X#TiaxQuestBattle","GLOBAL",1) SetGlobal("X#TiaxQuest","GLOBAL",5)~ SOLVED_JOURNAL @218 EXIT

/* EXIT state = "X#TiaxQuest","GLOBAL",5 (finished) "X#TiaxQuestBattle","GLOBAL",1 */

CHAIN ~X#KARRIS~ X#TiaxQuestKarrisFive
 @219
= @220
END
++ @221 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisEight
++ @222 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisEight
++ @223 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisSeven
++ @224 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisFour
++ @225 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisDenial
++ @226 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisDenial

APPEND ~X#KARRIS~

IF ~~ X#TiaxQuestKarrisSix
SAY @227 
IF ~~ THEN EXIT
END
/* EXIT state = "X#TiaxQuest","GLOBAL",4  */

END

CHAIN ~X#KARRIS~ X#TiaxQuestKarrisSeven 
@228
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @229
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @230
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @231
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @232
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @233
== ~%ELDOTH_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @234
END
++ @235 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisDenial
++ @236 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisNine
++ @237 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisSix
+ ~InParty("tiax")~ + @238 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisEight

CHAIN ~X#KARRIS~ X#TiaxQuestKarrisEight
@239 
== ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @240
== ~X#KARRIS~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @241
END
+ ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ + @242 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisTen
+ ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ + @243 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisEleven
+ ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ + @244 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisSeven
+ ~OR(3) !InParty("tiax") !InMyArea("tiax") StateCheck("tiax",CD_STATE_NOTVALID)~ + @245 EXIT
+ ~OR(3) !InParty("tiax") !InMyArea("tiax") StateCheck("tiax",CD_STATE_NOTVALID)~ + @246 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisFour
+ ~OR(3) !InParty("tiax") !InMyArea("tiax") StateCheck("tiax",CD_STATE_NOTVALID)~ + @247 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisSeven

CHAIN ~X#KARRIS~ X#TiaxQuestKarrisNine
@248
END
+ ~!Dead("x#belgin") Global("X#TiaxQuestBlackmail","GLOBAL",0)~ + @249 DO ~SetGlobal("X#TiaxQuest","GLOBAL",5) SetGlobal("X#BelginPlacement","GLOBAL",11) SetGlobal("X#KarrisPlacement","GLOBAL",2) GiveGoldForce(1500) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @250 EXIT
+ ~!Dead("x#belgin") Global("X#TiaxQuestBlackmail","GLOBAL",0)~ + @374 DO ~SetGlobal("X#TiaxQuest","GLOBAL",5) SetGlobal("X#BelginPlacement","GLOBAL",11) SetGlobal("X#KarrisPlacement","GLOBAL",2) GiveGoldForce(1500) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @250 EXIT
+ ~Dead("x#belgin")~ + @249 DO ~SetGlobal("X#TiaxQuest","GLOBAL",5) SetGlobal("X#BelginPlacement","GLOBAL",11) SetGlobal("X#KarrisPlacement","GLOBAL",2) GiveGoldForce(1500) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @251 EXIT
+ ~Dead("x#belgin")~ + @374 DO ~SetGlobal("X#TiaxQuest","GLOBAL",5) SetGlobal("X#BelginPlacement","GLOBAL",11) SetGlobal("X#KarrisPlacement","GLOBAL",2) GiveGoldForce(1500) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @251 EXIT 
+ ~!Dead("x#belgin") Global("X#TiaxQuestBlackmail","GLOBAL",1)~ + @249 DO ~SetGlobal("X#TiaxQuest","GLOBAL",5) SetGlobal("X#BelginPlacement","GLOBAL",11) SetGlobal("X#KarrisPlacement","GLOBAL",2) GiveGoldForce(1500) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @252 EXIT
+ ~!Dead("x#belgin") Global("X#TiaxQuestBlackmail","GLOBAL",1)~ + @374 DO ~SetGlobal("X#TiaxQuest","GLOBAL",5) SetGlobal("X#BelginPlacement","GLOBAL",11) SetGlobal("X#KarrisPlacement","GLOBAL",2) GiveGoldForce(1500) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @252 EXIT
/* exit condition X#KarrisPlacement","GLOBAL",2 "X#TiaxQuest","GLOBAL",5 "X#BelginPlacement","GLOBAL",11 Belgin vanishes from Helm and Cloak */

CHAIN ~X#KARRIS~ X#TiaxQuestKarrisTen
@253 
END
+ ~!Dead("x#belgin") Global("X#TiaxQuestBlackmail","GLOBAL",0)~ + @249 DO ~SetGlobal("X#KarrisPlacement","GLOBAL",2) SetGlobal("X#TiaxQuest","GLOBAL",5) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @254 EXIT
+ ~!Dead("x#belgin") Global("X#TiaxQuestBlackmail","GLOBAL",0)~ + @374 DO ~SetGlobal("X#KarrisPlacement","GLOBAL",2) SetGlobal("X#TiaxQuest","GLOBAL",5) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @254 EXIT
+ ~!Dead("x#belgin") Global("X#TiaxQuestBlackmail","GLOBAL",1)~ + @249 DO ~SetGlobal("X#KarrisPlacement","GLOBAL",2) SetGlobal("X#TiaxQuest","GLOBAL",5) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @255 EXIT
+ ~!Dead("x#belgin") Global("X#TiaxQuestBlackmail","GLOBAL",1)~ + @374 DO ~SetGlobal("X#KarrisPlacement","GLOBAL",2) SetGlobal("X#TiaxQuest","GLOBAL",5) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @255 EXIT
+ ~Dead("x#belgin")~ + @249 DO ~SetGlobal("X#KarrisPlacement","GLOBAL",2) SetGlobal("X#TiaxQuest","GLOBAL",5) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @256 EXIT
+ ~Dead("x#belgin")~ + @374 DO ~SetGlobal("X#KarrisPlacement","GLOBAL",2) SetGlobal("X#TiaxQuest","GLOBAL",5) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @256 EXIT

/* exit condition X#KarrisPlacement","GLOBAL",2 "X#TiaxQuest","GLOBAL",5 */

CHAIN ~X#KARRIS~ X#TiaxQuestKarrisDenial
@257
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @258
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @259
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @260
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @261
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @262
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @263
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @264
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @265
== ~%IMOEN_BANTER%~ IF ~InParty("imoen") InMyArea("imoen") !StateCheck("imoen",CD_STATE_NOTVALID)~ THEN @266
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @267
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @268
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @269
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @270
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @271
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @272
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @273
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @274
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @275
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @276
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @277
== ~%BRANWEN_BANTER%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @278
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @279
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @280
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @281
END
++ @246 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisFour
++ @282 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisSeven 
++ @283 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisEight
++ @284 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisSix
/* exit condition: TiaxQuest 4 */

CHAIN ~X#KARRIS~ X#TiaxQuestKarrisEleven
@285 
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @286
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @287
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @288
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @289
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @290
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @291
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @292
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @293
== ~%IMOEN_BANTER%~ IF ~InParty("imoen") InMyArea("imoen") !StateCheck("imoen",CD_STATE_NOTVALID)~ THEN @294
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @295
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @296
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @297
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @298
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @299
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @300
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @301
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @302
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @303
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @304
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @305
== ~%BRANWEN_BANTER%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @306
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @307
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @308
//Deleted Alora reaction. Just couldn't think of anything even remotely suitable.
END
++ @309 DO ~SetGlobal("X#TiaxQuest","GLOBAL",5) SetGlobal("X#KarrisPlacement","GLOBAL",2) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @254 EXIT
+ ~!Dead("x#belgin")~ + @310 DO ~SetGlobal("X#TiaxQuest","GLOBAL",5) SetGlobal("X#KarrisPlacement","GLOBAL",2) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @254 EXIT
++ @311 EXTERN ~X#KARRIS~ X#TiaxQuestKarrisFour
+ ~Dead("x#belgin")~ + @312 DO ~SetGlobal("X#TiaxQuest","GLOBAL",5) SetGlobal("X#KarrisPlacement","GLOBAL",2) EraseJournalEntry(@10) EraseJournalEntry(@25) EraseJournalEntry(@112) EraseJournalEntry(@114)~ SOLVED_JOURNAL @313 EXIT
/* exit condition: "X#TiaxQuest","GLOBAL",5 "X#KarrisPlacement","GLOBAL",2 potentially out to battle state */

/* Tiax Quest; Tiax Talks */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiaxQuest","GLOBAL",5) Global("X#TiaxQuestCyric","GLOBAL",1)~ THEN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyric
@314
DO ~SetGlobal("X#TiaxQuestCyric","GLOBAL",2)~ 
== ~%TIAX_JOINED%~ @315
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @316
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @317
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @318
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @319
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @320
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @321
END
++ @322 EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricOne
++ @323  EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricTwo
++ @324  EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricTwo

CHAIN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricOne
@325
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @326
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @327
END
IF ~Dead("X#BELGIN")~ THEN EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricOne2
IF ~!Dead("X#BELGIN")~ THEN EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricOne1

CHAIN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricOne1
@328
END
++ @329 EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricThree
++ @330 EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricTwo

CHAIN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricOne2
@328
EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricTerminated

CHAIN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricTerminated
@331
END
++ @332 DO ~SetGlobal("X#TiaxQuest","GLOBAL",20)~ EXIT
++ @382 DO ~SetGlobal("X#TiaxQuest","GLOBAL",20)~ EXIT

CHAIN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricTwo
@333
END
++ @334 EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricFour
++ @335 EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricFive
++ @336 EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricSix
+ ~Global("X#TiaxQuestBlackmail","GLOBAL",1) !Dead("x#belgin")~ + @337 EXIT

CHAIN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricThree
@338
END
++ @339 EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricFour
++ @340 EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricFive
++ @341 EXTERN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricSix
+ ~Global("X#TiaxQuestBlackmail","GLOBAL",1) !Dead("x#belgin")~ + @337 EXIT

CHAIN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricFour
@342
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @343
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @344
== ~%FALDORN_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @345
END
IF ~~ THEN DO ~SetGlobalTimer("X#TiaxQuestTime7","GLOBAL",SEVEN_DAYS)~ EXIT

CHAIN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricFive
@346
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @347
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @348
== ~%KAGAIN_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @349
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @350
END
IF ~~ THEN DO ~SetGlobalTimer("X#TiaxQuestTime7","GLOBAL",SEVEN_DAYS)~ EXIT

CHAIN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricSix
@351
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @352
== ~%XZAR_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @353
END
IF ~~ THEN DO ~SetGlobalTimer("X#TiaxQuestTime7","GLOBAL",SEVEN_DAYS)~ EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiaxQuestComplain","GLOBAL",1)~ THEN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricSeven
@354
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @355
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @356
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @357
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @358
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @359
END
++ @360 DO ~SetGlobal("X#TiaxQuestComplain","GLOBAL",2) SetGlobalTimer("X#TiaxQuestTime5","GLOBAL",FIVE_DAYS)~ EXIT
++ @361 DO ~SetGlobal("X#TiaxQuestComplain","GLOBAL",2) SetGlobalTimer("X#TiaxQuestTime","GLOBAL",FIVE_DAYS)~ EXIT
++ @362 DO ~SetGlobal("X#TiaxQuestComplain","GLOBAL",2) SetGlobalTimer("X#TiaxQuestTime5","GLOBAL",FIVE_DAYS)~ EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiaxQuestComplain","GLOBAL",3)~ THEN ~%TIAX_JOINED%~ X#TiaxQuestTiaxCyricEight
@363
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @364
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @365
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @366
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @367
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @368
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @369
END
++ @370 DO ~SetGlobal("X#TiaxQuestComplain","GLOBAL",4) SetGlobal("X#TiaxQuestTiaxQuits","GLOBAL",1)~ JOURNAL @371 EXIT
++ @372 DO ~SetGlobal("X#TiaxQuestComplain","GLOBAL",4) SetGlobal("X#TiaxQuestTiaxQuits","GLOBAL",1)~ JOURNAL @371 EXIT
++ @373 DO ~SetGlobal("X#TiaxQuestComplain","GLOBAL",4) SetGlobal("X#TiaxQuestTiaxQuits","GLOBAL",1)~ JOURNAL @371 EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#TiaxQuestComplain","GLOBAL",7)~ THEN ~%TIAX_JOINED%~ X#TiaxLetBelginGo1
@380
DO ~SetGlobal("X#TiaxQuestTiaxQuits","GLOBAL",1) SetGlobal("X#TiaxQuestComplain","GLOBAL",8)~ EXIT /* JOURNAL @381 */