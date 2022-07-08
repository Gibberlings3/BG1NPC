/* Note: Where the action that follows the interjection is StartStore, it has to stay ICT rather than moving to ICT3, unless the shopkeep has a special dialogue for first meeting only. With ICT, only one NPC will get to interject at a time, but with ICT3, if the interjection runs once without a particular NPC in the party, that NPC will never get to say his piece. */

/* Theodon (Many Interjections) */
/* passback supplied */
I_C_T4 ~%tutu_scriptbg%WILLIA%eet_var%~ 10 X#WILLIA10
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Gender(Player1,FEMALE) !Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceMatch","GLOBAL",1)~ THEN @0
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Gender(Player1,FEMALE) !Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceMatch","GLOBAL",1)~ THEN @1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Gender(Player1,FEMALE) !Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceMatch","GLOBAL",1)~ THEN @2
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Gender(Player1,FEMALE) !Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceMatch","GLOBAL",1)~ THEN @3
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @4
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @5
== ~%ELDOTH_JOINED%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @6
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @7
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @8
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @9
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @10
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @11
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @12
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @13
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @14
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, MALE)~ THEN @15
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, MALE)~ THEN @16
== ~%MINSC_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, MALE)~ THEN @17
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1,MALE)~ THEN @18
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Gender(Player1,FEMALE) Alignment(Player1,MASK_EVIL)~ THEN @19
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Gender(Player1,FEMALE) Alignment(Player1,MASK_EVIL)~ THEN @20
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @21
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @22
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @23
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @24
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @25
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @26
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @27
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @28
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @29
== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @30
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @31
== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @32
== ~%tutu_scriptbg%WILLIA%eet_var%~ @33
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_scriptbg%WILLIA%eet_var%~ 4 X#WILLIA4
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @192
== ~%CORAN_JOINED%~ IF ~Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE) Global("P#CoranLover","GLOBAL",1)~ THEN @193
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE) Global("P#CoranLover","GLOBAL",1)~ THEN @194
== ~%CORAN_JOINED%~ IF ~Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE) Global("P#CoranLover","GLOBAL",1)~ THEN @195
END

/* passback supplied */
I_C_T3 ~%tutu_scriptbg%WILLIA%eet_var%~ 8 X#WILLIA8
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @197
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @198
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @199
END

/* if Brage was brought to Oublek */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%OUBLEK~ 3 X#OUBLEK3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @34
== ~%tutu_var%OUBLEK~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @919
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @35
== ~%tutu_var%OUBLEK~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @36
END

/* Dynaheir */
/* passback not required - trans actions are variable related or award experience */
I_C_T3 ~%tutu_var%DYNAHE~ 0 X#DYNAHE0
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @719
== ~%tutu_var%DYNAHE~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @720
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @721
== ~%KHALID_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") HPPercentGT("khalid",90)~ THEN @722
== ~%KHALID_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !HPPercentGT("khalid",90)~ THEN @723
== ~%tutu_var%DYNAHE~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @724
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @725
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%DYNAHE~ 10 X#DYNAHE10
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @37
DO ~SetGlobal("X#AjantisDynaheir","GLOBAL",1) SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~
== ~%tutu_var%DYNAHE~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @38
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @39
DO ~SetGlobal("X#KivanDynaheir","GLOBAL",1)~
== ~%tutu_var%DYNAHE~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @40
END

/* Laskal */
/* passback supplied */
I_C_T4 ~%tutu_var%LASKAL~ 5 X#LASKAL5
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @41
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @42
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @43
== ~%tutu_var%LASKAL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @44
//== ~%tutu_var%LASKAL~ @45
END

/* Rill (slave leader in mines, after giving him money */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_scripts%LAVLEAD~ 2 X#LAVLEAD2
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @848
== ~%tutu_scripts%LAVLEAD~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @849
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @850
== ~%tutu_scripts%LAVLEAD~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @851
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @853
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @852
== ~%tutu_scripts%LAVLEAD~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @854
END

/* passback supplied */
I_C_T3 ~%tutu_scripts%LAVLEAD~ 4 X#LAVLEAD4
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @46
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) PartyGoldGT(999)~ THEN @47
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) PartyGoldLT(1000)~ THEN @910
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) PartyGoldLT(1000)~ THEN @911
== ~%tutu_scripts%LAVLEAD~ @48
END

/* Niklos */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%NIKLOS~ 8 X#NIKLOS8
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @49
== ~%tutu_var%NIKLOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @920
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @50
== ~%tutu_var%NIKLOS~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @51
END

/* Sonner */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%SONNER~ 4 X#SONNER4
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @53 DO ~SetGlobal("X#EdwinSonner","GLOBAL",1)~
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @52
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @54
== ~%tutu_var%SONNER~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @55
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @56
== ~%tutu_var%SONNER~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @57
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @58
END

/* Noober */
/* passback not required - no trans actions... except the one added by this interjection */
I_C_T3 ~%tutu_var%NOOBER~ 10 X#NOOBER10
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @808
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @809
== ~%IMOEN_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @810
== ~%tutu_var%NOOBER~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @811
DO ~EscapeArea()~
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%NOOBER~ 11 X#NOOBER11
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @916
== ~%tutu_var%NOOBER~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @917
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @61
== ~%tutu_var%NOOBER~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @62
END

/* Ardrouine */
/* passback supplied */
I_C_T3 ~%tutu_var%ARDROU~ 0 X#ARDROU0
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @64
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @65
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @66
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @67
== ~%tutu_var%ARDROU~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @68
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @69
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @70
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @71
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @72
== ~%tutu_var%ARDROU~ @73 DO ~SetGlobal("J#ArdTalk","GLOBAL",1)~
END

/* passback supplied */
I_C_T3 ~%tutu_var%ARDROU~ 2 X#ARDROU2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @279
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @280
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @281
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @282
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @283
== ~%tutu_var%ARDROU~ @284
END

/* Tiber */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%TIBER~ 2 X#TIBER2
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @74
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @75
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @76
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @77
== ~%tutu_var%TIBER~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @78
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%TIBER~ 4 X#TIBER4
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @348
== ~%tutu_var%TIBER~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @353
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @349
== ~%tutu_var%TIBER~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @350
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @351
== ~%tutu_var%TIBER~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @352
END

/* Nadarin */
/* passback not required - trans actions are variable related */
I_C_T3 ~%tutu_var%NADARI~ 1 X#NADARI1
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @79
== ~%tutu_var%NADARI~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @80
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @81
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @82
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @83
== ~%tutu_var%NADARI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @84
END

/* Arghain */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%ARGHAI~ 0 X#ARGHAI
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @86
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @87
END

/* Peter of the North */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%COKSMTH~ 0 X#COKSMTH0
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @149
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @150
== ~%tutu_var%COKSMTH~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @151
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @152
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @153
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @154
== ~%tutu_var%COKSMTH~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @155
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%COKSMTH~ 1 X#COKSMTH1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @458
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @459
== ~%tutu_var%COKSMTH~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @460
END


/* individual passbacks supplied */
I_C_T3 ~%tutu_var%COKSMTH~ 3 X#COKSMTH3
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @89
== ~%tutu_var%COKSMTH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @90
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @91
== ~%tutu_var%COKSMTH~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @92
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%COKSMTH~ 5 X#COKSMTH5
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @89
== ~%tutu_var%COKSMTH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @90
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @91
== ~%tutu_var%COKSMTH~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @92
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%COKSMTH~ 6 X#COKSMTH6
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @89
== ~%tutu_var%COKSMTH~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @90
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @91
== ~%tutu_var%COKSMTH~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @92
END

/* Thalantyr */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%THALAN~ 0 X#THALAN0
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @94
== ~%tutu_var%THALAN~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @921
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("P#KivWelcome","GLOBAL",0)~ THEN @95
== ~%tutu_var%THALAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("P#KivWelcome","GLOBAL",0)~ THEN @96
DO ~GiveItemCreate("x#kispr","kivan",1,0,0) SetGlobal("P#KivWelcome","GLOBAL",1)~
END

/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%THALAN~ 32 X#THALAN32
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @435
== ~%tutu_var%THALAN~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @436
// == ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @437
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @438
== ~%tutu_var%MELICA~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @439
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @440
== ~%tutu_var%MELICA~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @441
== ~%tutu_var%THALAN~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @442
// == ~%tutu_var%THALAN~ @443
END

/* Brevlik */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BREVLI~ 14 X#BREVLI17
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @326
 == ~%tutu_var%BREVLI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @327
 == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @328
 == ~%tutu_var%BREVLI~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @329
END


/* interjection is hopelessly broken */
/* INTERJECT ~%tutu_var%BREVLI~ 17 X#BREVLI17
== ~%tutu_var%BREVLI~ IF ~~ THEN @109 DO ~SetGlobal("HelpBrevlik","GLOBAL",1)~
END
COPY_TRANS ~%tutu_var%BREVLI~ 17
IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN EXTERN ~%SKIE_JOINED%~ X#BREVLI17.1
IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN EXTERN ~%AJANTIS_JOINED%~ X#BREVLI17.2
IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)~ THEN EXTERN ~%BRANWEN_JOINED%~ X#BREVLI17.3
IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN EXTERN ~%BRANWEN_JOINED%~ X#BREVLI17.4
IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN  EXTERN ~%BRANWEN_JOINED%~ X#BREVLI17.5
IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN EXTERN ~%BRANWEN_JOINED%~ X#BREVLI17.6
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN EXTERN ~%JAHEIRA_JOINED%~ X#BREVLI17.7

CHAIN ~%SKIE_JOINED%~ X#BREVLI17.1
@107
== ~%tutu_var%BREVLI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @108
END
COPY_TRANS ~%tutu_var%BREVLI~ 17

CHAIN ~%AJANTIS_JOINED%~ X#BREVLI17.2
@105 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @106
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%BREVLI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @108
END
COPY_TRANS ~%tutu_var%BREVLI~ 17

CHAIN ~%BRANWEN_JOINED%~ X#BREVLI17.3
@104
== ~%tutu_var%BREVLI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @101
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @105 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @106
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%BREVLI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @108
END
COPY_TRANS ~%tutu_var%BREVLI~ 17

CHAIN ~%BRANWEN_JOINED%~ X#BREVLI17.4
@103
== ~%tutu_var%BREVLI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @101
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @105 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @106
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%BREVLI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @108
END
COPY_TRANS ~%tutu_var%BREVLI~ 17

CHAIN ~%BRANWEN_JOINED%~ X#BREVLI17.5
@102
== ~%tutu_var%BREVLI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @101
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @105 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @106
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%BREVLI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @108
END
COPY_TRANS ~%tutu_var%BREVLI~ 17

CHAIN ~%BRANWEN_JOINED%~ X#BREVLI17.6
@100
== ~%tutu_var%BREVLI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @101
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @105 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @106
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%BREVLI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @108
END
COPY_TRANS ~%tutu_var%BREVLI~ 17

CHAIN ~%JAHEIRA_JOINED%~ X#BREVLI17.7
@98
== ~%tutu_var%BREVLI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @99
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @100
== ~%tutu_var%BREVLI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @101
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @102
== ~%tutu_var%BREVLI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @101
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @103
== ~%tutu_var%BREVLI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("viconia") !InMyArea("viconia") StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @101
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @104
== ~%tutu_var%BREVLI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @101
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @105 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @106
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%BREVLI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @108
END
COPY_TRANS ~%tutu_var%BREVLI~ 17 */

/* Rieltar */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%RIELTA~ 0 X#RIELTA0
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @110
== ~%tutu_var%RIELTA~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @111
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @112
== ~%tutu_var%RIELTA~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @113
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%RIELTA~ 2 X#RIELTA2
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @845
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @846
== ~%tutu_var%RIELTA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @847
END

/* Nemphre */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%NEMPHR~ 3 X#NEMPHR3
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @114
== ~%tutu_var%NEMPHR~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @115
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @116
DO ~ReallyForceSpellRES("SPWI106","nemphre")~
== ~%tutu_var%NEMPHR~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @922
END

/* Phierkas */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%PHEIRK~ 1 X#PHEIRK1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @117
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @118
== ~%tutu_var%PHEIRK~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @119
END

/* Lucky Aello */
/* Action that follows is StartStore() */
//I_C_T3 ~%tutu_var%LUCKY~ 0 X#LUCKY0
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @120
//== ~%tutu_var%LUCKY~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @121
//== ~%tutu_var%LUCKY~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @122
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @123
//== ~%tutu_var%LUCKY~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @124
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @125
//== ~%tutu_var%LUCKY~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @126
//== ~%tutu_var%LUCKY~ @127
//END

/* Areana - Noblewoman and Cyrdemac (Baldur's Gate N) */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%NOBW8~ 3 X#NOBW83
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @128
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @129
== ~%tutu_var%NOBW8~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @130
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @131
END

/* Cordyr */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%CORDYR~ 1 X#CORDYR1
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @133
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @134
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @135
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @136
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @137
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @138
== ~%CORAN_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @139
END

/* Desreta */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%DESRET~ 0 X#DESRET0
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @140
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @141
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @142
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @143
END

/* Canticle in CW Mines */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%CANTIC~ 0 X#CANTIC0
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @145
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @146
== ~%tutu_var%CANTIC~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @147
END

/* Brilla */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%BRILLA~ 0 X#BRILLA0
== ~%ELDOTH_JOINED%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) OR(3) !InParty("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID)~ THEN @157
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @158
== ~%CORAN_JOINED%~ IF ~InParty ("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1,MALE)~ THEN @159
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%BRILLA~ 7 X#BRILLA7
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @606
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @607
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @608
DO ~GiveGoldForce(1)~
END

/* Abela */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%ABELA~ 7 X#ABELA7
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @160
== ~%tutu_var%ABELA~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @161
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @162
== ~%tutu_var%ABELA~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @163
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%ABELA~ 9 X#ABELA9
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @542
== ~%tutu_var%ABELA~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @543
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @544
== ~%tutu_var%ABELA~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @545
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @546
== ~%tutu_var%ABELA~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @547
END

/* Poe */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%POE~ 15 X#POE15
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) OR(3) !InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @165
== ~%tutu_var%POE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) OR(3) !InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @166
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @167
== ~%tutu_var%POE~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @168
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @169
== ~%tutu_var%POE~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @170
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @171
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @172
== ~%GARRICK_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @173
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @174
== ~%tutu_var%POE~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @175
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @176
== ~%tutu_var%POE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @177
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @178
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @179
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @180
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @181
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @182
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @183
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @184
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @185
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @186
== ~%tutu_var%POE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @187
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @188
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @189
== ~%tutu_var%POE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @190
END

/* Kirian */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%KIRIAN~ 4 X#KIRIAN3
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @754
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @755
== ~%tutu_var%KIRIAN~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @756
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%KIRIAN~ 5 X#KIRIAN5
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @201
== ~%tutu_var%KIRIAN~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @923
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @202
== ~%tutu_var%KIRIAN~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @924
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @203
== ~%tutu_var%KIRIAN~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @205
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @204
== ~%tutu_var%KIRIAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @925
END

/* Davaeorn */
/* passback supplied */
I_C_T3 ~%tutu_var%DAVAEO~ 0 X#DAVAEO0
== ~%YESLICK_JOINED%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @206
== ~%tutu_var%DAVAEO~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @207
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @208
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class("%IMOEN_DV%",MAGE_ALL)~ THEN @209
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @210
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @211
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @212
== ~%tutu_var%DAVAEO~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @213
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @214
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @215
== ~%tutu_var%DAVAEO~ @216
END

/* Destus Gurn */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%DESTUS~ 2 X#DESTUS2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @217
== ~%tutu_var%DESTUS~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @926
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @218
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @219
== ~%KIVAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @220
== ~%tutu_var%DESTUS~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @221
END

/* Gerde */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%GERDE~ 0 X#GERDE0
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @222
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @223 DO ~SetGlobal("P#KivanAnkheg","GLOBAL",1)~
== ~%tutu_var%GERDE~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @224
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @225
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @226
END

/* Degrodel */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%DEGROD~ 2 X#DEGROD2
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @227
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @228
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @229
END

/* Nivek */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%KEVIN~ 1 X#KEVIN1
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @231
== ~%tutu_var%KEVIN~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @927
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @232
== ~%tutu_var%KEVIN~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @233
END

/* Shistall */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%SHISTA~ 8 X#SHISTA8
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @234
== ~%tutu_var%SHISTA~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @928
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @235
== ~%tutu_var%SHISTA~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @236
END

/* Berrun Ghastkill */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%BERRUN~ 11 X#BERRUN11
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @600
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @601
END

/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%BERRUN~ 12 X#BERRUN12
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @600
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @601
END

/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%BERRUN~ 13 X#BERRUN13
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @600
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @601
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BERRUN~ 15 X#BERRUN15
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @244
== ~%tutu_var%BERRUN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @238
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @245
== ~%tutu_var%BERRUN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @240
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @241
== ~%tutu_var%BERRUN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @929
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @242
== ~%tutu_var%BERRUN~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @930
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BERRUN~ 16 X#BERRUN16
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @244
== ~%tutu_var%BERRUN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @238
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @245
== ~%tutu_var%BERRUN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @240
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @241
== ~%tutu_var%BERRUN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @929
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @242
== ~%tutu_var%BERRUN~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @930
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BERRUN~ 17 X#BERRUN17
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @244
== ~%tutu_var%BERRUN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @238
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @245
== ~%tutu_var%BERRUN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @240
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @241
== ~%tutu_var%BERRUN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @929
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @242
== ~%tutu_var%BERRUN~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @930
END

/* passback not required - trans action is journal related */
I_C_T3 ~%tutu_var%BERRUN~ 19 X#BERRUN19
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @360
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @361
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @362
END

/* Liia */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%LIIA~ 8 X#LIIA8
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @246
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @247
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @248
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @249
END

/* Farmer Brun */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%FARMBR~ 0 X#FARMBR0
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @251
== ~%EDWIN_JOINED%~ IF ~Global("X#EdwinSonner","GLOBAL",1) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @252
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%FARMBR~ 1 X#FARMBR1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @251
== ~%EDWIN_JOINED%~ IF ~Global("X#EdwinSonner","GLOBAL",1) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @252
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%FARMBR~ 2 X#FARMBR2
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @251
== ~%EDWIN_JOINED%~ IF ~Global("X#EdwinSonner","GLOBAL",1) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @252
END

/* passback not required - trans actions are global and journal related */
I_C_T3 ~%tutu_var%FARMBR~ 6 X#FARMBR6
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @672
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @673
END

/* passback not required - trans actions are increase rep, add party XP, add journal entry */
I_C_T3 ~%tutu_var%FARMBR~ 10 X#FARMBR10
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @254
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @255
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @256
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @257
END

/* Gallor */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%GALLOR~ 2 X#GALLOR2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @536
== ~%tutu_var%GALLOR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @931
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @537
== ~%tutu_var%GALLOR~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @538
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%GALLOR~ 5 X#GALLOR5
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @480
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @481 DO ~SetGlobal("X#SharGallor","GLOBAL",1)~
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @482
END

/* passback not required - trans actions are global related */
I_C_T3 ~%tutu_var%GALLOR~ 6 X#GALLOR6
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @258
DO ~SetGlobal("HelpGallor","GLOBAL",1) SetGlobal("X#DynaMinscHelpGallor","GLOBAL",1)~
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @258
DO ~SetGlobal("HelpGallor","GLOBAL",1) SetGlobal("X#DynaNoMinscHelpGallor","GLOBAL",1)~
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @259
DO ~SetGlobal("HelpGallor","GLOBAL",1) SetGlobal("X#KivanHelpGallor","GLOBAL",1)~
END

/* passback not required - trans actions are global related */
I_C_T3 ~%tutu_var%GALLOR~ 7 X#GALLOR7
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @258
DO ~SetGlobal("HelpGallor","GLOBAL",1) SetGlobal("X#DynaMinscHelpGallor","GLOBAL",1)~
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @258
DO ~SetGlobal("HelpGallor","GLOBAL",1) SetGlobal("X#DynaNoMinscHelpGallor","GLOBAL",1)~
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @259
DO ~SetGlobal("X#KivanHelpGallor","GLOBAL",1)~
END

/* Angelo */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%ANGELO~ 0 X#ANGELO0
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @260
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @261
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @262
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @263
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @264 DO ~SetGlobal("X#SkieAngelo","GLOBAL",1)~
== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @265
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @266
== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @267
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @268
== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @269
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @270
== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @271
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @272
== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @273
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @274
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @275
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) OR(3) !InParty("eldoth") !InMyArea("eldoth") StateCheck("eldoth",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @276
== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @277
DO ~ActionOverride("skie",ApplyDamagePercent("skie",5,CRUSHING))~
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%ANGELO~ 4 X#ANGELO4
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @570
== ~%tutu_var%ANGELO~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @571
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @572
== ~%tutu_var%ANGELO~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @573
END

/* Hannah */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%HANNAH~ 0 X#HANNAH0
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @285
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @286
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%HANNAH~ 1 X#HANNAH1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @709
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @710
== ~%tutu_var%HANNAH~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @711
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) OR(3) !InParty("khalid") !InMyArea("khalid") StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @712
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @713
== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @714
END

/* Neb */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_scriptbg%NEB%eet_var%~ 2 X#NEB2
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @797
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @798
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @799
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @800
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_scriptbg%NEB%eet_var%~ 8 X#NEB8
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @287
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @288
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @289
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @290
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @291
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @292
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @293
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @294
END

/* Ragefast */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%RAGEFA~ 6 X#RAGEFA6
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @296
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @297
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @298
END

/* CW Miner - the guy near the plug */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%MINEC2~ 8 X#MINEC28
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") Global("FREESLAV","GLOBAL",0)~ THEN @300
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Global("FREESLAV","GLOBAL",0)~ THEN @301
END

/* Tenya */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%TENYA~ 0 X#TENYA0
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @302
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @303
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @304
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @305
END

/* Beland */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BELAND~ 0 X#BELAND0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @307
== ~%tutu_var%BELAND~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @308
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @309
== ~%tutu_var%BELAND~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @310
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @311
== ~%tutu_var%BELAND~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @312
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @313
== ~%tutu_var%BELAND~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @314
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BELAND~ 1 X#BELAND1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @307
== ~%tutu_var%BELAND~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @308
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @309
== ~%tutu_var%BELAND~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @310
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @311
== ~%tutu_var%BELAND~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @312
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @313
== ~%tutu_var%BELAND~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @314
== ~%tutu_var%BELAND~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @315
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BELAND~ 2 X#BELAND2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @307
== ~%tutu_var%BELAND~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @308
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @309
== ~%tutu_var%BELAND~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @310
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @311
== ~%tutu_var%BELAND~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @312
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @313
== ~%tutu_var%BELAND~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @314
== ~%tutu_var%BELAND~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @315
END

/* Narcillius */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%NARCIL~ 0 X#NARCIL0
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @795
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @796
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%NARCIL~ 2 X#NARCIL2
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @316
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class("%IMOEN_DV%",MAGE_ALL)~ THEN @317
END

/* Arkushule */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%ARKUSH~ 0 X#ARKUSH0
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @318
== ~%EDWIN_JOINED%~ IF ~OR(3) Class(Player1,SORCERER) Class(Player1,BARD_ALL) Class(Player1,MAGE_ALL) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @319
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @320
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @321
END

/* Denak */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%DENAK~ 1 X#DENAK1
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @322
== ~%tutu_var%DENAK~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @932
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @323
== ~%tutu_var%DENAK~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @324
END

/* Hentold */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%HENTOL~ %hentolstate1% X#HENTOL1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @331
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @332
END

/* Revenant */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%REVEN3~ 1 X#REVEN31
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @333
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @334
== ~%tutu_var%REVEN3~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @335
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @336
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @337
== ~%tutu_var%REVEN3~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @338
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @339
END

/* Galileus */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%GALILE~ 2 X#GALILE2
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @340
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @341
== ~%tutu_var%GALILE~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @342
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @343
== ~%tutu_var%GALILE~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @344
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @345
== ~%tutu_var%GALILE~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @346
END

/* Ajantis */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%AJANTI~ 6 X#AJANTI6
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @354
== ~%tutu_var%AJANTI~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @933
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @355
== ~%tutu_var%AJANTI~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @356
END

/* CW Mines Cook */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%FCOOK2~ 0 X#FCOOK2
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @358
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @359
END

/* Arkion */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%ARKION~ 1 X#ARKION1
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @364
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @365
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @366
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @367
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @368
== ~%tutu_var%ARKION~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @369
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @370
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @371
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @372
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%ARKION~ 3 X#ARKION3
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @575
== ~%tutu_var%ARKION~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @934
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @576
== ~%tutu_var%ARKION~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @577
END

/* Bassilus */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%BASSIL~ 0 X#BASSIL0
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @373
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @374
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)
Global("X#AjantisBassilusQuest","GLOBAL",1)~ THEN @375
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)
!Global("X#AjantisBassilusQuest","GLOBAL",1)~ THEN @376
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BASSIL~ 5 X#BASSIL5
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @579
== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @580
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @581
== ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @582
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BASSIL~ 6 X#BASSIL6
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @579
== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @580
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @581
== ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @582
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BASSIL~ 10 X#BASSIL10
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @579
== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @580
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @581
== ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @582
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BASSIL~ 11 X#BASSIL11
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @579
== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @580
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @581
== ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @582
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BASSIL~ 12 X#BASSIL12
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @579
== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @580
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @581
== ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @582
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BASSIL~ 13 X#BASSIL13
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @579
== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @580
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @581
== ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @582
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BASSIL~ 14 X#BASSIL14
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @579
== ~%tutu_var%BASSIL~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @580
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @581
== ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @582
END

/* Elminster - FAI */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%ELMIN3~ 0 X#ELMIN30
== ~%tutu_var%ELMIN3~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarElm2","GLOBAL",1)~ THEN @377
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarElm2","GLOBAL",1)~ THEN @378
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @379
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @380
END

/* Elminster - Doppleganger */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%ELMINS4~ 3 X#ELMINS4
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @663
== ~%EDWIN_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @664
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @665
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @666
END


/* Elminster - BG E */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%ELMIN5~ 0 X#ELMIN50
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @381
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @382
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @383
END

/* Shar-Teel */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%SHARTE~ 1 X#SHARTE1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @384
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @385
END

/* Eldoth */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%ELDOTH~ 5 X#ELDOTH5
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @386
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @387
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @388
== ~%tutu_var%ELDOTH~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @389
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @390
== ~%tutu_var%ELDOTH~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @391
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%ELDOTH~ 7 X#ELDOTH7
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @660
== ~%tutu_var%ELDOTH~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @935
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @661
== ~%tutu_var%ELDOTH~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @662
END

/* Fergus */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%FERGUS~ 1 X#FERGUS1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @393
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @394
END

/* Ingot */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%INGOT~ 1 X#INGOT1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @395
== ~%tutu_var%INGOT~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @936
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @396
== ~%tutu_var%INGOT~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @937
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @397
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @398
== ~%MINSC_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @399
== ~%tutu_var%INGOT~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @400
END

/* Lamalha */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%LAMALH~ 0 X#LAMALH0
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @401
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @402
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @403
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @404
END

/* Meilum */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%MEILUM~ 0 X#MEILUM0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @406
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @407
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @408
== ~%tutu_var%MEILUM~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @409
END

/* Mulahey */
/* passback supplied */
I_C_T3 ~%tutu_var%MULAHE~ 2 X#MULAHE2
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @411
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @412
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @413
== ~%tutu_var%MULAHE~ @414
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%MULAHE~ 3 X#MULAHE3
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @509
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @510
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%MULAHE~ 6 X#MULAHE6
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @786
== ~%tutu_var%MULAHE~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @938
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @787
== ~%tutu_var%MULAHE~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @788
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @789
== ~%tutu_var%MULAHE~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @790
END

/* Pallonia */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%PALLON~ 2 X#PALLON2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @415
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @416
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @417
== ~%tutu_var%PALLON~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @921
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @418
== ~%tutu_var%PALLON~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @419
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%PALLON~ 3 X#PALLON3
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @420
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @421
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%PALLON~ 4 X#PALLON4
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @497
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @498
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @499
== ~%tutu_var%PALLON~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @939
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @500
== ~%tutu_var%PALLON~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @501
END

/* Safana */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%SAFANA~ 4 X#SAFANA4
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @423
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @424
END

/* Maple Willow Aspen */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%MAPLE~ 0 X#MAPLE0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @426
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @427
END

/* Voltine */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%VOLTIN~ 1 X#VOLTIN1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @428
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @429
== ~%tutu_var%VOLTIN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @430
DO ~SetGlobal("X#VoltineAdd","GLOBAL",1)~
END

/* Melicamp */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%MELICA~ 1 X#MELICA1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @431
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @432
== ~%tutu_var%MELICA~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @433
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%MELICA~ 2 X#MELICA2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @769
== ~%tutu_var%MELICA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @770
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @771
== ~%tutu_var%MELICA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @772
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @773
== ~%tutu_var%MELICA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @776
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @774
== ~%tutu_var%MELICA~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @775
END

/* Ogre Mage - CW Mines */
/* passback not required no trans actions */
I_C_T3 ~%tutu_var%OGRMA2~ 0 X#OGRMA20
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @444
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @445
== ~%YESLICK_JOINED%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @446
END

/* Caldo */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%CALDO~ 6 X#CALDO6
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @448
DO ~SetGlobal("X#JaiDryadHostile","GLOBAL",1) SetGlobal("X#FaldornHelpCaldo","GLOBAL",1)~
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @449 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @450
DO ~SetGlobal("X#JaiDryadHostile","GLOBAL",1) SetGlobal("X#JaheiraHelpCaldo","GLOBAL",1)~
== ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @451
DO ~SetGlobal("X#JaiDryadHostile","GLOBAL",1) SetGlobal("X#KhalidHelpCaldo","GLOBAL",1)~
END

/* Achen */
/* passback supplied */
I_C_T3 ~%tutu_var%ACHEN~ 3 X#ACHEN3
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @452
== ~%tutu_var%ACHEN~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @940
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @453
== ~%tutu_var%ACHEN~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @941
END

/* Amnish Guard, Nashkel - random number 12,5, so good luck */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%AMNIS~ 4 X#AMNIS4
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @454
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @455
END

/* Bentan */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BENTAN~ 4 X#BENTAN4
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @456
== ~%tutu_var%BENTAN~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @942
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @457
== ~%tutu_var%BENTAN~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @943
END

/* Drizzt */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%DRIZZT~ 0 X#DRIZZT0
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @462
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @463
== ~%tutu_var%DRIZZT~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @464
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @465
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%DRIZZT~ 1 X#DRIZZT1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @632
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @633
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%DRIZZT~ 5 X#DRIZZT5
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @634
== ~%tutu_var%DRIZZT~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @639
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @635
== ~%tutu_var%DRIZZT~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @636
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @637
== ~%tutu_var%DRIZZT~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @638
END

/* Edwin */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState0% X#EDWIN0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @466
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @467
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @468
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @469
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @470
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @471
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @472
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @473
END


/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState1% X#EDWIN1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @474
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @467
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @468
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @469
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @470
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @471
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @472
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @473
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState2% X#EDWIN2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @474
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @468
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @469
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @470
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @471
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @472
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @473
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState8% X#EDWIN8
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @652
DO ~SetGlobal("X#MinscProtestsEdwin","GLOBAL",1)~
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @653
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @654
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @655
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @656
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @944
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @657
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @658
END

/* Firebead */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%FIREBE~ %firebeadstate2% X#FIREBE2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @476
== ~%tutu_var%FIREBE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @479
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @477
== ~%tutu_var%FIREBE~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @945
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @478
== ~%tutu_var%FIREBE~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @941
END

/* Gorpel Hind */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%GORPEL~ 0 X#GORPEL0
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @483
== ~%tutu_var%GORPEL~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @484
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @485
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @486
END

/* Laryssa */
/* passback supplied */
I_C_T3 ~%tutu_var%LARYSS~ 1 X#LARYSS1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @488
== ~%tutu_var%LARYSS~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @946
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @489
== ~%tutu_var%LARYSS~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @490
END

/* Mutamin */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%MUTAMI~ 0 X#MUTAMI0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @491
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @493
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)
GlobalGT("X#KPD","GLOBAL",1)~ THEN @492
END

/* Noralee */
/* passback not required - trans action is journal related */
I_C_T3 ~%tutu_var%NORALE~ 1 X#NORALE1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @495
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @496
END

/* Permidion Stark */
/* passback supplied */
I_C_T3 ~%tutu_var%PERMID~ 1 X#PERMID1
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @503
== ~%tutu_var%PERMID~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @947
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @504
== ~%tutu_var%PERMID~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @505
END

/* Amarande */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%AMARAN~ 1 X#AMARAN1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @506
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @507
== ~%tutu_var%AMARAN~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @508
END

/* passback supplied */
I_C_T3 ~%tutu_var%AMARAN~ 4 X#AMARAN4
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @560
== ~%tutu_var%AMARAN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @561
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @562
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @563
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @564
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @565
== ~%KHALID_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @566
== ~%JAHEIRA_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @567
== ~%KHALID_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @568
== ~%tutu_var%AMARAN~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @569
END

/* Sarevok */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%SAREVO~ 11 X#SAREVO11
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @511
== ~%tutu_var%SAREVO~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @948
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @512
== ~%tutu_var%SAREVO~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @513
END

/* Ogre Mage - Sewers of BG */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%OGRMBA~ 1 X#OGRMBA1
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @514
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @515
== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @516
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @517
== ~%tutu_var%OGRMBA~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @518
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @519
== ~%tutu_var%OGRMBA~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @520
END

/* Brage */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%BRAGE~ 2 X#BRAGE2
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @521
DO ~SetGlobal("BrageRiddle","GLOBAL",1)~
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @522
END

/* Minsc */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%MINSC~ 0 X#MINSC0
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @524
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @525
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @526
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%MINSC~ 5 X#MINSC5
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,MALE) OR(4) Class(Player1,MAGE_ALL) Class(Player1,CLERIC_ALL) Class(Player1,BARD_ALL) Class(Player1,DRUID_ALL)~ THEN @777
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,MALE) OR(4) Class(Player1,MAGE_ALL) Class(Player1,CLERIC_ALL) Class(Player1,BARD_ALL) Class(Player1,DRUID_ALL)~ THEN @778
== ~%tutu_var%MINSC~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,MALE) OR(4) Class(Player1,MAGE_ALL) Class(Player1,CLERIC_ALL) Class(Player1,BARD_ALL) Class(Player1,DRUID_ALL)~ THEN @779
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @777
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @778
== ~%tutu_var%MINSC~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @779
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @780
== ~%tutu_var%MINSC~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @949
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @781
== ~%tutu_var%MINSC~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @782
END

/* Daer'Ragh */
/* individual passbacks supplied */
I_C_T3 ~%tutu_scriptd%AERRAGH~ 1 X#AERRAGH1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @527
== ~%tutu_scriptd%AERRAGH~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @950
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @528
== ~%tutu_scriptd%AERRAGH~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @529
END

/* Chase */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%CHASE~ 0 X#CHASE0
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @530
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @531
== ~%tutu_var%CHASE~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @532
END

/* Bardolan */
/* passback supplied */
I_C_T3 ~%tutu_var%BARDOL~ 4 X#BARDOL4
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @533
== ~%tutu_var%BARDOL~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @951
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @534
== ~%tutu_var%BARDOL~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @535
END

/* Spen Gil'meh - Beregost */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%SPENGIL~ 2 X#SPENGIL2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @539
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @540
END

/* Alatos */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%ALATOS~ 0 X#ALATOS0
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @548
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @549
== ~%tutu_var%ALATOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @550
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @551
== ~%tutu_var%ALATOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @552
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @553
== ~%tutu_var%ALATOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @554
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%ALATOS~ 8 X#ALATOS8
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @556
== ~%tutu_var%ALATOS~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @559
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @557
== ~%tutu_var%ALATOS~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @558
END

/* Beggar */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BEGGBA~ 0 X#BEGGBA0
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @585
== ~%tutu_var%BEGGBA~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @586
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @587
DO ~TakePartyGold(1)~
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @588
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @589
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @590
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @591
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @592
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BEGGBA~ 1 X#BEGGBA1
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @585
== ~%tutu_var%BEGGBA~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @586
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @587
DO ~TakePartyGold(1)~
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @588
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @589
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @590
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @591
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @592
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BEGGBA~ 2 X#BEGGBA2
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @585
== ~%tutu_var%BEGGBA~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @586
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @587
DO ~TakePartyGold(1)~
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @588
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @589
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @590
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @591
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @592
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%BEGGBA~ 3 X#BEGGBA3
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @585
== ~%tutu_var%BEGGBA~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @586
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @587
DO ~TakePartyGold(1)~
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @588
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @589
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @590
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @591
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @592
END

/* Bellamy */
/* passback not required - trans action is journal related */
I_C_T3 ~%tutu_var%BELLAM~ 4 X#BELLAM4
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @594
== ~%tutu_var%BELLAM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @595
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @596
== ~%tutu_var%BELLAM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @597
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @598
== ~%tutu_var%BELLAM~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @599
END

/* Flaming Fist Mercenary - Peldvale */
/* passback not requred - no trans actions */
I_C_T3 ~%tutu_var%FLAM2~ 3 X#FLAM23
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @602
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @603
END

/* Bjornin */
/* passback not required - trans actions are global and journal related */
I_C_T3 ~%tutu_var%BJORNI~ 1 X#BJORNI1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @604 DO ~SetGlobal("X#AjantisHelpBjornin","GLOBAL",1)~
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @605
END

/* Carsa */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%CARSA~ 8 X#CARSA8
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @609
== ~%tutu_var%CARSA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @613
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @610
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @611
== ~%tutu_var%CARSA~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @612
END

/* Centeol */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%CENTEO~ 0 X#CENTEO0
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @614
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @615
END

/* Charleston Nib */
/* passback not required - trans action is global related */
I_C_T3 ~%tutu_var%CHARLE~ 19 X#CHARLE19
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharGallor","GLOBAL",1)~ THEN @616
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharGallor","GLOBAL",1)~ THEN @617
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @618
== ~%tutu_var%CHARLE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @619
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @620
== ~%tutu_var%CHARLE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @621
END

/* passback not required - trans action is global related */
I_C_T3 ~%tutu_var%CHARLE~ 20 X#CHARLE20
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#GALLOR5","GLOBAL",1)~ THEN @616
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#GALLOR5","GLOBAL",1)~ THEN @617
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @618
== ~%tutu_var%CHARLE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @619
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @620
== ~%tutu_var%CHARLE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @621
END

/* Coran */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%CORAN~ %BGTCORANState4% X#CORAN4
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @622
== ~%tutu_var%CORAN~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID)~ THEN @626
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @623
== ~%tutu_var%CORAN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @624
== ~%tutu_var%CORAN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @625
== ~%tutu_var%CORAN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @626
END

/* Cythandria */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%CYTHAN~ 1 X#CYTHAN1
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @627
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @628
END

/* Drienne */
/* passback supplied */
I_C_T3 ~%tutu_var%DRIENN~ 4 X#DRIENN4
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @629
== ~%tutu_var%DRIENN~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @952
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @630
== ~%tutu_var%DRIENN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @631
END

/* Dryad */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%DRYAD~ 0 X#DRYAD0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @640
== ~%tutu_var%DRYAD~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @641
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @642
== ~%tutu_var%DRYAD~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @643
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @644
== ~%tutu_var%DRYAD~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @645
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%DRYAD~ 4 X#DRYAD4
== ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @647
== ~%tutu_var%DRYAD~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @648
DO ~SetGlobal("X#FaDryadQuit","GLOBAL",1)~
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @649
== ~%tutu_var%DRYAD~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @650
END

/* Emerson */
/* passback not required - trans actions are global and journal related */
I_C_T3 ~%tutu_var%EMERSO~ 1 X#EMERSO1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @667
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @668
END

/* Entillis Fulsom */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%ENTILL~ 0 X#ENTILL0
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @669
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @670
== ~%tutu_var%ENTILL~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @671
END

/* Fat Man */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%FATMBA~ 0 X#FATMBA0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @674
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @675
END

/* Gandolar */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%GANDOL~ 0 X#GANDOL0
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @676
== ~%tutu_var%GANDOL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @677
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @678
== ~%tutu_var%GANDOL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @679
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @680
== ~%tutu_var%GANDOL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @681
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @682
DO ~SetGlobal("X#MontyGandolar","GLOBAL",1)~
END

/* Garclax */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%GARKLA~ 0 X#GARKLA0
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @683
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @684
END

/* Garrick */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%GARRIC~ 1 X#GARRIC1
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @685
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @686
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%GARRIC~ 6 X#GARRIC6
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @687
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @688
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @689
== ~%tutu_var%GARRIC~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @690
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @698
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @691
== ~%SHARTEEL_JOINED%~ IF ~!Class(Player1,BARD) InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @692
== ~%SHARTEEL_JOINED%~ IF ~Class(Player1,BARD) Gender(Player1,FEMALE) InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @693
== ~%SHARTEEL_JOINED%~ IF ~Class(Player1,BARD) Gender(Player1,MALE) InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @694
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @695
== ~%tutu_var%GARRIC~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @696
END

/* Great Gazib, the */
/* passback not required - trans action is CreateCreature() */
I_C_T3 ~%tutu_var%GAZIB~ 1 X#GAZIB1
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @699
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @700
END

/* Greywolf */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%GREYWO~ 5 X#GREYWO5
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @701
== ~%tutu_var%GREYWO~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @708
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @702
== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @703
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @704
== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @705
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @706
== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @707
END

/* Ivanne */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%IVANNE~ 0 X#IVANNE0
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @716 DO ~SetGlobal("X#DynaheirIvanne","GLOBAL",1)~
== ~%tutu_var%IVANNE~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @953
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @717
== ~%tutu_var%IVANNE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @718
END

/* Jaheira */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%JAHEIR~ 6 X#JAHEIR6
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @727
== ~%tutu_var%JAHEIR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @728
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @729
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @730
== ~%SHARTEEL_JOINED%~ IF ~OR(2) Gender(Player1,MALE) !Class(Player1,DRUID_ALL) InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @731
== ~%tutu_var%JAHEIR~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @732
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%JAHEIR~ 8 X#JAHEIR8
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @727
== ~%tutu_var%JAHEIR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @728
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @729
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @730
== ~%SHARTEEL_JOINED%~ IF ~OR(2) Gender(Player1,MALE) !Class(Player1,DRUID_ALL) InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @731
== ~%tutu_var%JAHEIR~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @732
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%JAHEIR~ 14 X#JAHEIR14
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @727
== ~%tutu_var%JAHEIR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @728
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @729
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @730
== ~%SHARTEEL_JOINED%~ IF ~OR(2) Gender(Player1,MALE) !Class(Player1,DRUID_ALL) InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @731
== ~%tutu_var%JAHEIR~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @732
END

/* Jalantha */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%JALANT~ 4 X#JALANT4
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @733
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @734
END

/* Jenkal */
/* passback not requried - no trans actions */
I_C_T3 ~%tutu_var%JENKAL~ 0 X#JENKAL0
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @735
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @563
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @736
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @737
== ~%tutu_var%JENKAL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @738
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @739
== ~%tutu_var%JENKAL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @740
END

/* Joseph's widow */
/* individual passbacks supplied */
I_C_T3 ~%tutu_scriptbg%FTOWN2%eet_var%~ 6 X#FTOWN26
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @742
== ~%tutu_scriptbg%FTOWN2%eet_var%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @743
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @744
== ~%tutu_scriptbg%FTOWN2%eet_var%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @745
END

/* Karlat */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%KARLAT~ 0 X#KARLAT0
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @749 DO ~SetGlobal("X#AjantisKarlat","GLOBAL",1)~
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @750
END

/* Kelddath Ormlyr */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%KELDDA~ 1 X#KELDDA1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @751
== ~%tutu_var%KELDDA~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @954
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @752
== ~%tutu_var%KELDDA~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @753
END

/* Kissiq */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%KISSIQ~ 1 X#KISSIQ1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Global("TalkedToChicken","GLOBAL",0)~ THEN @757
== ~%tutu_var%KISSIQ~IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Global("TalkedToChicken","GLOBAL",0)~ THEN @759
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("TalkedToChicken","GLOBAL",0)~ THEN @758
== ~%tutu_var%KISSIQ~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("TalkedToChicken","GLOBAL",0)~ THEN @955
END

/* Lothander */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%LOTHAN~ 1 X#LOTHAN1
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @760
== ~%tutu_var%LOTHAN~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @761
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @762
== ~%tutu_var%LOTHAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @763
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @764
== ~%tutu_var%LOTHAN~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @765
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @766
== ~%tutu_var%LOTHAN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @767
END

/* Mirianne */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%MIRIAN~ 0 X#MIRIAN0
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @783
== ~%tutu_var%MIRIAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @784
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @785 DO ~SetGlobal("X#AjantisMiriannePromise","GLOBAL",1)~
END

/* Nalin */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%NALIN~ 3 X#NALIN3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @792
== ~%tutu_var%NALIN~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @793
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @794
END

/* Nexlit */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%NEXLIT~ 0 X#NEXLIT0
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @801
== ~%tutu_var%NEXLIT~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @802
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @803
== ~%tutu_var%NEXLIT~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @804
END

/* Nimbul */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%NIMBUL~ 0 X#NIMBUL0
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @805 DO ~SetGlobal("X#AjantisNimbul","GLOBAL",1)~
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @806
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @807
END

/* Officer Vai */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%VAI~ 0 X#VAI0
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @812
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @813
== ~%tutu_var%VAI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @814
== ~%tutu_var%VAI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Gender(Player1, MALE)~ THEN @815
== ~%tutu_var%VAI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @816
== ~%tutu_var%VAI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @817
END

/* Perdue */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%PERDUE~ 0 X#PERDUE0
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @818
== ~%tutu_var%PERDUE~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @819
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @820
== ~%tutu_var%PERDUE~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @821
END

/* passback not required - trans actions are global and journal related */
I_C_T3 ~%tutu_var%PERDUE~ 7 X#PERDUE7
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @822 DO ~SetGlobal("X#BranwenPerdue","GLOBAL",1)~
== ~%tutu_var%PERDUE~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @823
 == ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @824
 == ~%tutu_var%PERDUE~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @825
END

/* passback not required - trans actions are global and journal related */
I_C_T3 ~%tutu_var%PERDUE~ 8 X#PERDUE8
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @822 DO ~SetGlobal("X#BranwenPerdue2","GLOBAL",1)~
== ~%tutu_var%PERDUE~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @823
 == ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @824
== ~%tutu_var%PERDUE~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @825
END

/* Quinn */
/* passback not required - trans actions are global and journal related */
I_C_T3 ~%tutu_var%QUINN~ 1 X#QUINN1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @826 DO ~SetGlobal("X#AjantisQuinnPromise","GLOBAL",1)~
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @827
END

/* Raiken */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%RAIKEN~ 0 X#RAIKEN0
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !Dead("tazok")~ THEN @828
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @829
END

/* Ramazith */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%RAMAZI~ 6 X#RAMAZI6
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @830
== ~%tutu_var%RAMAZI~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @831
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @832
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @833
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @834
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @835
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @836
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @837
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @838
END

/* individual passbacks supplied */
I_C_T3 ~%tutu_var%RAMAZI~ 15 X#RAMAZI15
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @840
== ~%tutu_var%RAMAZI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @920
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @841 DO ~SetGlobal("X#JaheiraRamazith","GLOBAL",1)~
== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @842 DO ~SetGlobal("X#KhalidRamazith","GLOBAL",1)~
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @843 DO ~SetGlobal("X#KivanRamazith","GLOBAL",1)~
== ~%tutu_var%RAMAZI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @844
END

/* Rinnie */
/* passback not required - trans actions are journal related */
I_C_T3 ~%tutu_var%RINNIE~ 1 X#RINNIE1
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @856
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @857 DO ~SetGlobal("X#CoranUnicorn","GLOBAL",1)~
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @858
== ~%tutu_var%RINNIE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @859
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @860
== ~%tutu_var%RINNIE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @861
END

/* Scar */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%SCAR~ 2 X#SCAR2
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @862
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @863
END

/* Shoal */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%SHOAL~ 5 X#SHOAL5
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @864
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @865
END

/* Silke */
/* passback not required - trans actions are variable related */
I_C_T3 ~%tutu_var%SILKE~ 1 X#SILKE1
== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @867
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @868
END

/* Tamoko */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%TAMOKO~ 16 X#TAMOKO16
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @869
== ~%tutu_var%TAMOKO~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @870
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @871
END

/* Tartusse */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%TARTUS~ 0 X#TARTUS0
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @872
== ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @873
== ~%tutu_var%TARTUS~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @874
END

/* Teyngan */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%TEYNGA~ 0 X#TEYNGA0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @875
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @876
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%TEYNGA~ 2 X#TEYNGA2
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @877
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @878
END

/* Town Crier */
/* individual passbacks supplied */
I_C_T3 ~%tutu_var%TOWNCR~ 0 X#TOWNCR0
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @879
== ~%tutu_var%TOWNCR~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @886
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @880
== ~%tutu_var%TOWNCR~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @881
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @882
== ~%tutu_var%TOWNCR~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @883
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @884
== ~%tutu_var%TOWNCR~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @885
END

/* Tranzig  - Moved to separate file for BGEE v2.5 compatibility */
/* passback not required - all trans actions relate to journal entries */
// I_C_T3 ~%tutu_var%TRANZI~ 7 X#TRANZI7
// == ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @887
// == ~%tutu_var%TRANZI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @888
// == ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @889
// == ~%tutu_var%TRANZI~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @890
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @891
// == ~%tutu_var%TRANZI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @892
// END

/* Vail */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%VAIL~ 3 X#VAIL3
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @893
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @894
END

/* Ulraunt */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%ULRAUN~ 3 X#ULRAUN3
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @895
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @896
END

/* Varci */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%VARCI~ 1 X#VARCI1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @901
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @902
END

/* individual passbacks  supplied */
I_C_T3 ~%tutu_var%VARCI~ 5 X#VARCI5
== ~%AJANTIS_JOINED%~ IF ~Global("X#AjantisRejectedVarci","GLOBAL",1) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @897 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",-1)~
== ~%AJANTIS_JOINED%~ IF ~!Global("X#AjantisRejectedVarci","GLOBAL",1) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @898
== ~%tutu_var%VARCI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @933
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @899
== ~%tutu_var%VARCI~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @900
END

/* Viconia */
/* individual passbacks supplied */
I_C_T3 ~%tutu_scriptbg%VICONI%eet_var%~ 9 X#VICONI9
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @903
== ~%tutu_scriptbg%VICONI%eet_var%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @904
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @905
== ~%tutu_scriptbg%VICONI%eet_var%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @906
END

/* Xan */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%XAN~ %BGTXANState0% X#XAN0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @907
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @908
== ~%tutu_var%XAN~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @909
END

/* Zeke */
/* passback supplied */
I_C_T3 ~%tutu_var%ZEKE~ 0 X#ZEKE0
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @912
== ~%tutu_var%ZEKE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @913
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @914
== ~%tutu_var%ZEKE~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @915
END
