APPEND ~%SHARTEEL_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharMirianneLetter","GLOBAL",1)~ THEN BEGIN SharMirianne
SAY @0
= @1
IF ~~ THEN DO ~SetGlobal("X#SharMirianneLetter","GLOBAL",2)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharMale","GLOBAL",1)~ THEN BEGIN SharMale
SAY @2
IF ~~ THEN DO ~SetGlobal("X#SharMale","GLOBAL",2)~ EXIT
END

END

I_C_T ~%tutu_var%ANGELO~ 7 X#SharAngelo1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @3
== ~%tutu_var%ANGELO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @4
END

I_C_T ~%tutu_var%LARYSS~ 2 X#SharLaryss1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @5
== ~%tutu_var%LARYSS~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1001
END

/* Vax */
I_C_T ~%tutu_var%VAX~ 0 X#SharVax1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @6
END

I_C_T ~%tutu_var%VAX~ 2 X#SharVax2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @7
DO ~ActionOverride("sharteel",LeaveParty()) ActionOverride("sharteel",Enemy())~
== ~%tutu_var%VAX~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1002
END

/* Beregost courtesan */
I_C_T3 ~%tutu_var%PROST1~ 5 X#SharCourtesan1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @8
== ~%tutu_var%PROST1~ IF ~Gender(Player1,MALE) Class(Player1,FIGHTER_ALL)~ THEN @9
== ~%tutu_var%PROST1~ IF ~OR(2) Gender(Player1,FEMALE) !Class(Player1,FIGHTER_ALL) OR(5) Gender(Player2,MALE) Gender(Player3,MALE) Gender(Player4,MALE) Gender(Player5,MALE) Gender(Player6,MALE)~ THEN @10
END

/* Interjections for males joining */
/* Xzar and Montaron */
I_C_T ~%tutu_var%XZAR~ 21 X#SharXzarMontJoin1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !Dead("montaron") See("montaron")~ THEN @11
== ~%tutu_var%XZAR~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !Dead("montaron") See("montaron")~ THEN @12
END

I_C_T ~%tutu_var%MONTAR~ 7 X#SharMontarJoin2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @13
== ~%tutu_var%MONTAR~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1003
END

I_C_T ~%tutu_var%MONTAR~ 10 X#SharMontarJoin3
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @14
== ~%tutu_var%MONTAR~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1003
END

/* Coran */
//I_C_T2 ~%tutu_var%CORAN~ %BGTCORANState4% X#SharCoranJoin
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @15
//END

/* Edwin */
//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState8% X#SharEdwinJoin
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @16
//END

/* Garrick */
//I_C_T ~%tutu_var%GARRIC~ 6 X#SharGarrickJoin
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @17
//= @18
//== ~%SHARTEEL_JOINED%~ IF ~!Class(Player1,BARD)~ THEN @19
//== ~%SHARTEEL_JOINED%~ IF ~Class(Player1,BARD) Gender(Player1,FEMALE)~ THEN @20
//== ~%SHARTEEL_JOINED%~ IF ~Class(Player1,BARD) Gender(Player1,MALE)~ THEN @21
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @22
//== ~%tutu_var%GARRIC~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @23
//END

/* Kivan */
I_C_T ~%tutu_var%KIVAN~ 3 X#SharKivanJoin
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @24
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Gender(Player1,FEMALE) OR(2) InParty("xan") InParty("coran")~ THEN @25
== ~%tutu_var%KIVAN~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @26
END

/* Minsc */
//I_C_T2 ~%tutu_var%MINSC~ 5 X#SharMinscJoin
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @27
//END

/* Xan */
I_C_T ~%tutu_var%XAN~ %BGTXANState5% X#SharXanJoin
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @28
== ~%tutu_var%XAN~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1004
END

/* Yeslick */
I_C_T ~%tutu_var%YESLIC~ 3 X#SharYeslickJoin
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @29
== ~%tutu_var%YESLIC~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1005
END

/* Eldoth */
//I_C_T2 ~%tutu_var%ELDOTH~ 5 X#SharEldothJoin
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @30
//END

/* Quayle */
I_C_T ~%tutu_scriptbg%QUAYLE%eet_var%~ 4 X#SharQuayleJoin
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @31
== ~%tutu_scriptbg%QUAYLE%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1006
END

/* Tiax */
I_C_T ~%tutu_var%TIAX~ 5 X#SharTiaxJoin
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @32
= @33
== ~%tutu_var%TIAX~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1007
END

/* Ajantis */
I_C_T ~%tutu_var%AJANTI~ 5 X#SharAjantisJoin1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @34
== ~%tutu_var%AJANTI~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @35
END

//I_C_T ~%tutu_var%AJANTI~ 6 X#SharAjantisJoin2
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @36
//== ~%tutu_var%AJANTI~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @35
//END

/* Kagain */
I_C_T ~%tutu_var%KAGAIN~ 1 X#SharKagainJoin
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @37
== ~%tutu_var%KAGAIN~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @38
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @39
== ~%tutu_var%KAGAIN~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1020
END

/* jaheira and khalid */
//I_C_T2 ~%tutu_var%JAHEIR~ 6 X#SharJaheirJoin1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @40
//= @41
//== ~%SHARTEEL_JOINED%~ IF ~OR(2) Gender(Player1,MALE) !Class(Player1,DRUID_ALL)~ THEN @42
//END

//I_C_T2 ~%tutu_var%JAHEIR~ 8 X#SharJaheirJoin1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @40
//= @41
//== ~%SHARTEEL_JOINED%~ IF ~OR(2) Gender(Player1,MALE) !Class(Player1,DRUID_ALL)~ THEN @42
//END

//I_C_T2 ~%tutu_var%JAHEIR~ 14 X#SharJaheirJoin1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @40
//= @41
//== ~%SHARTEEL_JOINED%~ IF ~OR(2) Gender(Player1,MALE) !Class(Player1,DRUID_ALL)~ THEN @42
//END

/* end of interjections for males joining */

I_C_T ~%tutu_var%CHLOE~ 1 X#SharTeelChloe
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @43
= @44
END

INTERJECT ~%tutu_var%TAUGOS~ 0 X#SharTaugos
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @45
END ~%tutu_var%TAUGOS~ 3

I_C_T ~%tutu_var%KNOTT~ 1 X#SharKnott
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @46
END

//I_C_T2 ~%tutu_var%RAIKEN~ 0 X#SharRaiken
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @47
//END

//I_C_T2 ~%tutu_scriptd%AERRAGH~ 1 X#SharDaer
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @48
//END

//I_C_T2 ~%tutu_var%BARDOL~ 4 X#SharBardol1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @49
//END

//I_C_T2 ~%tutu_var%BERRUN~ 19 X#SharBerrun1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @50
//END

I_C_T ~%tutu_var%LIIA~ 5 X#SharLiia
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @51
== ~%tutu_var%LIIA~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1009
END

//I_C_T2 ~%tutu_var%GALLOR~ 5 X#SharGallor
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @52
//= @53
//END

I_C_T ~%tutu_var%TOWNCR~ 2 X#SharTownCryerBereg2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @54
END

//I_C_T2 ~%tutu_var%TOWNCR~ 0 X#SharTownCryerBereg1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @54
//END

I_C_T ~%tutu_var%CYTHAN~ 5 X#SharCythandria3
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @55
END

//I_C_T2 ~%tutu_var%CYTHAN~ 1 X#SharCythandria2
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @56
//END

I_C_T ~%tutu_var%CYTHAN~ 0 X#SharCythandria1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @57
END

I_C_T ~%tutu_var%MARL~ 2 X#SharMARL1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @58
== ~%tutu_var%MARL~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1010
END

I_C_T ~%tutu_var%MARL~ 1 X#SharMARL2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @59
== ~%tutu_var%MARL~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1011
END

//I_C_T2 ~%tutu_var%KARLAT~ 0 X#SharKarlat
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @60
//END

//I_C_T ~%tutu_var%PERDUE~ 0 X#SharPerdue
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @61
//== ~%tutu_var%PERDUE~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @62
//END

I_C_T ~%tutu_var%SILKE~ 4 X#SharSilke
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @63
END

//I_C_T2 ~%tutu_var%HANNAH~ 0 X#SharHannah
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @64
//END

//I_C_T2 ~%tutu_var%HANNAH~ 1 X#SharHannah1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @65
//END

I_C_T ~%tutu_var%HANNAH~ 2 X#SharHannah2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @66
== ~%tutu_var%HANNAH~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1012
END

//I_C_T ~%tutu_var%TRANZI~ 7 X#SharTranzigChicken
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @67
//== ~%tutu_var%TRANZI~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @68
//END

I_C_T ~%tutu_var%LENA~ 0 X#SHARTEELENA1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @69
END

//I_C_T2 ~%tutu_var%DRIENN~ 4 X#SHARTEELDRIENNE1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @70
//END

I_C_T ~%tutu_var%DRIENN~ 6 X#SHARTEELDRIENNE2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @71
END

I_C_T ~%tutu_var%FLAM5~ 1 X#SHARTEELFFMER51
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @72
== ~%tutu_var%FLAM5~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1013
END

I_C_T ~%tutu_scriptbg%VICONI%eet_var%~ 0 X#SHARTEELVICONI1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @73
=@74
== ~%tutu_scriptbg%VICONI%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @75
END

//I_C_T2 ~%tutu_var%TAMOKO~ 16 X#SHARTEELTAMOKO1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @76
//END

I_C_T ~%tutu_var%VAI~ 6 X#SHARTEELJVAI1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @77
== ~%tutu_var%VAI~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @78
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @79
== ~%tutu_var%VAI~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @80
END

I_C_T ~%tutu_var%MEILUM~ 1 X#SHARTEELMEILUM1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @81
== ~%tutu_var%MEILUM~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @82
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @83
END

I_C_T ~%tutu_var%MEILUM~ 2 X#SHARTEELMEILUM2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @84
END

I_C_T ~%tutu_var%MEILUM~ 3 X#SHARTEELMEILUM3
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @85
== ~%tutu_var%MEILUM~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @86
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @87
END

//I_C_T2 ~%tutu_var%MUTAMI~ 0 X#SHARTEELMUTAMIN1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @88
//END


//I_C_T ~%tutu_var%RIELTA~ 0 X#SHARTEELRieltar
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @89
//== ~%tutu_var%RIELTA~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @90
//END

I_C_T ~%tutu_var%DENAK~ 0 X#SHARTEELDENAK1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @91
END

I_C_T ~%tutu_var%DENAK~ 3 X#SHARTEELDENAK2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @92
== ~%tutu_var%DENAK~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1014
END

//I_C_T2 ~%tutu_var%MELICA~ 1 X#SHARTEELMELICAMP1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @93
//END

I_C_T ~%tutu_var%IRON3~ 0 X#SHARTEELIRON31
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @94
END

//I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 1 X#SHARTEELTAZOK1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
//== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
//END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 6 X#SHARTEELTAZOK2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 7 X#SHARTEELTAZOK3
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 10 X#SHARTEELTAZOK4
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 12 X#SHARTEELTAZOK5
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 14 X#SHARTEELTAZOK6
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

//I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 15 X#SHARTEELTAZOK7
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
//== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
//END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 20 X#SHARTEELTAZOK8
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 21 X#SHARTEELTAZOK9
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 24 X#SHARTEELTAZOK10
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 26 X#SHARTEELTAZOK11
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 28 X#SHARTEELTAZOK12
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
END

// TAZOK's dialog only has states 0-33 in vanilla. This is adding Shar-Teel's reaction to mod-added states. However, if another mod has already added states to TAZOK.DLG, Shar-Teel will potentially interject on the wrong dialog states. Commenting out.
//I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 34 X#SHARTEELTAZOK13
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
//== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
//END

//I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 35 X#SHARTEELTAZOK14
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @95
//== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @96
//END

I_C_T ~%tutu_var%GREYWO~ 3 X#SHARTEELGRYWLF1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @97
== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @98
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @99
== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @100
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @101
== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @102
END

//I_C_T2 ~%tutu_var%GREYWO~ 5 X#SHARTEELGRYWLF2
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @97
//== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @98
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @99
//== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @100
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @101
//== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @102
//END

I_C_T ~%tutu_var%GREYWO~ 6 X#SHARTEELGRYWLF3
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @97
== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @98
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @99
== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @100
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @101
== ~%tutu_var%GREYWO~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @102
END

INTERJECT ~%tutu_var%BHEREN~ 0 X#SHARTEELBHEREN1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @103
END
IF ~~ THEN DO ~ActionOverride("BHEREN",Enemy()) ActionOverride("sharteel", Kill("BHEREN"))~
EXIT

INTERJECT ~%tutu_var%BHEREN~ 1 X#SHARTEELBHEREN2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @104
END
IF ~~ THEN DO ~ActionOverride("BHEREN",Enemy()) ActionOverride("sharteel", Kill("BHEREN"))~
EXIT


EXTEND_BOTTOM ~%tutu_var%PETRIN~ 3
IF ~!Dead("petrinescat") Dead("BHEREN")~ THEN REPLY @105 DO ~TakePartyItem("%tutu_scriptbg%RING16") AddexperienceParty(1000)~ EXIT
IF ~!Dead("petrinescat") Dead("BHEREN")~ THEN REPLY @106 DO ~ReputationInc(1) TakePartyItem("%tutu_scriptbg%RING16") AddexperienceParty(1000)~ EXIT
END

EXTEND_BOTTOM ~%tutu_var%LIIA~ 8
IF ~Dead("BHEREN")~ THEN REPLY @107 DO ~SetGlobal("DukeThanks","GLOBAL",1)~ GOTO LiiaPetrine
END

EXTEND_BOTTOM ~%tutu_var%LIIA~ 9
IF ~Dead("BHEREN")~ THEN REPLY @107 DO ~SetGlobal("DukeThanks","GLOBAL",1)~ GOTO LiiaPetrine
END

APPEND ~%tutu_var%LIIA~
IF ~~ LiiaPetrine
SAY @108
IF ~~ THEN GOTO 11
END
END

/* Additional Interjections */

I_C_T ~%tutu_var%CATTAC~ 1 X#SHARCattack1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @109
= @110
== ~%tutu_var%CATTAC~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1015
END

I_C_T ~%tutu_var%CATTAC~ 3 X#SHARCattack2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @111
DO ~ActionOverride("sharteel",LeaveParty()) ActionOverride("sharteel",EscapeArea())~
== ~%tutu_var%CATTAC~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1016
END

//I_C_T2 ~%tutu_var%KIRIAN~ 5 X#SharTeelKirian
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @112
//END

//I_C_T2 ~%tutu_var%DAVAEO~ 0 X#SharTeelDavaeorn
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @113
//END

//I_C_T ~%tutu_var%CHARLE~ 19 X#SharCharle19
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharGallor","GLOBAL",1)~ THEN @114
//= @115
//END

//I_C_T ~%tutu_var%CHARLE~ 20 X#SharCharle20
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) Global("X#SharGallor","GLOBAL",1)~ THEN @114
//= @115
//END

//I_C_T2 ~%tutu_var%KELDDA~ 1 X#SharKelddath1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @116
//END

I_C_T ~%tutu_var%ZARGAL~ 1 X#SharZargal
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @117
== ~%tutu_var%ZARGAL~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1017
END

//I_C_T2 ~%tutu_var%TEYNGA~ 2 X#SharTeynga1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @118
//END

/* Additional Interjections */

//I_C_T2 ~%tutu_var%GARRIC~ 1 X#ShartGarrickQuest1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @119
//END

I_C_T ~%tutu_var%SILKE~ 8 X#ShartGarrickQuest2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @120
END

//I_C_T2 ~%tutu_var%NIMBUL~ 0 X#ShartNimbul1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @121
//END

I_C_T ~%tutu_scriptbg%SENDAI%eet_var%~ 0 X#ShartSendai1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @122
END

I_C_T ~%tutu_scriptbg%SENDAI%eet_var%~ 3 X#ShartSendai2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @123
END

I_C_T ~%tutu_var%STEPHA~ 4 X#ShartStephan1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @124
== ~%tutu_var%STEPHA~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1018
END

I_C_T ~%tutu_var%STEPHA~ 5 X#ShartStephan2
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @124
END

I_C_T ~%tutu_var%STEPHA~ 6 X#ShartStephan3
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @124
== ~%tutu_var%STEPHA~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1018
END

I_C_T ~%tutu_var%CAEDMO~ 4 X#ShartCaedmon1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @125
END

I_C_T ~%tutu_var%JARDAK~ 1 X#ShartJardak1
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @126
== ~%tutu_var%JARDAK~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @1019
END

//I_C_T2 ~%tutu_var%SHISTA~ 8 X#ShartShistal1
//== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @127
//END
