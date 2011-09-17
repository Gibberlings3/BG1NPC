/* X#LP3REP.D Lake Poet Willie */
/* Plain dealing skjaldish type */

BEGIN X#LP3REP

/* Initial Meeting */
CHAIN IF ~NumTimesTalkedTo(0) Global("X#LakeP3RepTalk","GLOBAL",0)~ THEN ~X#LP3REP~ X#Troubador3Start
@0 //moved setting the global until the pc actually hears the offer
END
++ @1 EXTERN ~X#LP3REP~ X#Troubador3OfferInterested
++ @2 EXTERN ~X#LP3REP~ X#Troubador3OfferInterested
+ ~OR (2) InParty("garrick") InParty("eldoth")~ + @3 EXTERN ~X#LP3REP~ X#Troubador3OwnBard
++ @4 EXTERN ~X#LP3REP~ X#Troubador3OfferHearMeOut
++ @5 EXTERN ~X#LP3REP~ X#Troubador3OfferDeclined

APPEND ~X#LP3REP~

/* dealt with LP# before */
IF ~NumTimesTalkedToGT(0) Global("X#LakeP3RepTalk","GLOBAL",1)~ THEN X#Troubador3Again
SAY @6
++ @7 DO ~IncrementGlobal("X#UseTroubadorRep","GLOBAL",1)~ + X#Troubador3OfferInterested
++ @8 + X#Troubador3OfferDeclined
END

/* met LP#, did not hear him out */
IF ~NumTimesTalkedToGT(0) Global("X#LakeP3RepTalk","GLOBAL",0)~ THEN X#Troubador3TryAgain
SAY @9
++ @10 + X#Troubador3OfferInterested
++ @8 + X#Troubador3OfferDeclined
END

END

/* Hear me out */
CHAIN ~X#LP3REP~ X#Troubador3OfferHearMeOut
@11
END
++ @12 EXTERN ~X#LP3REP~ X#Troubador3OfferInterested
++ @13 EXTERN ~X#LP3REP~ X#Troubador3OfferDeclined

/* We've got our own bard */
CHAIN ~X#LP3REP~ X#Troubador3OwnBard
@14
END
++ @12 EXTERN ~X#LP3REP~ X#Troubador3OfferInterested
++ @15 EXTERN ~X#LP3REP~ X#Troubador3OfferDeclined


/* Sales pitch - NPCs interject here and meeting globals get set here */
CHAIN ~X#LP3REP~ X#Troubador3OfferInterested
@16
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID) Global("X#SafanaRep","GLOBAL",0)~ THEN @17 DO ~IncrementGlobal("X#SafanaRep","GLOBAL",1)~
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID) Global("X#SafanaRep","GLOBAL",1)~ THEN @18 DO ~IncrementGlobal("X#SafanaRep","GLOBAL",1)~
== ~%SAFANA_BANTER%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID) Global("X#SafanaRep","GLOBAL",2)~ THEN @19 DO ~IncrementGlobal("X#SafanaRep","GLOBAL",1)~
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("X#JaheiraRep","GLOBAL",0)~ THEN @20 DO ~IncrementGlobal("X#JaheiraRep","GLOBAL",1)~
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("X#JaheiraRep","GLOBAL",1)~ THEN @21 DO ~IncrementGlobal("X#JaheiraRep","GLOBAL",1)~
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("X#JaheiraRep","GLOBAL",2)~ THEN @22 DO ~IncrementGlobal("X#JaheiraRep","GLOBAL",1)~
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) Global("X#KhalidRep","GLOBAL",0)~ THEN @23 DO ~IncrementGlobal("X#KhalidRep","GLOBAL",1)~
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) Global("X#KhalidRep","GLOBAL",1)~ THEN @24 DO ~IncrementGlobal("X#KhalidRep","GLOBAL",1)~
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) Global("X#KhalidRep","GLOBAL",2)~ THEN @25 DO ~IncrementGlobal("X#KhalidRep","GLOBAL",1)~
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) Global("X#MontaronRep","GLOBAL",0)~ THEN @26 DO ~IncrementGlobal("X#MontaronRep","GLOBAL",1)~
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) Global("X#MontaronRep","GLOBAL",1)~ THEN @27 DO ~IncrementGlobal("X#MontaronRep","GLOBAL",1)~
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) Global("X#MontaronRep","GLOBAL",2)~ THEN @28 DO ~IncrementGlobal("X#MontaronRep","GLOBAL",1)~
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarRep","GLOBAL",0)~ THEN @29 DO ~IncrementGlobal("X#XzarRep","GLOBAL",1)~
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarRep","GLOBAL",1)~ THEN @30 DO ~IncrementGlobal("X#XzarRep","GLOBAL",1)~
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarRep","GLOBAL",2)~ THEN @31 DO ~IncrementGlobal("X#XzarRep","GLOBAL",1)~
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarrickRep","GLOBAL",0)~ THEN @32 DO ~IncrementGlobal("X#GarrickRep","GLOBAL",1)~
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarrickRep","GLOBAL",1)~ THEN @33 DO ~IncrementGlobal("X#GarrickRep","GLOBAL",1)~
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarrickRep","GLOBAL",2)~ THEN @34
== ~X#LP3REP~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarrickRep","GLOBAL",2)~ THEN @35  DO ~IncrementGlobal("X#GarrickRep","GLOBAL",1)~
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) Global("X#EldothRep","GLOBAL",0)~ THEN @36 DO ~IncrementGlobal("X#EldothRep","GLOBAL",1)~
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) Global("X#EldothRep","GLOBAL",1)~ THEN @37 DO ~IncrementGlobal("X#EldothRep","GLOBAL",1)~
== ~%ELDOTH_BANTER%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) Global("X#EldothRep","GLOBAL",2)~ THEN @38 DO ~IncrementGlobal("X#EldothRep","GLOBAL",1)~
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisRep","GLOBAL",0)~ THEN @39 DO ~IncrementGlobal("X#AjantisRep","GLOBAL",1)~
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisRep","GLOBAL",1)~ THEN @40 DO ~IncrementGlobal("X#AjantisRep","GLOBAL",1)~
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisRep","GLOBAL",2)~ THEN @41 DO ~IncrementGlobal("X#AjantisRep","GLOBAL",1)~
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Global("X#ImoenRep","GLOBAL",0)~ THEN @42 DO ~IncrementGlobal("X#ImoenRep","GLOBAL",1)~
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Global("X#ImoenRep","GLOBAL",1)~ THEN @43 DO ~IncrementGlobal("X#ImoenRep","GLOBAL",1)~
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Global("X#ImoenRep","GLOBAL",2)~ THEN @44 DO ~IncrementGlobal("X#ImoenRep","GLOBAL",1)~
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) Global("X#FaldornRep","GLOBAL",0)~ THEN @45 DO ~IncrementGlobal("X#FaldornRep","GLOBAL",1)~
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) Global("X#FaldornRep","GLOBAL",1)~ THEN @46 DO ~IncrementGlobal("X#FaldornRep","GLOBAL",1)~
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) Global("X#FaldornRep","GLOBAL",2)~ THEN @47 DO ~IncrementGlobal("X#FaldornRep","GLOBAL",1)~
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#XanRep","GLOBAL",0)~ THEN @48 DO ~IncrementGlobal("X#XanRep","GLOBAL",1)~
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#XanRep","GLOBAL",1)~ THEN @49 DO ~IncrementGlobal("X#XanRep","GLOBAL",1)~
== ~%XAN_BANTER%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#XanRep","GLOBAL",2)~ THEN @50 DO ~IncrementGlobal("X#XanRep","GLOBAL",1)~
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) Global("X#KagainRep","GLOBAL",0)~ THEN @51  DO ~IncrementGlobal("X#KagainRep","GLOBAL",1)~
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) Global("X#KagainRep","GLOBAL",1)~ THEN @52  DO ~IncrementGlobal("X#KagainRep","GLOBAL",1)~
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) Global("X#KagainRep","GLOBAL",2)~ THEN @53  DO ~IncrementGlobal("X#KagainRep","GLOBAL",1)~
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("X#KivanRep","GLOBAL",0)~ THEN @54 DO ~IncrementGlobal("X#KivanRep","GLOBAL",1)~
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("X#KivanRep","GLOBAL",1)~ THEN @55 DO ~IncrementGlobal("X#KivanRep","GLOBAL",1)~
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("X#KivanRep","GLOBAL",2)~ THEN @56 DO ~IncrementGlobal("X#KivanRep","GLOBAL",1)~
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) Global("X#YeslickRep","GLOBAL",0)~ THEN @57 DO ~IncrementGlobal("X#YeslickRep","GLOBAL",1)~
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) Global("X#YeslickRep","GLOBAL",1)~ THEN @58 DO ~IncrementGlobal("X#YeslickRep","GLOBAL",1)~
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) Global("X#YeslickRep","GLOBAL",2)~ THEN @59 DO ~IncrementGlobal("X#YeslickRep","GLOBAL",1)~
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) Global("X#QuayleRep","GLOBAL",0)~ THEN @60 DO ~IncrementGlobal("X#QuayleRep","GLOBAL",1)~
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) Global("X#QuayleRep","GLOBAL",1)~ THEN @61 DO ~IncrementGlobal("X#QuayleRep","GLOBAL",1)~
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) Global("X#QuayleRep","GLOBAL",2)~ THEN @62 DO ~IncrementGlobal("X#QuayleRep","GLOBAL",1)~
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) Global("X#SkieRep","GLOBAL",0)~ THEN @63 DO ~IncrementGlobal("X#SkieRep","GLOBAL",1)~
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) Global("X#SkieRep","GLOBAL",1)~ THEN @64 DO ~IncrementGlobal("X#SkieRep","GLOBAL",1)~
== ~%SKIE_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) Global("X#SkieRep","GLOBAL",2)~ THEN @65 DO ~IncrementGlobal("X#SkieRep","GLOBAL",1)~
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("X#CoranRep","GLOBAL",0)~ THEN @66 DO ~IncrementGlobal("X#CoranRep","GLOBAL",1)~
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("X#CoranRep","GLOBAL",1)~ THEN @67 DO ~IncrementGlobal("X#CoranRep","GLOBAL",1)~
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("X#CoranRep","GLOBAL",2)~ THEN @68 DO ~IncrementGlobal("X#CoranRep","GLOBAL",1)~
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#MinscRep","GLOBAL",0)~ THEN @69 DO ~IncrementGlobal("X#MinscRep","GLOBAL",1)~
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#MinscRep","GLOBAL",1)~ THEN @70 DO ~IncrementGlobal("X#MinscRep","GLOBAL",1)~
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#MinscRep","GLOBAL",2)~ THEN @71 DO ~IncrementGlobal("X#MinscRep","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#DynaMinscRep","GLOBAL",0)~ THEN @72 DO ~IncrementGlobal("X#DynaMinscRep","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#DynaMinscRep","GLOBAL",1)~ THEN @73 DO ~IncrementGlobal("X#DynaMinscRep","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Global("X#DynaMinscRep","GLOBAL",2)~ THEN @74 DO ~IncrementGlobal("X#DynaMinscRep","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ IF ~!InParty("minsc") InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Global("X#DynaheirRep","GLOBAL",0)~ THEN @75 DO ~IncrementGlobal("X#DynaheirRep","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ IF ~!InParty("minsc") InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Global("X#DynaheirRep","GLOBAL",1)~ THEN @76 DO ~IncrementGlobal("X#DynaheirRep","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ IF ~!InParty("minsc") InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Global("X#DynaheirRep","GLOBAL",2)~ THEN @74 DO ~IncrementGlobal("X#DynaheirRep","GLOBAL",1)~
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Global("X#EdwinRep","GLOBAL",0)~ THEN @77 DO ~IncrementGlobal("X#EdwinRep","GLOBAL",1)~
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Global("X#EdwinRep","GLOBAL",1)~ THEN @78 DO ~IncrementGlobal("X#EdwinRep","GLOBAL",1)~
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Global("X#EdwinRep","GLOBAL",2)~ THEN @79 DO ~IncrementGlobal("X#EdwinRep","GLOBAL",1)~
== ~%BRANWEN_BANTER%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) Global("P#BranwenRep","GLOBAL",0)~ THEN @80 DO ~IncrementGlobal("P#BranwenRep","GLOBAL",1)~
== ~%BRANWEN_BANTER%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) Global("P#BranwenRep","GLOBAL",1)~ THEN @81 DO ~IncrementGlobal("P#BranwenRep","GLOBAL",1)~
== ~%BRANWEN_BANTER%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) Global("P#BranwenRep","GLOBAL",2)~ THEN @82 DO ~IncrementGlobal("P#BranwenRep","GLOBAL",1)~
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) Global("X#TiaxRep","GLOBAL",0)~ THEN @83 DO ~IncrementGlobal("X#TiaxRep","GLOBAL",1)~
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) Global("X#TiaxRep","GLOBAL",1)~ THEN @84 DO ~IncrementGlobal("X#TiaxRep","GLOBAL",1)~
== ~%TIAX_BANTER%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) Global("X#TiaxRep","GLOBAL",2)~ THEN @85 DO ~IncrementGlobal("X#TiaxRep","GLOBAL",1)~
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) Global("X#ViconiaRep","GLOBAL",0)~ THEN @86 DO ~IncrementGlobal("X#ViconiaRep","GLOBAL",1)~
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) Global("X#ViconiaRep","GLOBAL",1)~ THEN @87 DO ~IncrementGlobal("X#ViconiaRep","GLOBAL",1)~
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) Global("X#ViconiaRep","GLOBAL",2)~ THEN @88 DO ~IncrementGlobal("X#ViconiaRep","GLOBAL",1)~
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharTeelRep","GLOBAL",0)~ THEN @89 DO ~IncrementGlobal("X#SharTeelRep","GLOBAL",1)~
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharTeelRep","GLOBAL",1)~ THEN @90 DO ~IncrementGlobal("X#SharTeelRep","GLOBAL",1)~
== ~%SHARTEEL_BANTER%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharTeelRep","GLOBAL",2)~ THEN @91 DO ~IncrementGlobal("X#SharTeelRep","GLOBAL",1)~
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#AloraRep","GLOBAL",0)~ THEN @92 DO ~IncrementGlobal("X#AloraRep","GLOBAL",1)~
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#AloraRep","GLOBAL",1)~ THEN @93 DO ~IncrementGlobal("X#AloraRep","GLOBAL",1)~
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#AloraRep","GLOBAL",2)~ THEN @94 DO ~IncrementGlobal("X#AloraRep","GLOBAL",1)~
== ~X#LP3REP~ @95
END
IF ~ReputationGT(Player1,10)~ THEN REPLY @96 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP3RepTalk","GLOBAL",1)~ EXTERN ~X#LP3REP~ X#Troubador3WhyBadGood
IF ~ReputationLT(Player1,11)~ THEN REPLY @96 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP3RepTalk","GLOBAL",1)~ EXTERN ~X#LP3REP~ X#Troubador3WhyBadEvil
IF ~~ THEN REPLY @97  DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP3RepTalk","GLOBAL",1) IncrementGlobal("X#UseTroubadorRep","GLOBAL",1)~ EXTERN ~X#LP3REP~ X#Troubador3MakeBad
IF ~Class(Player1,PALADIN_ALL)~ THEN REPLY @98 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP3RepTalk","GLOBAL",1)~ EXIT
IF ~Class(Player1,THIEF_ALL)~ THEN REPLY @99 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1) SetGlobal("X#LakeP3RepTalk","GLOBAL",1)~ EXIT
IF ~Global("X#TroubadorRep","GLOBAL",1) Global("X#LakeP3RepTalk","GLOBAL",0)~ THEN REPLY @100 EXTERN ~X#LP3REP~ X#Troubador3RepAlready

APPEND ~X#LP3REP~
/* met a different troubador */
IF ~~ THEN X#Troubador3RepAlready
SAY @101
++ @102 DO ~IncrementGlobal("X#UseTroubadorRep","GLOBAL",1)~ + X#Troubador3OfferInterested
++ @8 + X#Troubador3OfferDeclined
END

/* No, thanks */
IF ~~ X#Troubador3OfferDeclined
SAY @103
IF ~~ THEN EXIT
END

END

/* Why should we use this service? */
CHAIN ~X#LP3REP~ X#Troubador3WhyBadGood
@104
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @105
END
IF ~~ THEN REPLY @97 DO ~SetGlobal("X#TroubadorRep","GLOBAL",1)~ EXTERN ~X#LP3REP~ X#Troubador3MakeBad
IF ~~ THEN REPLY @106 EXTERN ~X#LP3REP~ X#Troubador3OfferDeclined

CHAIN ~X#LP3REP~ X#Troubador3WhyBadEvil
@107
== ~%VICONIA_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @108
END
IF ~~ THEN REPLY @109 DO ~IncrementGlobal("X#UseTroubadorRep","GLOBAL",1)~ EXTERN ~X#LP3REP~ X#Troubador3MakeBad
IF ~~ THEN REPLY @106 EXTERN ~X#LP3REP~ X#Troubador3OfferDeclined

/* the deal is done */
APPEND ~X#LP3REP~
IF ~~ THEN X#Troubador3MakeBad
SAY @110
+ ~Reputation(Player1,20)~ + @111 + X#T3MB20.1
+ ~Reputation(Player1,19)~ + @112 + X#T3MB19.1
+ ~Reputation(Player1,18)~ + @112 + X#T3MB18.1
+ ~Reputation(Player1,17)~ + @112 + X#T3MB17.1
+ ~Reputation(Player1,16)~ + @112 + X#T3MB16.1
+ ~Reputation(Player1,15)~ + @112 + X#T3MB15.1
+ ~Reputation(Player1,14)~ + @112 + X#T3MB14.1
+ ~Reputation(Player1,13)~ + @112 + X#T3MB13.1
+ ~Reputation(Player1,12)~ + @112 + X#T3MB12.1
+ ~Reputation(Player1,11)~ + @112 + X#T3MB11.1
+ ~Reputation(Player1,10)~ + @112 + X#T3MB10.1
+ ~Reputation(Player1,9)~ + @112 + X#T3MB9.1
+ ~Reputation(Player1,8)~ + @112 + X#T3MB8.1
+ ~Reputation(Player1,7)~ + @112 + X#T3MB7.1
+ ~Reputation(Player1,6)~ + @112 + X#T3MB6.1
+ ~Reputation(Player1,5)~ + @112 + X#T3MB5.1
+ ~Reputation(Player1,4)~ + @112 + X#T3MB4.1
+ ~ReputationLT(Player1,4)~ + @112 + X#T3MBNotPossible
+ ~Reputation(Player1,20)~ + @113 + X#T3MB20.2
+ ~Reputation(Player1,19)~ + @113 + X#T3MB19.2
+ ~Reputation(Player1,18)~ + @113 + X#T3MB18.2
+ ~Reputation(Player1,17)~ + @113 + X#T3MB17.2
+ ~Reputation(Player1,16)~ + @113 + X#T3MB16.2
+ ~Reputation(Player1,15)~ + @113 + X#T3MB15.2
+ ~Reputation(Player1,14)~ + @113 + X#T3MB14.2
+ ~Reputation(Player1,13)~ + @113 + X#T3MB13.2
+ ~Reputation(Player1,12)~ + @113 + X#T3MB12.2
+ ~Reputation(Player1,11)~ + @113 + X#T3MB11.2
+ ~Reputation(Player1,10)~ + @113 + X#T3MB10.2
+ ~Reputation(Player1,9)~ + @113 + X#T3MB9.2
+ ~Reputation(Player1,8)~ + @113 + X#T3MB8.2
+ ~Reputation(Player1,7)~ + @113 + X#T3MB7.2
+ ~Reputation(Player1,6)~ + @113 + X#T3MB6.2
+ ~Reputation(Player1,5)~ + @113 + X#T3MB5.2
+ ~Reputation(Player1,4)~ + @113 + X#T3MBALittle
+ ~ReputationLT(Player1,4)~ + @113 + X#T3MBNotPossible
+ ~Reputation(Player1,20)~ + @114 + X#T3MB20.3
+ ~Reputation(Player1,19)~ + @114 + X#T3MB19.3
+ ~Reputation(Player1,18)~ + @114 + X#T3MB18.3
+ ~Reputation(Player1,17)~ + @114 + X#T3MB17.3
+ ~Reputation(Player1,16)~ + @114 + X#T3MB16.3
+ ~Reputation(Player1,15)~ + @114 + X#T3MB15.3
+ ~Reputation(Player1,14)~ + @114 + X#T3MB14.3
+ ~Reputation(Player1,13)~ + @114 + X#T3MB13.3
+ ~Reputation(Player1,12)~ + @114 + X#T3MB12.3
+ ~Reputation(Player1,11)~ + @114 + X#T3MB11.3
+ ~Reputation(Player1,10)~ + @114 + X#T3MB10.3
+ ~Reputation(Player1,9)~ + @114 + X#T3MB9.3
+ ~Reputation(Player1,8)~ + @114 + X#T3MB8.3
+ ~Reputation(Player1,7)~ + @114 + X#T3MB7.3
+ ~Reputation(Player1,6)~ + @114 + X#T3MB6.3
+ ~Reputation(Player1,5)~ + @114 + X#T3MBModerate
+ ~Reputation(Player1,4)~ + @114 + X#T3MBALittle
+ ~ReputationLT(Player1,4)~ + @114 + X#T3MBNotPossible
END

IF ~~ THEN X#T3MB20.1
SAY @115
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1499)~ + @117 DO ~TakePartyGold(1500) DestroyGold(1500) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB19.1
SAY @118
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1199)~ + @117 DO ~TakePartyGold(1200) DestroyGold(1200) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB18.1
SAY @119
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(999)~ + @117 DO ~TakePartyGold(1000) DestroyGold(1000) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB17.1
SAY @120
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(499)~ + @117 DO ~TakePartyGold(500) DestroyGold(500) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB16.1
SAY @121
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(499)~ + @117 DO ~TakePartyGold(500) DestroyGold(500) ReputationInc(-1)~ + X#Troubador3Final
END


IF ~~ THEN X#T3MB15.1
SAY @122
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(399)~ + @117 DO ~TakePartyGold(400) DestroyGold(400) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB14.1
SAY @123
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(199)~ + @117 DO ~TakePartyGold(200) DestroyGold(200) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB13.1
SAY @124
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(299)~ + @117 DO ~TakePartyGold(300) DestroyGold(300) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB12.1
SAY @125
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(399)~ + @117 DO ~TakePartyGold(400) DestroyGold(400) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB11.1
SAY @126
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(499)~ + @117 DO ~TakePartyGold(500) DestroyGold(500) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB10.1
SAY @127
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(699)~ + @117 DO ~TakePartyGold(700) DestroyGold(700) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB9.1
SAY @128
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(899)~ + @117 DO ~TakePartyGold(900) DestroyGold(900) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB8.1
SAY @129
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1199)~ + @117 DO ~TakePartyGold(1200) DestroyGold(1200) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB7.1
SAY @130
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1499)~ + @117 DO ~TakePartyGold(1500) DestroyGold(1500) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB6.1
SAY @131
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1999)~ + @117 DO ~TakePartyGold(2000) DestroyGold(2000) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB5.1
SAY @132
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(2499)~ + @117 DO ~TakePartyGold(2500) DestroyGold(2500) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB4.1
SAY @133
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(4999)~ + @117 DO ~TakePartyGold(5000) DestroyGold(5000) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB20.2
SAY @134
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(2399)~ + @117 DO ~TakePartyGold(2400) DestroyGold(2400) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB19.2
SAY @135
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1899)~ + @117 DO ~TakePartyGold(1900) DestroyGold(1900) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB18.2
SAY @136
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1299)~ + @117 DO ~TakePartyGold(1300) DestroyGold(1300) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB17.2
SAY @137
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(899)~ + @117 DO ~TakePartyGold(900) DestroyGold(900) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB16.2
SAY @138
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(799)~ + @117 DO ~TakePartyGold(800) DestroyGold(800) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB15.2
SAY @139
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(499)~ + @117 DO ~TakePartyGold(500) DestroyGold(500) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB14.2
SAY @140
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(449)~ + @117 DO ~TakePartyGold(450) DestroyGold(450) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB13.2
SAY @141
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(599)~ + @117 DO ~TakePartyGold(600) DestroyGold(600) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB12.2
SAY @142
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(799)~ + @117 DO ~TakePartyGold(800) DestroyGold(800) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB11.2
SAY @143
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(999)~ + @117 DO ~TakePartyGold(1000) DestroyGold(1000) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB10.2
SAY @144
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1399)~ + @117 DO ~TakePartyGold(1400) DestroyGold(1400) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB9.2
SAY @145
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1799)~ + @117 DO ~TakePartyGold(1800) DestroyGold(1800) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB8.2
SAY @146
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(2399)~ + @117 DO ~TakePartyGold(2400) DestroyGold(2400) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB7.2
SAY @147
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(2999)~ + @117 DO ~TakePartyGold(3000) DestroyGold(3000) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB6.2
SAY @148
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(3999)~ + @117 DO ~TakePartyGold(4000) DestroyGold(4000) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB5.2
SAY @149
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(6499)~ + @117 DO ~TakePartyGold(6500) DestroyGold(6500) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB20.3
SAY @150
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(2799)~ + @117 DO ~TakePartyGold(2800) DestroyGold(2800) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB19.3
SAY @132
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(2499)~ + @117 DO ~TakePartyGold(2500) DestroyGold(2500) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB18.3
SAY @131
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1999)~ + @117 DO ~TakePartyGold(2000) DestroyGold(2000) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB17.3
SAY @151
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1499)~ + @117 DO ~TakePartyGold(1500) DestroyGold(1500) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB16.3
SAY @138
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(799)~ + @117 DO ~TakePartyGold(800) DestroyGold(800) ReputationInc(-3)~ + X#Troubador3Final
END


IF ~~ THEN X#T3MB15.3
SAY @152
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(699)~ + @117 DO ~TakePartyGold(700) DestroyGold(700) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB14.3
SAY @153
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(699)~ + @117 DO ~TakePartyGold(700) DestroyGold(700) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB13.3
SAY @154
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(899)~ + @117 DO ~TakePartyGold(900) DestroyGold(900) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB12.3
SAY @155
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1199)~ + @117 DO ~TakePartyGold(1200) DestroyGold(1200) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB11.3
SAY @156
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(1599)~ + @117 DO ~TakePartyGold(1600) DestroyGold(1600) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB10.3
SAY @157
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(2199)~ + @117 DO ~TakePartyGold(2200) DestroyGold(2200) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB9.3
SAY @158
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(2799)~ + @117 DO ~TakePartyGold(2800) DestroyGold(2800) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB8.3
SAY @159
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(3699)~ + @117 DO ~TakePartyGold(3700) DestroyGold(3700) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB7.3
SAY @160
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(3999)~ + @117 DO ~TakePartyGold(4000) DestroyGold(4000) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MB6.3
SAY @161
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(7499)~ + @117 DO ~TakePartyGold(7500) DestroyGold(7500) ReputationInc(-3)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MBALittle
SAY @162
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(4999)~ + @117 DO ~TakePartyGold(5000) DestroyGold(5000) ReputationInc(-1)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MBModerate
SAY @163
++ @116 + X#Troubador3NoCoin
+ ~PartyGoldGT(7499)~ + @117 DO ~TakePartyGold(7500) DestroyGold(7500) ReputationInc(-2)~ + X#Troubador3Final
END

IF ~~ THEN X#T3MBNotPossible
SAY @164
IF ~~ THEN EXIT
END

IF ~~ THEN X#Troubador3NoCoin
SAY @165
IF ~~ THEN EXIT
END

IF ~~ THEN X#Troubador3Final
SAY @166
IF ~~ THEN DO ~SetGlobal("X#TT3Deactivate","GLOBAL",1)~ EXIT
END

END