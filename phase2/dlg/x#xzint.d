ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 0 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 1 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 2 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 3 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 4 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 5 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 6 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 7 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 8 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 9 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 10 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 11 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 12 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 13 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~
ADD_STATE_TRIGGER ~%tutu_var%NIEMAI~ 14 ~!Global("X#MontBoss","GLOBAL",1) !Global("X#XzarBoss","GLOBAL",1)~

APPEND ~%tutu_var%NIEMAI~

/* Xzar Boss Encounter (Set from where? ) */
/* B says: set from p#fw0704.baf, line 6. FW0704 is Sorcerous Sundries L2 */
IF ~%BGT_VAR% Global("X#XzarBoss","GLOBAL",1)~ THEN BEGIN 0
SAY @0
IF ~~ THEN DO ~SetGlobal("X#XzarBoss","GLOBAL",2)~ EXTERN ~%XZAR_JOINED%~ X#XzarBossChain1
END

IF ~~ XZNI1
SAY @1
++ @2 + XZNI1.1
++ @3 + XZNI1.2
++ @4 + XZNI1.3
END

IF ~~ XZNI1.1
SAY @5
IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN EXTERN ~%MONTARON_BANTER%~ XZMOIN1
IF ~!InParty("montaron")~ THEN GOTO XZNI1.4
END

IF ~~ XZNI1.2
SAY @6
IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN EXTERN ~%MONTARON_BANTER%~ XZMOIN1
IF ~!InParty("montaron")~ THEN GOTO XZNI1.4
END

IF ~~ XZNI1.3
SAY @7
IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN EXTERN ~%MONTARON_BANTER%~ XZMOIN1
IF ~!InParty("montaron")~ THEN GOTO XZNI1.4
END

IF ~~ XZMOIN2
SAY @8
IF ~~ THEN GOTO XZNI1.4
END

IF ~~ XZNI1.4
SAY @9
IF ~~ THEN EXTERN ~%XZAR_JOINED%~ XZNI1.5
END

IF ~%BGT_VAR% Global("X#XzarBoss","GLOBAL",6)~ THEN BEGIN NiemainFinal
SAY @10
IF ~~ THEN DO ~SetGlobal("X#XzarBoss","GLOBAL",12) GiveGoldForce(5000) ActionOverride("montaron",JoinParty()) ActionOverride("wheber",EscapeArea()) ActionOverride("oulam",EscapeArea()) ActionOverride("william",EscapeArea()) EscapeArea()~ EXIT
END


/* Montaron Boss set where? */
IF ~%BGT_VAR% Global("X#MontBoss","GLOBAL",1)~ THEN BEGIN 5
SAY @11
IF ~~ THEN DO ~SetGlobal("X#MontBoss","GLOBAL",2)~ EXTERN ~%MONTARON_BANTER%~ MontBossChain1
END

IF ~~ MONI3
SAY @12
++ @13 + MONI3.1
++ @14 + MONI3.2
++ @15 + MONI3.3
END

IF ~~ MONI4
SAY @16
= @9
++ @17 + MONI5
++ @18 + MONI5
++ @19 + MONI5
END

IF ~~ MONI5
SAY @20
IF ~~ THEN DO ~ActionOverride("wheber",EscapeArea())
ActionOverride("oulam",EscapeArea())
ActionOverride("william",EscapeArea())
EscapeArea()~ EXIT
END
END

CHAIN3 ~%tutu_var%NIEMAI~ MONI3.1
@21
== ~%MONTARON_BANTER%~ @22
END ~%tutu_var%NIEMAI~ MONI4

CHAIN3 ~%tutu_var%NIEMAI~ MONI3.2
@23
== ~%MONTARON_BANTER%~ @22
END ~%tutu_var%NIEMAI~ MONI4

CHAIN3 ~%tutu_var%NIEMAI~ MONI3.3
@24
== ~%MONTARON_BANTER%~ @22
END ~%tutu_var%NIEMAI~ MONI4

CHAIN3 ~%MONTARON_BANTER%~ MontBossChain1
@25
== ~%tutu_var%NIEMAI~ @26
== ~%MONTARON_BANTER%~ @27
END ~%tutu_var%NIEMAI~ MONI3

APPEND ~%MONTARON_JOINED%~

IF ~%BGT_VAR% Global("X#XzarBoss","GLOBAL",8)~ THEN BEGIN MONI1
SAY @28
++ @29 DO ~SetGlobal("X#XzarBoss","GLOBAL",11) ActionOverride("montaron",LeaveParty()) ActionOverride("montaron",Enemy())~ EXIT
++ @30 DO ~SetGlobal("X#XzarBoss","GLOBAL",11)~ + MONI1.1
END

IF ~~ MONI1.1
SAY @31
IF ~~ THEN EXIT
END
END

APPEND ~%MONTARON_BANTER%~

IF ~~ XZMOIN1
SAY @32
IF ~~ THEN EXTERN ~%tutu_var%NIEMAI~ XZMOIN2
END

IF ~~ XZMOIN2
SAY @33
IF ~~ THEN EXTERN ~%XZAR_JOINED%~ XZNI1.9
END

END

APPEND ~%XZAR_JOINED%~

IF ~~ XZNI1.5
SAY @34
= @35
++ @36 DO ~SetGlobal("X#XzarBoss","GLOBAL",3)~ EXIT
++ @37 DO ~SetGlobal("X#XzarBoss","GLOBAL",4) 
ActionOverride("oulam",Enemy())
ActionOverride("wheber",Enemy())
ActionOverride("william",Enemy())
ActionOverride("niemain",Enemy())~ EXIT
END

END

APPEND ~%XZAR_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarBoss","GLOBAL",7)~ THEN BEGIN XZNI1.6
SAY @38
IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN GOTO XZNI1.7
IF ~OR(2) !InParty("montaron") Dead("montaron")~ THEN GOTO XZNI1.8
END

IF ~~ XZNI1.7
SAY @39
IF ~~ THEN EXTERN ~%MONTARON_BANTER%~ XZMOIN2
END

IF ~~ XZNI1.8
SAY @39
++ @40 DO ~SetGlobal("X#XzarBoss","GLOBAL",9) ActionOverride("xzar",LeaveParty()) ActionOverride("xzar",Enemy())~ EXIT
++ @41 + XZNI1.9
END

IF ~~ XZNI1.9
SAY @42
IF ~~ THEN DO ~SetGlobal("X#XzarBoss","GLOBAL",10)~ EXIT
END

/* Slimes Dialogue */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarSlime","GLOBAL",2)~ THEN BEGIN XzSlime
SAY @43
++ @44 DO ~SetGlobal("X#XzarSlime","GLOBAL",3)~ + XzSl1
END

IF ~~ XzSl1
SAY @45
IF ~~ THEN EXTERN ~%tutu_var%KRYSTI~ KrystiSlime
END

/* Zombie Fillets */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarZombie","GLOBAL",1)~ THEN BEGIN XzZombies
SAY @46
++ @47 DO ~SetGlobal("X#XzarZombie","GLOBAL",2)~ + XZINT6.1
END

IF ~~ XZINT6.1
SAY @48
IF ~~ THEN EXIT
END

/* Revenant Dagger */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarDagger","GLOBAL",1)~ THEN BEGIN XzDagger
SAY @49
++ @50 DO ~SetGlobal("X#XzarDagger","GLOBAL",2)~ + XZINT5.1
END

IF ~~ XZINT5.1
SAY @51
IF ~~ THEN EXIT
END

/* Firewine Dialogue */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarKahrk","GLOBAL",1)~ THEN BEGIN XzKahrk
SAY @52
IF ~~ THEN DO ~SetGlobal("X#XzarKahrk","GLOBAL",2)~ EXIT
END

/* Slime Quest Final Talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzUnder","GLOBAL",1)~ THEN BEGIN XzSlimeFinal
SAY @53
IF ~~ THEN DO ~SetGlobal("X#XzUnder","GLOBAL",2)~ EXIT
END

/* Xzar mourns Montaron */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarMourns","GLOBAL",2)~ THEN BEGIN XZMourns
SAY @54
= @55
= @56
IF ~~ THEN DO ~SetGlobal("X#XzarMourns","GLOBAL",3)~
EXIT
END

/* Xzar Mellincamp */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarChicken","GLOBAL",1)~ THEN BEGIN XzarChicken
SAY @57
++ @58 DO ~SetGlobal("X#XzarChicken","GLOBAL",2)~ + XZINT4.1
++ @59 DO ~SetGlobal("X#XzarChicken","GLOBAL",2)~ + XZINT4.1
END

IF ~~ XZINT4.1
SAY @60
++ @61 + XZINT4.2
++ @62 EXIT
END

IF ~~ XZINT4.2
SAY @63
IF ~~ THEN EXIT
END

/* Sewer Ogre dialogue */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarOgreBA","GLOBAL",1)~ THEN BEGIN XzarSewerOgre
SAY @64
++ @65 DO ~SetGlobal("X#XzarOgreBA","GLOBAL",2)~ + XZINT3.1
++ @66 DO ~SetGlobal("X#XzarOgreBA","GLOBAL",2)~ + XZINT3.1
END

IF ~~ XZINT3.1
SAY @67
++ @68 + XZINT3.2
++ @69 + XZINT3.2
++ @70 EXIT
END

IF ~~ XZINT3.2
SAY @71
++ @72 + XZINT3.3
++ @73 EXIT
END

IF ~~ XZINT3.3
SAY @74
IF ~~ THEN EXIT
END

/* Xzar Slaves dialogue */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarSlaves","GLOBAL",1)~ THEN BEGIN XzarSlaves
SAY @75
++ @76 DO ~SetGlobal("X#XzarSlaves","GLOBAL",2)~ + XZINT2.1
++ @77 DO ~SetGlobal("X#XzarSlaves","GLOBAL",2)~ EXIT
++ @78 DO ~SetGlobal("X#XzarSlaves","GLOBAL",2)~ EXIT
END

IF ~~ XZINT2.1
SAY @79
IF ~~ EXIT
END

/* Xzar - Shlum dialogue */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#XzarShlum","GLOBAL",2)~ THEN BEGIN XzarShlum
SAY @80
++ @81 DO ~SetGlobal("X#XzarShlum","GLOBAL",3)~ + XZINT1.1
++ @82 DO ~SetGlobal("X#XzarShlum","GLOBAL",3)~ + XZINT1.2
++ @83 DO ~SetGlobal("X#XzarShlum","GLOBAL",3)~ EXIT
END

IF ~~ XZINT1.1
SAY @84
++ @82 + XZINT1.2
++ @83 EXIT
END

IF ~~ XZINT1.2
SAY @85
++ @86 + XZINT1.3
++ @87 EXIT
END

IF ~~ XZINT1.3
SAY @88
++ @89 + XZINT1.4
++ @90 EXIT
END

IF ~~ XZINT1.4
SAY @91
++ @92 + XZINT1.5
++ @93 + XZINT1.6
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @94 + XZINT1.6
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @95 + XZINT1.6
END

IF ~~ XZINT1.5
SAY @96
++ @93 + XZINT1.6
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @97 + XZINT1.6
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @95 + XZINT1.6
END

IF ~~ XZINT1.6
SAY @98
IF ~~ DO ~GiveItemCreate("X#XZSLIM","xzar",1,0,0)~ EXIT
END

END

CHAIN3 ~%XZAR_JOINED%~ X#XzarBossChain1
@99
== ~%tutu_var%NIEMAI~ @100
== ~%XZAR_JOINED%~ @101
== ~%tutu_var%NIEMAI~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @102
== ~%tutu_var%NIEMAI~ IF ~InParty("montaron") InMyArea("montaron") Dead("montaron")~ THEN @103
== ~%tutu_var%NIEMAI~ IF ~!InParty("montaron")~ THEN @104
== ~%XZAR_JOINED%~ @105
== ~%tutu_var%NIEMAI~ @106
END ~%tutu_var%NIEMAI~ XZNI1

I_C_T ~%tutu_var%SCHLUM~ 2 X#XzarShlum1
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @108
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @109
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @110
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @111
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @112
DO ~SetGlobal("X#XzarShlum","GLOBAL",1)~
END

I_C_T ~%tutu_var%SCHLUM~ 3 X#XzarShlum2
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @108
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @109
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @110
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @111
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @112
DO ~SetGlobal("X#XzarShlum","GLOBAL",1)~
END

I_C_T ~%tutu_var%SCHLUM~ 6 X#XzarShlum3
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @108
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @109
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @110
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @111
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @112
DO ~SetGlobal("X#XzarShlum","GLOBAL",1)~
END

I_C_T ~%tutu_var%SCHLUM~ 7 X#XzarShlum4
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @108
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @109
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @110
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @111
== ~%tutu_var%SCHLUM~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @113
DO ~SetGlobal("X#XzarShlum","GLOBAL",1)~
END

//I_C_T ~%tutu_var%ARKION~ 3 X#XzarArkion1
//== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @114
//== ~%tutu_var%ARKION~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @115
//END

I_C_T ~%tutu_var%ARKION~ 4 X#XzarArkion2
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @114
== ~%tutu_var%ARKION~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @115
END

I_C_T ~%tutu_var%ARKUSH~ 4 X#XzarArkushule
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @116
END

I_C_T ~%tutu_var%CARSA~ 2 X#XzarCarsa1
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @117
END

I_C_T ~%tutu_var%CARSA~ 3 X#XzarCarsa2
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @118
END

I_C_T ~%tutu_var%CARSA~ 5 X#XzarCarsa3
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @119
END

I_C_T ~%tutu_var%BASSIL~ 2 X#XzarBassil1
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @120
== ~%tutu_var%BASSIL~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @121
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @122
== ~%tutu_var%BASSIL~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @123
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @124
== ~%tutu_var%BASSIL~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @125
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @126
== ~%tutu_var%BASSIL~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @127
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @128
== ~%tutu_var%BASSIL~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @129
END

//I_C_T2 ~%tutu_var%TOWNCR~ 0 X#XzarBass
//== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @130
//== ~%tutu_var%TOWNCR~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @131
//== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @132
//== ~%tutu_var%TOWNCR~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @133
//== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @134
//== ~%tutu_var%TOWNCR~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @135
//= @136
//END

//I_C_T2 ~%tutu_var%CARSA~ 8 X#XzarCarsa4
//== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) InParty("montaron")~ THEN @137
//== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !InParty("montaron")~ THEN @138
//== ~%tutu_var%CARSA~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) InParty("montaron")~ THEN @139
//= @140
//== ~%tutu_var%CARSA~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !InParty("montaron")~ THEN @139
//= @140
//END

//I_C_T2 ~%tutu_var%REVEN3~ 1 X#XzarReven
//== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @141
//== ~%tutu_var%REVEN3~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @142
//== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @143
//= @144
//== ~%tutu_var%REVEN3~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @145
//== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @146
//END


CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XzarSlime","GLOBAL",3)~ THEN ~%tutu_var%KRYSTI~ KrystiSlime
@147
== ~%tutu_var%SLYTHE~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @148
== ~%tutu_var%KRYSTI~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @149
== ~%tutu_var%SLYTHE~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @150
== ~%tutu_var%KRYSTI~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @151
== ~%tutu_var%SLYTHE~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @152
== ~%tutu_var%KRYSTI~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @153
EXIT

BEGIN ~ZIZIZI1~
BEGIN ~ZIZIZI2~
BEGIN ~ZIZIZI3~
BEGIN ~ZIZIZI4~

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#TalkedToZizi","GLOBAL",1)~ THEN ~ZIZIZI1~ Zi1
@154
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @155
== ~ZIZIZI1~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @156
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @157
== ~ZIZIZI1~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @158
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @159
== ~ZIZIZI1~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @160
DO ~SetGlobal("X#TalkedToZizi","GLOBAL",2) SetGlobal("X#SlimeCraze","GLOBAL",1) SetGlobal("X#XzarSlime","GLOBAL",1) ChangeEnemyAlly(Myself,EVILBUTBLUE) ActionOverride(Myself,Polymorph(SLIME_OLIVE)) TakePartyItem("X#XZSLIM") DestroyItem("X#XZSLIM")~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#TalkedToZizi","GLOBAL",3)~ THEN ~ZIZIZI2~ Zi2
@154
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @155
== ~ZIZIZI2~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @156
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @157
== ~ZIZIZI2~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @158
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @159
== ~ZIZIZI2~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @160
DO ~SetGlobal("X#TalkedToZizi","GLOBAL",4) SetGlobal("X#SlimeCraze","GLOBAL",1) SetGlobal("X#XzarSlime","GLOBAL",1) ChangeEnemyAlly(Myself,EVILBUTBLUE) ActionOverride(Myself,Polymorph(SLIME_OLIVE)) TakePartyItem("X#XZSLIM") DestroyItem("X#XZSLIM")~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#TalkedToZizi","GLOBAL",5)~ THEN ~ZIZIZI3~ Zi3
@154
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @155
== ~ZIZIZI3~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @156
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @157
== ~ZIZIZI3~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @158
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @159
== ~ZIZIZI3~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @160
DO ~SetGlobal("X#TalkedToZizi","GLOBAL",6) SetGlobal("X#SlimeCraze","GLOBAL",1) SetGlobal("X#XzarSlime","GLOBAL",1) ChangeEnemyAlly(Myself,EVILBUTBLUE) ActionOverride(Myself,Polymorph(SLIME_OLIVE)) TakePartyItem("X#XZSLIM") DestroyItem("X#XZSLIM")~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#TalkedToZizi","GLOBAL",7)~ THEN ~ZIZIZI4~ Zi4
@154
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @155
== ~ZIZIZI4~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @156
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @157
== ~ZIZIZI4~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @158
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) PartyHasItem("X#XZSLIM")~ THEN @159
== ~ZIZIZI4~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @160
DO ~SetGlobal("X#TalkedToZizi","GLOBAL",8) SetGlobal("X#SlimeCraze","GLOBAL",1) SetGlobal("X#XzarSlime","GLOBAL",1) ChangeEnemyAlly(Myself,EVILBUTBLUE) ActionOverride(Myself,Polymorph(SLIME_OLIVE)) TakePartyItem("X#XZSLIM") DestroyItem("X#XZSLIM")~
EXIT

