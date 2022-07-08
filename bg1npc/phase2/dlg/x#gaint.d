APPEND ~%GARRICK_JOINED%~

/* Carnival Comments */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#GAFW4900","GLOBAL",1)~ THEN BEGIN GAFW4900
SAY @0
++ @1 DO ~SetGlobal("X#GAFW4900","GLOBAL",2)~ + CarnivalNo
++ @2 DO ~SetGlobal("X#GAFW4900","GLOBAL",2)~ + CarnivalYes
++ @3 DO ~SetGlobal("X#GAFW4900","GLOBAL",2)~ + CarnivalNo
END

IF ~~ CarnivalNo
SAY @4
IF ~~ THEN EXIT
END

IF ~~ CarnivalYes
SAY @5
IF ~~ THEN EXIT
END

/* Firewine */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#GAFW4500","GLOBAL",1)~ THEN BEGIN GAFW4500
SAY @6
= @7
= @8
= @9
IF ~~ THEN DO ~SetGlobal("X#GAFW4500","GLOBAL",2)~ EXIT
END

/* Baldur's Gate 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#GAFW0800","GLOBAL",1)~ THEN BEGIN GAFW0800
SAY @10
++ @11 DO ~SetGlobal("X#GAFW0800","GLOBAL",2)~ GOTO X#GarBGQuiet
++ @12 DO ~SetGlobal("X#GAFW0800","GLOBAL",2)~ GOTO X#GarBGVisit
END

IF ~~ X#GarBGQuiet
SAY @13
IF ~~ THEN EXIT 
END

IF ~~ X#GarBGVisit
SAY @14
++ @15 EXIT
++ @16 EXIT
++ @17 GOTO X#GarBGTav
END

IF ~~ X#GarBGTav
SAY @18
= @19
++ @20 EXIT
END

/* Candlekeep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#GAFW2608","GLOBAL",1)~ THEN BEGIN GaCandlekeep
SAY @21
++ @22 DO ~SetGlobal("X#GAFW2608","GLOBAL",2)~ GOTO GarLibrary
++ @23 DO ~SetGlobal("X#GAFW2608","GLOBAL",2)~ GOTO X#GarBoring
++ @24 DO ~SetGlobal("X#GAFW2608","GLOBAL",2)~ GOTO GarIron
END

IF ~~ GarLibrary
SAY @25
++ @26 GOTO GarIron
++ @27 EXIT
END

IF ~~ X#GarBoring
SAY @28
= @29
++ @30 EXIT
++ @31 GOTO GarIron
END

IF ~~ GarIron
SAY @32
IF ~~ THEN EXIT
END

END


//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt11
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @33
//== ~%AJANTIS_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @34
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @35
//END

I_C_T ~%tutu_var%ABELA~ 1 X#GarAbela
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @36 END

//I_C_T2 ~%tutu_var%ACHEN~ 3 X#GarAchen
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @37 END

I_C_T ~%tutu_var%ADDY~ 1 X#GarAddy1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @38 
== ~%tutu_var%ADDY~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1001
END

I_C_T ~%tutu_var%ADDY~ 2 X#GarAddy2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @38 
== ~%tutu_var%ADDY~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1001
END

//I_C_T2 ~%tutu_var%AMNIS~ 4 X#GarAmnis
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @39 END

I_C_T ~%tutu_var%AMNIS3~ 0 X#GarAmnis3
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @40 
== ~%tutu_var%AMNIS3~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1002
END

//I_C_T2 ~%tutu_var%BASSIL~ 0 X#GarBassil
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @41 END

I_C_T ~%tutu_var%BELT~ 0 X#GarBelt
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @42
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @43 END

//I_C_T2 ~%tutu_var%BENTAN~ 4 X#GarBentan
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @44 END

I_C_T ~%tutu_var%BLANE~ 1 X#GarBlane
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @45 END

I_C_T ~%tutu_var%BRAGE~ 1 X#GarBrage
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @46 
== ~%tutu_var%BRAGE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1003
END

I_C_T ~%tutu_var%BRAN~ 0 X#GarBran
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @47 END

I_C_T ~%tutu_var%BREVLI~ 4 X#GarBrev
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @48
== ~%tutu_var%BREVLI~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @49
END

I_C_T ~%tutu_var%CADDER~ 0 X#GarCadd
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @50
== ~%tutu_var%CADDER~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @51 END

//I_C_T2 ~%tutu_var%COKSMTH~ 1 X#GarCok
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @52 END

I_C_T ~%tutu_var%DELTAN~ 0 X#GarEltan
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @53
== ~%tutu_var%DELTAN~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @54
 END

I_C_T ~%tutu_var%DIGGER~ 11 X#GarDigg
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @55 END

I_C_T ~%tutu_var%DIGGER~ 12 X#GarDigg2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @56 END 

//I_C_T ~%tutu_var%DRIZZT~ 0 X#GarDrizzt
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @57
//== ~%tutu_var%DRIZZT~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @58
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @59 
//END

I_C_T ~%tutu_var%DROTH~ 0 X#GarDroth
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @60 END

//I_C_T ~%tutu_var%DRYAD~ 0 X#GarDryad
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @61
//== ~%tutu_var%DRYAD~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @62
//END

//I_C_T ~%tutu_var%DYNAHE~ 0 X#GarDyna
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @63
//== ~%tutu_var%DYNAHE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @64
//END

/* added on 20041112 */

//I_C_T ~%tutu_var%BELAND~ 0 X#GarBel1
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @65
//== ~%tutu_var%BELAND~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @66
// END

//I_C_T ~%tutu_var%BELAND~ 1 X#GarBel2
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @67
//== ~%tutu_var%BELAND~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @66
// END

//I_C_T ~%tutu_var%BELAND~ 2 X#GarBel3
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @67 
//== ~%tutu_var%BELAND~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @66
// END

I_C_T ~%tutu_var%BRATHL~ 0 X#GarBrath1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @68 
== ~%tutu_var%BRATHL~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1004 
END

I_C_T ~%tutu_var%BRATHL~ 2 X#GarBrath2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @69 
== ~%tutu_var%BRATHL~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1005 
END

//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState0% X#GarEdJ1
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @70 END

//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState1% X#GarEdJ2
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @71 END

//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState2% X#GarEdJ3
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @71 END

//I_C_T2 ~%tutu_var%ELDOTH~ 5 X#GarEldJ
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @72
//== ~%tutu_var%ELDOTH~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @73
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @74
//== ~%tutu_var%ELDOTH~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @75 END

I_C_T ~%tutu_var%ELMIN2~ 0 X#GarElm2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @76
== ~%tutu_var%ELMIN2~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @77
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @78
== ~%tutu_var%ELMIN2~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @79
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @80
== ~%tutu_var%ELMIN2~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @81 END

//I_C_T2 ~%tutu_var%ELMIN3~ 0 X#GarElm3
//== ~%tutu_var%ELMIN3~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarElm2","GLOBAL",1)~ THEN @82
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("X#GarElm2","GLOBAL",1)~ THEN @83 END

//I_C_T2 ~%tutu_var%ELMIN5~ 0 X#GarElmin5
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @84 END

//I_C_T ~%tutu_var%FATMBA~ 0 X#GarFat
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @85 END

//I_C_T2 ~%tutu_var%FERGUS~ 1 X#GarFer
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @86 END

//I_C_T2 ~%tutu_var%FIREBE~ 2 X#GarFB
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @87 END

I_C_T ~%tutu_var%FORTHE~ 9 X#GarFor
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @88
== ~%tutu_var%FORTHE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @89 END

//I_C_T2 ~%tutu_var%GALLOR~ 5 X#GarGal
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @90 END

I_C_T ~%tutu_var%GAXIR~ 2 X#GarGax
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @91 END

I_C_T ~%tutu_var%GAZIB~ 0 X#GarGaz
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @92 
== ~%tutu_var%GAZIB~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1006
END

I_C_T ~%tutu_var%GHORAK~ 2 X#GarGor
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @93 END

I_C_T ~%tutu_var%GORION3~ 1 X#GarGori
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @94 END

//I_C_T2 ~%tutu_var%GORPEL~ 0 X#GarGorp
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @95 END

I_C_T ~%tutu_var%GREYWO~ 1 X#GarGrey
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @96 END

I_C_T ~%tutu_var%HAFIZ~ 3 X#GarHaf
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @97 END

I_C_T ~%tutu_var%HARBOR~ 2 X#GarHar
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @98 END

I_C_T ~%tutu_var%HENTOL~ 9 X#GarHen
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @99 
== ~%tutu_var%HENTOL~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1007 
END

I_C_T ~%tutu_var%HULRIK~ 1 X#GarHul
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @100 END

I_C_T ~%tutu_var%HUNTER~ 1 X#GarHun
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @101 END

//I_C_T2 ~%tutu_var%INGOT~ 1 X#GarIng
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @102 END

//I_C_T ~%tutu_var%IVANNE~ 0 X#GarIva
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @103
//== ~%tutu_var%IVANNE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @104
// END

//I_C_T ~%tutu_var%JALANT~ 4 X#GarJal
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @105 END

I_C_T ~%tutu_var%JARED~ 5 X#GarJar
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @106 END

I_C_T ~%tutu_var%JOIA~ 4 X#GarJoi
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @107 END

I_C_T ~%tutu_var%JOPI~ 1 X#GarJop
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @108 END

I_C_T ~%tutu_var%KEEPER~ 2 X#GarKee
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @109 END

I_C_T ~%tutu_var%KENT~ 4 X#GarKent
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @110
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @111
== ~%tutu_var%KENT~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @112 END

I_C_T ~%tutu_var%KERRAC~ 2 X#GarKer
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @113 END

//I_C_T2 ~%tutu_var%KISSIQ~ 1 X#GarKis
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("TalkedToChicken","GLOBAL",0)~ THEN @114 
//== ~%tutu_var%KISSIQ~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) Global("TalkedToChicken","GLOBAL",0)~ THEN @1008 
//END

I_C_T ~%tutu_var%KRYSTI~ 3 X#GarKry
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @115
== ~%tutu_var%KRYSTI~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @116 END

I_C_T ~%tutu_scriptf%LAMBRID~ 1 X#GarLam
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @117 END

//I_C_T2 ~%tutu_var%LARYSS~ 1 X#GarLar
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @118 END

I_C_T ~%tutu_var%LARZE~ 3 X#GarLarz
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @119 END

I_C_T ~%tutu_var%LESTOR~ 4 X#GarLes
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @120 
== ~%tutu_var%LESTOR~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1009 
END

//I_C_T2 ~%tutu_var%MAPLE~ 0 X#GarMap
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @121 END

//I_C_T2 ~%tutu_var%MEILUM~ 0 X#GarMel
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @122 END

//I_C_T ~%tutu_var%MELICA~ 2 X#GarMel1
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @123
//== ~%tutu_var%MELICA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @124
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @125
//== ~%tutu_var%MELICA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @126
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @127
//== ~%tutu_var%MELICA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @128
//END

I_C_T ~%tutu_var%MELICA~ 23 X#GarMel2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @129 END

//I_C_T2 ~%tutu_var%MULAHE~ 2 X#GarMul
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @130 END

//I_C_T2 ~%tutu_var%MUTAMI~ 0 X#GarMut
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @131 END

I_C_T ~%tutu_var%NARCIL~ 1 X#GarNar
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @132 
== ~%tutu_var%NARCIL~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1009
END

I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 7 X#GarNeb
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @133
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @134 END

I_C_T ~%tutu_var%NIEMAI~ 0 X#GarNie
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @135 END

I_C_T ~%tutu_var%NOOBER~ 8 X#GarNoober
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @136 END

//I_C_T2 ~%tutu_var%NORALE~ 3 X#GarNor
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @137 END

I_C_T ~%tutu_var%NOSFER~ 2 X#GarNos
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @138
== ~%tutu_var%NOSFER~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @139 END

I_C_T ~%tutu_var%OOGIEW~ 7 X#GarOog
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @140 END

I_C_T ~%tutu_var%OUBLEK~ 8 X#GarOub
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @141 
== ~%tutu_var%OUBLEK~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1010 
END

//I_C_T2 ~%tutu_var%PALLON~ 4 X#GarPal
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @142
//== ~%tutu_var%PALLON~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @143 END

//I_C_T2 ~%tutu_var%PERMID~ 1 X#GarPer
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @144 END

I_C_T ~%tutu_var%POE~ 0 X#GarPoe1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @145 END

I_C_T ~%tutu_var%POE~ 8 X#GarPoe2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @146 END

//I_C_T ~%tutu_var%POE~ 15 X#GarPoe15
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) OR(2) !InParty("jaheira") Dead("jaheira")~ THEN @147
//== ~%tutu_var%POE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) OR(2) !InParty("jaheira") Dead("jaheira")~ THEN @148 END

I_C_T ~%tutu_var%PORTAL~ 1 X#GarPor
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @149 END

I_C_T ~%tutu_var%PRIILMU~ 4 X#GarPrii
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @150 
END

I_C_T ~%tutu_var%PRISM~ 7 X#GarPri
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @151 
== ~%tutu_var%PRISM~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1011 
END

I_C_T ~%tutu_var%RAGEFA~ 14 X#GarRag
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @152 END

//I_C_T ~%tutu_var%RAMAZI~ 6 X#GarRam
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @153
//== ~%tutu_var%RAMAZI~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @154 END

I_C_T ~%tutu_var%REGINA~ 1 X#GarReg
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @155
== ~%tutu_var%REGINA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @156 END

//I_C_T ~%tutu_var%RIELTA~ 2 X#GarRie
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @157
//== ~%tutu_var%RIELTA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @158 END

//I_C_T ~%tutu_var%RINNIE~ 1 X#GarRin
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @159
//== ~%tutu_var%RINNIE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @160
// END

/* S to Z */

//I_C_T2 ~%tutu_var%SAFANA~ 4 X#GarSaf
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @161 END

I_C_T ~%tutu_var%SAREVO~ 5 X#GarSar1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @162 END

I_C_T ~%tutu_var%SAREVO~ 14 X#GarSar2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @163 END

I_C_T ~%tutu_var%SCAR~ 4 X#GarSca1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @164 END

I_C_T ~%tutu_var%SCAR~ 20 X#GarSca2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @165 END

I_C_T ~%tutu_var%SCHLUM~ 5 X#GarSch
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~THEN @166 END

I_C_T ~%tutu_var%SEWERC~ 0 X#GarSew
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @167 END

I_C_T ~%tutu_var%SHAELL~ 5 X#GarSha
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @168 END

//I_C_T ~%tutu_var%SHOAL~ 5 X#GarSho
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @169
//== ~%tutu_var%SHOAL~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @170 END

I_C_T ~%tutu_var%SILKE~ 12 X#GarSil1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @171
== ~%tutu_var%SILKE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @172 END

I_C_T ~%tutu_var%SILKE~ 17 X#GarSil2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @171
== ~%tutu_var%SILKE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @172 END

I_C_T ~%tutu_var%SMITH~ 2 X#GarSmi
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @173 END

//I_C_T2 ~%tutu_var%SONNER~ 4 X#GarSon
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @174
//== ~%tutu_var%SONNER~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @175 END

I_C_T ~%tutu_var%TAMOKO~ 3 X#GarTam1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @176 
END

//I_C_T ~%tutu_var%TAMOKO~ 16 X#GarTam2
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @177
//== ~%tutu_var%TAMOKO~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @178 END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 8 X#GarTaz1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @179 
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1012 
END

I_C_T ~%tutu_scriptbg%TAZOK%eet_var%~ 22 X#GarTaz2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @179 
== ~%tutu_scriptbg%TAZOK%eet_var%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1012 
END

I_C_T ~%tutu_var%TENYA~ 5 X#GarTen
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @180
== ~%tutu_var%TENYA~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @181
END

//I_C_T ~%tutu_var%TEYNGA~ 0 X#GarTey
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @182 END

I_C_T ~%tutu_var%THALAN~ 28 X#GarTha1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @183
== ~%tutu_var%THALAN~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @184
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @185 END

//I_C_T2 ~%tutu_var%THALAN~ 32 X#GarTha2
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @183
//== ~%tutu_var%THALAN~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @184
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @185 END

I_C_T ~%tutu_var%TIAX~ 0 X#GarTia1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @186
== ~%tutu_var%TIAX~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @187 END

I_C_T ~%tutu_var%TIAX~ 1 X#GarTia2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @186
== ~%tutu_var%TIAX~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @187 END

I_C_T ~%tutu_var%TICK~ 1 X#GarTic
== ~%tutu_var%TICK~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @188
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @136 END

I_C_T ~%tutu_var%TREMAI~ 4 X#GarTre
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @189 END

//I_C_T ~%tutu_var%VAIL~ 3 X#GarVai
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @190 END

I_C_T ~%tutu_var%VOLO~ 0 X#GarVolo
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @191
== ~%tutu_var%VOLO~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @192
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @193 END

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 8 X#GarWil
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @194 END

I_C_T ~%tutu_var%WINSKI~ 5 X#GarWin
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @195 END

//I_C_T ~%tutu_var%XAN~ %BGTXANState0% X#GarXan1
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @196 END


I_C_T ~%tutu_var%XAN~ %BGTXANState1% X#GarXan2
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @196 END

//I_C_T ~%tutu_var%ZEKE~ 0 X#GarZek
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @197
//== ~%tutu_var%ZEKE~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @198 END
