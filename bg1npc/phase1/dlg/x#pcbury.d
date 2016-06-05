
EXTEND_BOTTOM ~%tutu_var%KEEPER~ 2
IF ~!InParty("%IMOEN_DV%") Global("X#GorionBuried","GLOBAL",0) Global("X#PCAloneKeeperStart","GLOBAL",0)~ THEN GOTO X#PCAloneKeeper
END

CHAIN ~%tutu_var%KEEPER~ X#PCAloneKeeper
@0 DO ~SetGlobal("X#PCAloneKeeperStart","GLOBAL",1)~
END
IF ~~ THEN REPLY @1 EXTERN ~%tutu_var%KEEPER~ X#KeeperBuryGorion1
IF ~~ THEN REPLY @2 EXTERN ~%tutu_var%KEEPER~ X#KeeperBuryGorion2
IF ~~ THEN REPLY @3 EXTERN ~%tutu_var%KEEPER~ X#KeeperBuryGorion3

APPEND ~%tutu_var%KEEPER~

IF ~~ THEN BEGIN X#KeeperBuryGorion1
SAY @4
IF ~~ THEN DO ~SetGlobal("X#KeepBuryGorion","GLOBAL",1)~EXIT
END

IF ~~ THEN BEGIN X#KeeperBuryGorion2
SAY @5
IF ~~ THEN DO ~SetGlobal("X#PCBuryGorion","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN X#KeeperBuryGorion3
SAY @5
IF ~~ THEN EXIT
END

END

ADD_TRANS_TRIGGER ~%tutu_var%HULL2~ 0 ~Global("X#PCBuryGorion","GLOBAL",0)~ DO 2
