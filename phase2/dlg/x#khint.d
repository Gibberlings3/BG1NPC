//I_C_T2 ~%tutu_var%OGRMBA~ 1 X#JaheiraTorture
//== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @0
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @1
//== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @2
//== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @3
//== ~%tutu_var%OGRMBA~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @4
//END

/* Khalid, With Jaheira In Party, after Albert and Ruffie Disappear */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#KWJIPARD","GLOBAL",1) !See("Rufie")~ THEN ~%KHALID_JOINED%~ KWJIPARD1
@5
DO ~SetGlobal("X#KWJIPARD","GLOBAL",2)~
== ~%JAHEIRA_BANTER%~ @6
== ~%KHALID_BANTER%~ @7
EXIT

/* Khalid, Jaheira & Xzar in area FW0704 upstairs at Sorcerous Sundries, Niemain, Oulam, Wheber, William are all dead */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#KJXUASS","LOCALS",1)~ THEN ~%KHALID_JOINED%~ KJXUASS1
@8
DO ~SetGlobal("X#KJXUASS","LOCALS",2)~
== ~%JAHEIRA_BANTER%~ @9
== ~%KHALID_BANTER%~ @10
EXIT

