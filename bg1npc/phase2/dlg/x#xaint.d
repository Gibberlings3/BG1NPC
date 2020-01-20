APPEND ~%XAN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XanMoonblade","GLOBAL",1)~ THEN BEGIN XanMoonblade
SAY @0
= @1
IF ~~ THEN DO ~SetGlobal("X#XanMoonblade","GLOBAL",2)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XanDurlagEntry","GLOBAL",1)~ THEN BEGIN XanDurlagT
SAY @2
IF ~~ THEN DO ~SetGlobal("X#XanDurlagEntry","GLOBAL",2)~ EXIT
END

END

I_C_T ~%tutu_var%PRIILMU~ 2 X#XanPriilmu2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @3
END

I_C_T ~%tutu_var%KOVERA~ 8 X#XanKoveras8
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @4
== ~%tutu_var%KOVERA~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1001
END

I_C_T ~%tutu_var%GAXIR~ 0 X#XanGaxir1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @5
END

I_C_T ~%tutu_var%TAMOKO~ 12 X#XanTamoko12
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @6
== ~%tutu_var%TAMOKO~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1002
END

I_C_T3 ~%tutu_var%DOOMSAY~ 1 X#XanDoomsayer1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @7
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @8
== ~%XAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @9
== ~%tutu_var%DOOMSAY~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1003
END

I_C_T3 ~%tutu_var%DOOMSAY~ 2 X#XanDoomsayer2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @7
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @8
== ~%XAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @9
== ~%tutu_var%DOOMSAY~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1003
END

I_C_T3 ~%tutu_var%DOOMSAY~ 3 X#XanDoomsayer3
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @7
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @8
== ~%XAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @9
== ~%tutu_var%DOOMSAY~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1003
END

//I_C_T2 ~%tutu_var%AMARAN~ 1 X#XanAmarande1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @10
//END

I_C_T ~%tutu_var%DESRET~ 1 X#XanDeserta1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @11
== ~%tutu_var%DESRET~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1004
END

I_C_T ~%tutu_var%DESRET~ 3 X#XanDeserta2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @11
== ~%tutu_var%DESRET~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1004
END

I_C_T ~%tutu_var%MULAHE~ 0 X#XanMulahey1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @12
END

I_C_T2 ~%tutu_var%MULAHE~ 1 X#XanMulahey2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @13
END

//I_C_T2 ~%tutu_var%MULAHE~ 2 X#XanMulahey3
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @14
//END

//I_C_T2 ~%tutu_var%MULAHE~ 3 X#XanMulahey4
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @15
//END

//I_C_T ~%tutu_var%MULAHE~ 6 X#XanMulahey5
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @16
//== ~%tutu_var%MULAHE~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1005
//END

I_C_T ~%tutu_var%CENTEO~ 2 X#XanCenteol2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @17
END

//I_C_T ~%tutu_var%CENTEO~ 0 X#XanCenteol1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @18
//END

//I_C_T2 ~%tutu_var%NADARI~ 1 X#XanNadarin1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @19
//END

//I_C_T2 ~%tutu_var%SAREVO~ 11 X#XanSarevok1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @20
//END

I_C_T ~%tutu_var%TENYA2~ 3 X#XanTenya2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @21
== ~%tutu_var%TENYA2~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1006
END

I_C_T ~%tutu_var%TENYA2~ 2 X#XanTenya1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @22
== ~%tutu_var%TENYA2~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1007
END

I_C_T ~%tutu_var%OGRMBA~ 0 X#XanOgreSewer1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @23
END

//I_C_T2 ~%tutu_var%OGRMBA~ 1 X#XanOgreSewer2
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @24
//END

I_C_T ~%tutu_var%MAREK~ 4 X#XanMarek1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @25
== ~%tutu_var%MAREK~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1008
END

//I_C_T2 ~%tutu_var%BRAGE~ 2 X#XanBrage
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @26
//END

//I_C_T2 ~%tutu_var%MINSC~ 0 X#XanMinsc
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @27
//= @28
//END

//I_C_T ~%tutu_scriptbg%FTOWN2%eet_var%~ 6 X#XanJoseph
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @29
//== ~%tutu_scriptbg%FTOWN2%eet_var%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @30
//END

//I_C_T2 ~%tutu_scriptd%AERRAGH~ 1 X#XanDaerragh
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @31
//END

I_C_T ~%tutu_var%VOLO~ 10 X#XanVoloNashkel
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @32
END

//I_C_T ~%tutu_var%BERRUN~ 15 X#XanBerrun1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @33
//== ~%tutu_var%BERRUN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @34
//END

//I_C_T ~%tutu_var%BERRUN~ 16 X#XanBerrun2
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @35
//== ~%tutu_var%BERRUN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @34
//END

//I_C_T ~%tutu_var%BERRUN~ 17 X#XanBerrun3
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @35
//== ~%tutu_var%BERRUN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @34
//END

I_C_T ~%tutu_var%NARCIL~ 4 X#XanNarcilius2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @36
= @37
== ~%tutu_var%NARCIL~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1009
END

I_C_T ~%tutu_var%NARCIL~ 3 X#XanNarcilius2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @36
= @37
== ~%tutu_var%NARCIL~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1009
END

//I_C_T ~%tutu_var%NARCIL~ 0 X#XanNarcilius1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @38
//END

I_C_T ~%tutu_var%LAMALH~ 3 X#XanLamalha
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @39
== ~%tutu_var%LAMALH~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1012
END

//I_C_T2 ~%tutu_var%LAMALH~ 0 X#XanLamalha
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @40
//= @41
//= @42
//END

//I_C_T2 ~%tutu_var%HENTOL~ 1 X#XanHentold
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @43
//END

//I_C_T ~%tutu_var%NIMBUL~ 0 X#XanNimbul
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @44
//END

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt13
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @45
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @46
//END

I_C_T ~%tutu_var%SHVERT~ 0 X#XANSHVRTZCHE1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @47
END

//I_C_T2 ~%tutu_var%LIIA~ 8 X#XANLIIA1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @48
//END

//I_C_T2 ~%tutu_var%ELMIN3~ 0 X#XANELMIN1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @49
//END

//I_C_T2 ~%tutu_var%ELMIN5~ 0 X#XANELMIN2
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @50
//END

//I_C_T2 ~%tutu_var%CHASE~ 0 X#XANCHASE1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @51
//END

I_C_T ~%tutu_var%ENDER~ 5 X#XANENDERK1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @52
== ~%tutu_var%ENDER~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @53
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @54
END

I_C_T ~%tutu_var%KIVAN~ 10 X#XANKIVANIJ1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @55
== ~%tutu_var%KIVAN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @56
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @57
== ~%tutu_var%KIVAN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @58
END

//I_C_T ~%tutu_var%CORAN~ %BGTCORANState4% X#XANCORANIJ1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @59
//== ~%tutu_var%CORAN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @60
//=@61
//=@62
//END

//I_C_T2 ~%tutu_var%SHARTE~ 1 X#XANSHARTEEL1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @63
//END

I_C_T ~%tutu_scriptbg%KNIGHT%eet_var%~ 0 X#XANFWGNITE1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @64
END

I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 6 X#XANNEB
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @65
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @66
END

//I_C_T ~%tutu_var%LOTHAN~ 1 X#XANPOISON
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @67
//== ~%tutu_var%LOTHAN~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @68
//END

I_C_T ~%tutu_var%KEEPER~ 4 X#XANCANDLEKEEP
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%KEEPER~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1010
END

I_C_T ~%tutu_var%LANTAN~ 0 X#XANLANTAN
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @70
END

I_C_T ~%tutu_var%CHLOE~ 4 X#XANCHLOE
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @71
== ~%tutu_var%CHLOE~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1011
END
