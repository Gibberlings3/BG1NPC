/* Interjections on Tranzig Encounter */

/* Dealing with Tranzig */
APPEND ~%tutu_var%TRANZI~
  IF ~~ X#TranzigStone2
    SAY @0 // ~Ya been smarter as a stone!~
    IF ~~ THEN GOTO 10
  END
END

/* Tranzig 0 Interjections */
INTERJECT ~%tutu_var%TRANZI~ 0 X#BranwenTranzigDialogue
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @1 // ~Stop yapping, dog. I have come to punish you for your treachery, for your sniveling ways! Tempus is with me!~
== ~%tutu_var%TRANZI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @2 // ~I hoped you'd smarten up some, big wench, before botherin' me again. But I see that ya didn't. Ya think I'd be afraid of you and these boors that freed ya from my spell?~
= @3 // ~Stupid cow. If ya'll ain't outta my face in the next five seconds, I'll blast ya to kingdom come!~
END
IF ~~ THEN EXTERN ~%tutu_var%TRANZI~ 1

/* Tranzig 7 Interjections */
/* passback not required - all trans actions relate to journal entries */
I_C_T3 ~%tutu_var%TRANZI~ 7 X#TRANZI7
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @4 // ~You are disgusting, wretch... Kill him, <CHARNAME>. One who begs for his life has no honor. He will betray you to Tazok if you let him go.~
== ~%tutu_var%TRANZI~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @5 // ~Harpy!~
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @6 // ~Look, he soiled himself! Let's kill him, so there is no chance that this weakling procreates. That's unless his manhood forever remains stuck between his own buttocks, like a mongrel dog's tail, from the fright we'd given him today. *laughs*~
== ~%tutu_var%TRANZI~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN @7 // ~Bitch.~
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @8 // ~<CHARNAME>, we must not let this wretch get away, he will surely inform his superiors. It would be advisable if we could... prevent this, somehow...~
== ~%tutu_var%TRANZI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @9 // ~No, I won't, I won't...~
END

/* Tranzig 8 Interjections */
INTERJECT ~%tutu_var%TRANZI~ 8 X#BranwenTranzigDialogue1
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @10 // ~No! <CHARNAME> gave you <PRO_HISHER> leave, but you don't have mine! Raise your weapons!~
END
IF ~~ THEN EXTERN ~%tutu_var%TRANZI~ X#TranzigStone2

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
