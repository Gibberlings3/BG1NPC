BEGIN ~X#GARWYL~

IF ~%BGT_VAR% OR(3) !InParty("garrick") !InMyArea("garrick") StateCheck("garrick",CD_STATE_NOTVALID)~ THEN MyrCutioNoGarrick
SAY @0
IF ~~ THEN EXIT
END

BEGIN ~X#GARZ01~

BEGIN ~X#GARZ02~

BEGIN ~X#GARZ03~

BEGIN ~X#GARZ04~

CHAIN IF ~%BGT_VAR% InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN X#GARWYL MyrCutioGarrickChain
@1
== ~%GARRICK_JOINED%~ @2
== ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @3
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @4
== ~X#GARWYL~ @5
== ~%GARRICK_JOINED%~ @6
== ~X#GARZ01~ @7
== ~X#GARWYL~ @8
== ~X#GARZ04~ @9
== ~X#GARZ02~ @10
== ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @7
== ~%TIAX_JOINED%~ IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @11
== ~X#GARZ04~ @12
== ~%GARRICK_JOINED%~ @13
== ~X#GARZ04~ @14
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @15
== ~X#GARZ03~ @16
== ~%MONTARON_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @17
== ~%GARRICK_JOINED%~ @18
== ~X#GARWYL~ @19
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @20
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @21
== ~%GARRICK_JOINED%~ @22
== ~X#GARWYL~ @23
END
IF ~~ THEN DO ~SetGlobal("X#WyliamChat","GLOBAL",2)
ActionOverride("myrcutio",Enemy())
ActionOverride("X#GARZ01",Enemy())
ActionOverride("X#GARZ02",Enemy())
ActionOverride("X#GARZ03",Enemy())
ActionOverride("X#GARZ04",Enemy())
EraseJournalEntry(@26)~ SOLVED_JOURNAL @24
EXIT

APPEND ~%GARRICK_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#PostMyrChat","GLOBAL",1)~ THEN BEGIN PostMyrChat
SAY @25
IF ~~ THEN DO ~SetGlobal("X#PostMyrChat","GLOBAL",2)~ EXIT
END

END
