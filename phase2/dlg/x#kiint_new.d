/* Comment out lines 2 through 99 in x#kiint.d */
BEGIN ~%tutu_var%TAZOK2~

ADD_TRANS_ACTION %tutu_var%SAREVO BEGIN 15 16 18 19 20 21 END BEGIN END
~SetGlobal("X#KivanSarevokTazok","GLOBAL",1)~

CHAIN IF WEIGHT #-1 ~Global("X#KivanFinalFightDead","GLOBAL",1)~ THEN ~%KIVAN_JOINED%~ X#KivanTazokDead
@0
DO ~SetGlobal("X#KivanFinalFightDead","GLOBAL",2)~
== ~%tutu_var%TAZOK2~ @1
== ~%KIVAN_JOINED%~ @2
EXIT

CHAIN IF WEIGHT #-1 ~Global("X#KivanFinalFightLiving","GLOBAL",1)~ THEN ~%KIVAN_JOINED%~ X#KivanTazokLiving
@3
DO ~SetGlobal("X#KivanFinalFightLiving","GLOBAL",2)~
== ~%tutu_var%TAZOK2~ @4
== ~%KIVAN_JOINED%~ @5
EXIT

