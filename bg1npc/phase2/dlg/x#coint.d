/* ring of human influence */

EXTEND_BOTTOM ~%tutu_var%FORESH~ 1
IF ~CheckStatLT(Player1,17,CHR) !InParty("jaheira")~ THEN DO ~GiveItemCreate("X#RINGRO",Player1,1,0,0)~ + X#RomanceForeshadow
END

EXTEND_BOTTOM ~%tutu_var%FORESH~ 2
IF ~CheckStatLT(Player1,17,CHR) !InParty("jaheira")~ THEN DO ~GiveItemCreate("X#RINGRO",Player1,1,0,0)~ + X#RomanceForeshadow
END

EXTEND_BOTTOM ~%tutu_var%FORESH~ 3
IF ~CheckStatLT(Player1,17,CHR) !InParty("jaheira")~ THEN DO ~GiveItemCreate("X#RINGRO",Player1,1,0,0)~ + X#RomanceForeshadow
END

APPEND ~%tutu_var%FORESH~

IF ~~ X#RomanceForeshadow
SAY @0
IF ~~ THEN DO ~SetGlobal("X#TalkedToForeshadow","GLOBAL",1) EscapeArea()~ EXIT
END
END

I_C_T ~%tutu_var%VOLTIN~ 0 X#CorVoltin
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @1
END


//I_C_T ~%tutu_var%RIELTA~ 0 X#CoranRieltar
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @2
//== ~%tutu_var%RIELTA~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @3
//END


//I_C_T2 ~%tutu_var%NEMPHR~ 3 X#CoranAndNemphra
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @4
//== ~%tutu_var%NEMPHR~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @5
//END

I_C_T ~%tutu_var%LARRIA~ 2 X#CoranLariaz
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @6
END

//I_C_T2 ~%tutu_var%PHEIRK~ 1 X#CoranPheirk
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @7
//== ~%tutu_var%PHEIRK~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @8
//END

I_C_T ~%tutu_var%LAERTA~ 0 X#CoranLaerta
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @9
== ~%tutu_var%LAERTA~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @1001
END

I_C_T ~%tutu_var%LUCKY~ 0 X#CoranLucky /* Action that follows is StartStore() */
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @10
== ~%tutu_var%LUCKY~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @11
END

I_C_T ~%tutu_var%LUSSEL~ 4 X#CoranLusselyn
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @12
== ~%tutu_var%LUSSEL~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @13
END

//I_C_T2 ~%tutu_var%NOBW8~ 3 X#CoranAreana
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @14
//== ~%tutu_var%NOBW8~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @15
//END

//I_C_T ~%tutu_var%RINNIE~ 1 X#CoranRinnie
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @16
//= @17 DO ~SetGlobal("X#CoranUnicorn","GLOBAL",1)~
//= @18
//== ~%tutu_var%RINNIE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @19
//END

//I_C_T2 ~%tutu_var%CORDYR~ 1 X#CoranCordyr
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @20
//== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @21
//== ~%CORAN_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @22
//END

//I_C_T2 ~%tutu_var%DESRET~ 0 X#CoranDesreta
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @23
//END

I_C_T ~%tutu_var%FABER~ 0 X#CoranFaber
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @24
== ~%tutu_var%FABER~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @25
END

//I_C_T ~%tutu_var%CANTIC~ 0 X#CoranCanticle
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @26
//== ~%tutu_var%CANTIC~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @27
//END

I_C_T ~%tutu_var%TAXEK~ 2 X#Taxek
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @28 DO ~SetGlobal("X#CoranTaxek","GLOBAL",1)~
== ~%tutu_var%TAXEK~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @29
END

I_C_T ~%tutu_var%FORTHE~ 2 X#CoranForthel
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @30
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @31
== ~%tutu_var%FORTHE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @32
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @33
== ~%tutu_var%FORTHE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @34
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @35
== ~%tutu_var%FORTHE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @36
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @37
== ~%VICONIA_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @38
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @39
== ~%VICONIA_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @40
== ~%tutu_var%FORTHE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @41
DO ~GiveGoldForce(10)~
END

//I_C_T2 ~%tutu_var%COKSMTH~ 0 X#CoranPeter
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @42 
//== ~%tutu_var%COKSMTH~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @43
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @44
//= @45
//= @46
//== ~%tutu_var%COKSMTH~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @47
//END

I_C_T ~%tutu_scripts%LAVLEAD~ 2 X#CoranRill
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @48
END

//I_C_T2 ~%tutu_var%SONNER~ 4 X#CoranSonner
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @49
//== ~%tutu_var%SONNER~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @50
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @51
//END

EXTEND_BOTTOM ~%tutu_var%BRILLA~ 0
IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1,FEMALE) OR(3) !InParty("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID)~ EXTERN ~%CORAN_JOINED%~ X#CoranBrilla2
END

//I_C_T2 ~%tutu_var%BRILLA~ 0 X#CoranBrilla1
//== ~%CORAN_JOINED%~ IF ~InParty ("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1,MALE)~ THEN @52
//END

//I_C_T2 ~%tutu_var%ABELA~ 7 X#CoranAbela2
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @53
//== ~%tutu_var%ABELA~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @54
//END

I_C_T ~%tutu_var%ABELA~ 4 X#CoranAbela1
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @53
== ~%tutu_var%ABELA~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @54
END

//I_C_T ~%tutu_var%POE~ 15 X#CoranPoe
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @55
//== ~%tutu_var%POE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @56
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @57
//= @58
//= @59
//= @60
//= @61
//= @62
//= @63
//= @64
//= @65
//== ~%tutu_var%POE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @66
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @67
//= @68
//== ~%tutu_var%POE~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @69
//END

EXTEND_BOTTOM ~%tutu_var%FCOOK2~ 0
IF ~InParty ("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ EXTERN ~%CORAN_BANTER%~ X#CoranCook
END

CHAIN ~%CORAN_BANTER%~ X#CoranCook
@70
== ~%tutu_var%FCOOK2~ @71
== ~%CORAN_BANTER%~ IF ~Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @72
== ~%tutu_var%FCOOK2~ IF ~Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @73
== ~%CORAN_BANTER%~ IF ~OR(2) !Global("P#CoranMatch","GLOBAL",1) Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @74
END
IF ~Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN EXIT
+ ~OR(2) !Global("P#CoranMatch","GLOBAL",1) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @75 EXTERN ~%CORAN_JOINED%~ X#CoranCook1
+ ~OR(2) !Global("P#CoranMatch","GLOBAL",1) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @76 + X#CoranCook2
+ ~Gender(Player1, MALE) OR(2) !Global("P#CoranMatch","GLOBAL",1) Global("P#CoranRomanceInactive","GLOBAL",1)~ + @77 EXTERN ~%tutu_var%FCOOK2~ X#CoranCook3

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 4 X#ManyInt1
//== ~%CORAN_JOINED%~ IF ~Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE) Global("P#CoranLover","GLOBAL",1)~ THEN @78
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE) Global("P#CoranLover","GLOBAL",1)~ THEN @79
//== ~%CORAN_JOINED%~ IF ~Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE) Global("P#CoranLover","GLOBAL",1)~ THEN @80
//END

I_C_T ~%tutu_scriptbg%WILLIA~ 5 X#ManyInt2
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @81
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @82
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @83
END

I_C_T ~%tutu_var%JESSUP~ 1 X#ManyInt3
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE) Class(Player1,THIEF_ALL)~ THEN @84
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE) Class(Player1,THIEF_ALL)~ THEN @85
END

I_C_T ~%tutu_var%JESSUP~ 2 X#ManyInt4
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @86
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @87
END

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 8 X#ManyInt5
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @88
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @89
//END

I_C_T ~%tutu_var%TAMOKO~ 20 X#CoranTamoko
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @90
END

/* Additional Interjections */

//I_C_T2 ~%tutu_var%KIRIAN~ 5 X#CoranKirian
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @91
//END

//I_C_T2 ~%tutu_var%DAVAEO~ 0 X#CoranDavaeorn
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @92
//END

I_C_T ~%tutu_var%KELDDA~ 6 X#CoranWyvernReward
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @93
//= @94 DO ~SetGlobal("P#CoranWyvern","GLOBAL",10)~
== ~%tutu_var%KELDDA~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @1002
END

//I_C_T2 ~%tutu_var%DESTUS~ 2 X#CoranDestus1
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @95
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @96
//== ~%KIVAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @97
//END

I_C_T ~%tutu_var%KEEPER~ 1 X#CoranKeeper1
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @98
== ~%tutu_var%KEEPER~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @1003
END

//I_C_T2 ~%tutu_var%GERDE~ 0 X#CoranGerde1
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @99
//END

I_C_T ~%tutu_var%SEWERC~ 3 X#CoranSewerClearner1
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @100
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @101
== ~%KIVAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @102
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @103
== ~%KIVAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @104
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @105
== ~%KIVAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @106
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @107
== ~%KIVAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @108
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @109
END

//I_C_T2 ~%tutu_var%DEGROD~ 2 X#CoranDegrodel1
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @110
//END

//I_C_T2 ~%tutu_var%KEVIN~ 1 X#CoranNivek1
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @111
//END

//I_C_T2 ~%tutu_var%SHISTA~ 8 X#CoranShistal1
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @112
//END


APPEND ~%CORAN_JOINED%~

/* Coran, Getting Reward for Wyvern Quest */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranWyvernReward","GLOBAL",2)~ THEN CWR2
SAY @94
IF ~~ THEN DO ~SetGlobal("X#CoranWyvernReward","GLOBAL",3) SetGlobal("P#CoranWyvern","GLOBAL",10)~ EXIT
END

/* Coran, Entry to Baldur’s Gate */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CEBG","GLOBAL",1)~ THEN CEBG1
SAY @113
IF ~~ THEN DO ~SetGlobal("P#CEBG","GLOBAL",2)~ EXIT
END

/* Coran Halfling Brewery FW4003 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranHB","GLOBAL",1)~ THEN BEGIN X#CoranHB
SAY @114
++ @115 DO ~SetGlobal("X#CoranHB","GLOBAL",2)~ + X#CoranHB1
++ @116 DO ~SetGlobal("X#CoranHB","GLOBAL",2)~ + X#CoranHB2
++ @117 DO ~SetGlobal("X#CoranHB","GLOBAL",2)~ + X#CoranHB3
END

IF ~~ X#CoranHB1
SAY @118
IF ~~ THEN EXIT
END

IF ~~ X#CoranHB2
SAY @119
IF ~~ THEN EXIT
END

IF ~~ X#CoranHB3
SAY @120
IF ~~ THEN EXIT
END

/* Natasha */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranNatasha","GLOBAL",1)~ THEN BEGIN CoranNatasha1
SAY @121
= @122
IF ~~ THEN DO ~SetGlobal("X#CoranNatasha","GLOBAL",2)~ EXIT
END

/* CoranTaxek */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranTaxek","GLOBAL",2)~ THEN BEGIN CoranTaxek2
SAY @123
IF ~~ THEN DO ~SetGlobal("X#CoranTaxek","GLOBAL",3)~ EXIT
END

/* Coran Unicorn */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranUnicorn","GLOBAL",2)~ THEN BEGIN CoranUnik1
SAY @124
= @125
= @126
IF ~~ THEN DO ~SetGlobal("X#CoranUnicorn","GLOBAL",3)~ EXIT
END

/* CoranCook */
IF ~~ X#CoranCook1
SAY @127
++ @128 + X#CoranCook4
++ @129 EXTERN ~%tutu_var%FCOOK2~ X#CoranCook5
++ @130 + X#CoranCook6
END

IF ~~ X#CoranCook4
SAY @131
++ @132 EXIT
END

IF ~~ X#CoranCook6
SAY @133
IF ~~ THEN EXTERN ~%CORAN_BANTER%~ X#CoranCook2
END

/* Coran Durlyle Aftermath */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranDur","GLOBAL",3)~ THEN BEGIN X#CoDurlyleAfter
SAY @134
++ @135 DO ~SetGlobal("X#CoranDur","GLOBAL",4)~ + X#CODAfter1
++ @136 DO ~SetGlobal("X#CoranDur","GLOBAL",4)~ + X#CODAfter2
++ @137 DO ~SetGlobal("X#CoranDur","GLOBAL",4)~ + X#CODAfter3
END

IF ~~ X#CODAfter1
SAY @138
IF ~~ THEN EXIT
END

IF ~~ X#CODAfter2
SAY @139
IF ~~ THEN EXIT
END

IF ~~ X#CODAfter3
SAY @140
++ @141 + X#CODAfter4
++ @142 + X#CODAfter5
++ @143 EXIT
END

IF ~~ X#CODAfter4
SAY @144
IF ~~ THEN EXIT
END

IF ~~ X#CODAfter5
SAY @145
IF ~~ THEN EXIT
END

/* Coran, Entry to Durlag’s Tower - TOTSC! */
IF WEIGHT #-1 ~%BGT_VAR% Global("P#CEDT","GLOBAL",1)~ THEN CEDT1
SAY @146
IF ~~ THEN DO ~SetGlobal("P#CEDT","GLOBAL",2)~ EXIT
END

/* Coran, Sighting The Dragon Skeleton TOTSC! */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CSTDS","GLOBAL",1)~ THEN CSTDS1
SAY @147
IF ~~ THEN DO ~SetGlobal("P#CSTDS","GLOBAL",2)~ EXIT
END

END

CHAIN ~%CORAN_BANTER%~ X#CoranCook2
@148
== ~%tutu_var%FCOOK2~ @149
EXIT

CHAIN ~%tutu_var%FCOOK2~ X#CoranCook3
@150
EXIT

CHAIN ~%tutu_var%FCOOK2~ X#CoranCook5
@151
== ~%CORAN_BANTER%~ @152
DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea() ActionOverride("%tutu_var%FCOOK2", EscapeArea())~
EXIT

CHAIN ~%CORAN_JOINED%~ X#CoranBrilla2
@153
= @154
== ~%tutu_var%BRILLA~ @155
== ~%CORAN_JOINED%~ @156
== ~%tutu_var%BRILLA~ @157
== ~%CORAN_JOINED%~ @158
== ~%tutu_var%BRILLA~ @159
== ~%CORAN_JOINED%~ @160
== ~%tutu_var%BRILLA~ @161
= @162
= @163
== ~%CORAN_JOINED%~ @164
== ~%tutu_var%BRILLA~ @165
== ~%CORAN_JOINED%~ @166
== ~%tutu_var%BRILLA~ @167
== ~%CORAN_JOINED%~ @168
== ~%tutu_var%BRILLA~ @169
== ~%CORAN_JOINED%~ @170
== ~%tutu_var%BRILLA~ @171
DO ~GiveItemCreate("%tutu_var%RING18","coran",1,0,0) EscapeArea()~
EXIT



