//I_C_T ~%tutu_var%POE~ 15 X#PoeTLK
// == ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @0
// == ~%tutu_var%POE~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @1
//END

/* Safana comment to Areana:- Noblewoman and Cyrdemac (Baldur’s Gate N) */
//I_C_T2 ~%tutu_var%NOBW8~ 3 X#SCTA
//== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @2
//END

//I_C_T2 ~%tutu_var%SILKE~ 1 X#SafanaSilke
//== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @3
//END

//I_C_T2 ~%tutu_var%ARDROU~ 2 X#SafanaArdrouine2
//== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @4
//END

//I_C_T2 ~%tutu_var%ARDROU~ 0 X#SafanaArdrouine1
//== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @5 DO ~SetGlobal("J#ArdTalk","GLOBAL",1)~
//END

//I_C_T2 ~%tutu_var%PALLON~ 3 X#SafanaPallon2
//== ~%SAFANA_JOINED%~ IF ~InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @6
//END

I_C_T ~%tutu_var%PALLON~ 0 X#SafanaPallon1
== ~%SAFANA_JOINED%~ IF ~Gender(Player1, MALE) InParty("safana") InMyArea("safana") !StateCheck("safana",CD_STATE_NOTVALID)~ THEN @7
END

APPEND ~%SAFANA_JOINED%~

/*  Safana, Larriaz The Sirine - BG Harbor */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#SLTSBGH","GLOBAL",1)~ THEN SLTSBGH1
SAY @8
IF ~~ THEN DO ~SetGlobal("X#SLTSBGH","GLOBAL",2)~ EXIT
END

END
