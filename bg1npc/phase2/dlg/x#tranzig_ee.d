/* Interjections on Tranzig Encounter */

/* Tranzig 7 Interjections */
/* passback not required - all trans actions relate to journal entries */
I_C_T ~%tutu_var%TRANZI~ 7 X#TRANZI7
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @6 // ~Look, he soiled himself! Let's kill him, so there is no chance that this weakling procreates. That's unless his manhood forever remains stuck between his own buttocks, like a mongrel dog's tail, from the fright we'd given him today. *laughs*~
== ~%tutu_var%TRANZI~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @7 // ~Bitch.~
END

/* Tranzig 8 Interjections */
I_C_T ~%tutu_var%TRANZI~ 8 X#JaTranzi1
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @8 // ~<CHARNAME>, we must not let this wretch get away, he will surely inform his superiors. It would be advisable if we could... prevent this, somehow...~
== ~%tutu_var%TRANZI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @9 // ~No, I won't, I won't...~
END

/* Tranzig 10 Interjections */
I_C_T ~%tutu_var%TRANZI~ 10 X#JaTranzi2
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @11 // ~I do not relish taking this path, but, unfortunately, it is the only truly safe option. I stand in agreement with your decision, <CHARNAME>.~
== ~%tutu_var%TRANZI~ @12 // ~Ya all gonna die!~
END


/* Branwen- Tranzig Death */
APPEND ~%BRANWEN_JOINED%~
IF WEIGHT #-2 ~%BGT_VAR% Global("P#BranTranzig","GLOBAL",1)~ THEN BEGIN BranQuest2
SAY @13 // ~The dishonorable dog is dead! Tempus, your will is done! Come, let's drink to Tempus and to victory, <CHARNAME>!~
IF ~~ THEN DO ~SetGlobal("P#BranTranzig","GLOBAL",2)~ EXIT
END
END
