/* for BGT: state 35 replaces 1 if talked to Thalantyr more than three times */

I_C_T ~%tutu_var%THALAN~ 35 P#KivWelcome
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @50
== ~%tutu_var%THALAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @51
DO ~GiveItemCreate("x#kispr","kivan",1,0,0)~
END
