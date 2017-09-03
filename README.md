# The BG1NPC Project

**[A Gibberlings Three Mod](http://www.gibberlings3.net/)**

**Authors:** [The BG1NPC Project Team](http://gibberlings3.net/forums/?showtopic=1315). Please contact us on the Gibberlings3 forums for more information.

**Project Coordinators (in temporal order):**
* [Blucher](http://gibberlings3.net/forums/?showuser=721)
* [Kish](http://gibberlings3.net/forums/?showuser=62)
* [Andyr](http://gibberlings3.net/forums/?showuser=30)
* [Domi](http://gibberlings3.net/forums/?showuser=142)
* [cmorgan](http://gibberlings3.net/forums/?showuser=844)
* Currently: [AstroBryGuy](http://gibberlings3.net/forums/index.php?showuser=6858)

**On the web: [Home page](http://www.gibberlings3.net/bg1npc/)** and **[discussion forum](http://gibberlings3.net/forums/index.php?showforum=45)**
For support issues on a Tutu, EasyTutu, BGT, BGEE, or EET install, please contact [www.gibberlings3.net](http://www.gibberlings3.net/). For support issues on a BGT install involving Big Picture (<acronym title="Big Picture">BP</acronym> ) mods or Mega Installs, please contact [www.spellholdstudios.net](http://www.spellholdstudios.net/).

**Version** 22.9 - [Check for the most recent version](http://gibberlings3.net/forums/index.php?app=downloads&showcat=11)
**Languages:** English, Spanish, French, Polish, German* (teilweise noch in englisch)
**Platforms:** Windows, Mac OS X, and Linux

## Contents

[Notes](#notes)
[Overview](#overview)
[Compatibility](#compatibility)
[Installation](#installation)
[Components](#components)
[Modder Notes](#modder-notes)
[Thanks and Acknowledgments](#thanks-and-acknowledgments)
[Contact and Copyright Information](#contact-and-copyright-information)
[Version History](#version-history)

## Notes

For documentation to troubleshoot romances or quests, please follow these links, or reference the individual .html files in the directory BG1NPC\Documents:

*   [BG1NPC Romance Guide](bg1npc_docs/bg1npc_romance_guide.pdf)
*   [Dynaheir's Quest](bg1npc_docs/dynaheirsquest.html)
*   [Coran's Quest](bg1npc_docs/coransquest.html)
*   [Tiax's Quest](bg1npc_docs/tiaxsquest.html)
*   [Xan's Quest](bg1npc_docs/xansquest.html)
*   [Kagain's Quest](bg1npc_docs/kagainsquest.html)
*   [Garrick's Quest](bg1npc_docs/garricksquest.html)
*   [Kivan's Quest](bg1npc_docs/kivansquest.html)
*   [Xzar's Quest](bg1npc_docs/xzarsquest.html)
*   [Jaheira's Quest](bg1npc_docs/jaheirasquest.html)
*   [For Modders: Index of Variables used in BG1NPC Project code](bg1npc_docs/bg1npcvarindex.htm)
*   [For Modders: Interjections by location](bg1npc_docs/interjectbylocation.xls)
*   [For Modders: Interjections by NPC](bg1npc_docs/interjectbynpc.xls)
*   [For Modders: Interjections by .cre file](bg1npc_docs/interjectbycreature.xls)


## Overview

This mod expands on the depth of character and levels of interaction with the NPCs from the BG game. When BG2 was released, one of the major improvements in many peoples' eyes was the increased level of interaction one could have with the party members. This mod was developed to allow BG players a similar experience. NPCs in your party now have banters with the PC, with each other, and small side-quests of their own. As we were unable to get the original character voice actors to voice all the new lines, we instead sought out music appropriate to each NPC to be played whenever they initiate banter. This musical package is a separate, optional package (to keep the download size down) titled _The BG1NPC Music Pack_. You can find it on [The Gibberlings Three download page.](http://gibberlings3.net/forums/index.php?app=downloads&showcat=11)


## Compatibility

This mod is designed to work on Tutu v4, EasyTutu, and BGT, all based on full, patched installs of Baldur's Gate and Baldur's Gate II. Neither the BG2 expansion Throne of Bhaal nor the BG expansion Tales of the Sword Coast are required. Current versions are also compatible with BGEE and EET.

This mod will not install correctly under versions of WeiDU below v237. This distribution ships with WeiDU v242, which will automatically update your WeiDU version when you install The BG1NPC Project.

BG1NPC is not currently compatible with Tutu v5 or v6. It might install, but is guaranteed to behave incorrectly. Don't say we didn't warn you. If you have legacy copies of these rebuilds, don't use them - Easytutu and Tutu v4 are the last confirmed workable platforms.

Sword Coast Stratagems, EasyTutu, BGT, BG1NPC, and BG Unfinished Business have made special efforts to make sure players can use these mods together without conflict. In addition, we have adapted our code to allow concurrent use of Sirene's Call. Please visit the forums for more information, especially on install order.

A discussion of install order and a list of compatible mods can be found in [The Tutu State of the Modding Union](http://gibberlings3.net/forums/index.php?showtopic=8122) at the Gibberlings Three.

For BGT, a discussion of install order and a list of compatible mods can be found by checking [Spellhold Studios forums: compatibility](http://www.shsforums.net/index.php?showtopic=19539) and looking for specific install order recommendations elsewhere on the forums, notably [Mega Mod Help](http://www.shsforums.net/index.php?showforum=193) and projects like BiG World Project (BWP). Even if you are not playing a Mega Mod install, these are the places where people have experimented with install orders using BG1NPC on BGT games.

For BGEE, a list of compatible mods can be found by checking [mlnevese's list of BGEE Mods at the Baldur's Gate Forums](http://forum.baldursgate.com/discussion/15380/bg-ee-mods-and-modding-tutorials-quick-links/p1) and looking for specific install order recommendations elsewhere on the forums.


## Installation

### Windows
The BG1NPC Project is packaged and installed with WeiDU and is distributed as a self-extracting archive. To install, simply double-click the archive and follow the instructions on screen.

Alternatively the files can be extracted from the archive using [WinRAR](http://www.rarlab.com/). If properly extracted, you should have a "bg1npc" folder and setup-bg1npc.exe in your game folder (the folder which contains the CHITIN.KEY file). To install, simply double-click setup-bg1npc.exe and follow the instructions on screen.

Please run setup-bg1npc in your game folder to reinstall, uninstall or otherwise change components.

### macOS
_If the mod was previously installed, uninstall it before extracting the new version._ The BG1NPC Project is packaged and installed with WeiDU. To install, extract the mod archive, then copy of the _contents_ of the folder "OSX-bg1npc-v22.9" into your game folder (the folder which contains the CHITIN.KEY file). If properly extracted, you should have a "bg1npc" folder, setup-bg1npc, and setup-bg1npc.command in your game folder. To install, simply double-click **setup-bg1npc.command** and follow the instructions on screen.

### Linux
**For Tutu/BGT installs:** Download the latest version of WeiDU for Linux from weidu.org and extract (at least) the WeiDU, weinstall and tolower executables in a $PATH directory (e.g. /opt/bin). Following that, open a terminal, cd to your Tutu/BGT installation directory, run `tolower' and answer Y to both queries. After that, run 'weinstall bg1npc' from your game installation directory to install or uninstall the mod.

**For BGEE/EET installs:** See [The Linux User's Guide to Installing Mods on the Enhanced Editions](http://gibberlings3.net/forums/index.php?showtopic=28516).


## Components

The BG1NPC Project contains 28 separate components that can be installed independently of one another.

At the beginning of the install, WeiDU will ask if you want to display four groups of components. If you wish to install or uninstall any of these components, reply "Y"; if not, the installer will allow you to skip ahead to the next section.

To uninstall BG1NPC completely, uninstall the component **The BG1NPC Project: Required Modifications.** The rest of the mod is dependent on that core component being installed, and will automatically de-install **all** of BG1NPC . To make sure the last elements are removed, delete the folder bg1npc and setup-bg1npc.exe from your installation directory.

If you wish to use only portraits or tweaks, you still must install this core repairs component.

### The BG1NPC Project: Required Modifications
This component patches dialogue, creatures, scripts, adds or changes some items, fixes and alters some resources, and generally prepares for the rest of BG1 NPC . It must be installed if you want to install any of the other components. The rest of the mod is dependent on that core component being installed, and uninstalling it will automatically de-install **all** of BG1NPC.

### The BG1NPC Project: Banters, Quests, and Interjections
This component adds intra-party banters to BG NPCs. Each joinable NPC banters with every other joinable NPC and with the player character. It also adds interjections, scenery dialogue, encounters and quests for the NPCs . Kagain, Coran, Garrick, Kivan, Dynaheir, Xzar, Jaheira, Tiax, and Xan have custom personal quests. Additional small "Easter Egg" encounters are also included.

### The BG1NPC Project: Give Edwin his BG2 Portrait
This component will give Edwin his portrait from BG2 .

### The BG1NPC Project: Give Imoen her BG2 Portrait
This component will give Imoen her portrait from BG2 .

### The BG1NPC Project: Give Jaheira her BG2 Portrait
This component will give Jaheira her portrait from BG2 .

### The BG1NPC Project: Give Minsc his BG2 Portrait.
This component will give Minsc his portrait from BG2 .

### The BG1NPC Project: Give Viconia her BG2 Portrait
This component will give Viconia her portrait from BG2 .

### The BG1NPC Project: Kivan's "Kivan and Deheriana Companions" Portrait
This component will give Kivan his portrait from Domi's mod, for those wanting consitency for the entire saga.

### The BG1NPC Project: Add Non-Joinable NPC Portraits to Quests and Dialogues (DEPRECATED)
Installing this component gives some important non-joinable NPC portraits, such as Gorion, Angelo, Duke Eltan and Tazok. _This component has been deprecated due to copyright issues._

### The BG1NPC Project: Ajantis's Romance Core (teen content)
This component will allow Ajantis to romance a Good or Lawful Neutral female PC. As of this version, you must choose your preferred timing for any romances you install; the standard speed is one hour, meaning that the minimum real time between romance lovetalks is one hour.

### The BG1NPC Project: Branwen's Romance Core (teen content)
This component will allow Branwen to romance a male PC. As of this version, you must choose your preferred timing for any romances you install; the standard speed is one hour, meaning that the minimum real time between romance lovetalks is one hour.

### The BG1NPC Project: Coran's Romance Core (adult content)
This component will allow Coran to romance a female PC of human or elven background; solving Coran's expanded quest will effect the development of the romance, as will the PC's reactions in dialogue. As of this version, you must choose your preferred timing for any romances you install; the standard speed is one hour, meaning that the minimum real time between romance lovetalks is one hour.

### The BG1NPC Project: Dynaheir's Romance Core (teen content)
This component will allow Dynaheir to romance a male PC , and triggers an extension to Dynaheir's Quest. Please note that for BGT compatibility, the final set of cutscene encounters does not occur in the BGT version. As of this version, you must choose your preferred timing for any romances you install; the standard speed is one hour, meaning that the minimum real time between romance lovetalks is one hour.

### The BG1NPC Project: Shar-Teel Relationship Core (adult content)
This component will allow Shar-Teel to romance a male PC. As of this version, you must choose your preferred timing for any romances you install; the standard speed is one hour, meaning that the minimum real time between romance lovetalks is one hour.

### The BG1NPC Project: Xan's Romance Core (teen content)
This component will allow Xan to romance a female PC. As of this version, you must choose your preferred timing for any romances you install; the standard speed is one hour, meaning that the minimum real time between romance lovetalks is one hour.

### The BG1NPC Project: Female Romance Challenges, Ajantis vs. Xan vs. Coran
This component expands the romance options and content for female characters being courted by Coran, Ajantis, and/or Xan. It only appears for female characters who have two or three of these NPCs in their party.

### The BG1NPC Project: NPCs Can Be Sent to Wait in an Inn
_Tutu, BGEE Only_
This component allows BG NPCs to be sent to an Inn, another location, or to wait for you when you dismiss them from the party. This component is not compatible with the similar component from Sword Coast Strategems, but both mods detect each other and will not install components that conflict. If you would prefer to use Sword Coast Stratagems' version, do not install BG1NPC's version. In the BG1NPC version, slightly different waiting places are used, and NPCs will highly dislike being abandoned alone in dangerous areas...

**NPC waiting locations:**

*   Ajantis - Friendly Arm Inn or Elfsong Tavern
*   Alora - Friendly Arm Inn or Elfsong Tavern
*   Branwen - Friendly Arm Inn or Elfsong Tavern
*   Coran - Belching Dragon in Nashkel or Elfsong Tavern
*   Dynaheir/Minsc - Friendly Arm Inn or Elfsong Tavern
*   Edwin - Belching Dragon in Nashkel or Low Lantern
*   Eldoth/Skie - Feldpost's Inn or Elfsong Tavern
*   Faldorn - Cloakwood (what, you think she'd wait in an inn?)
*   Garrick - Friendly Arm Inn or Elfsong Tavern
*   Imoen - Friendly Arm Inn or Elfsong Tavern
*   Jaheria/Khalid - Friendly Arm Inn or Elfsong Tavern
*   Kagain - His store or Blusing Mermaid
*   Kivan - Friendly Arm Inn or Elfsong Tavern
*   Montaron/Xzar - Belching Dragon in Nashkel or Low Lantern
*   Quayle - Friendly Arm Inn or Elfsong Tavern
*   Safana - Belching Dragon in Nashkel or Elfsong Tavern
*   Shar-Teel - Belching Dragon in Nashkel or Blushing Mermaid
*   Viconia - A cave on the South Beregost Road or Blushing Mermaid
*   Xan - Friendly Arm Inn or Elfsong Tavern
*   Yeslick - Friendly Arm Inn or Elfsong Tavern

### The BG1NPC Project: Alora's Starting Location.
**Alora** will start either in her regular starting place or in [Gullykin](http://www.forgottenwars.com/bg1/ar4000.htm) at the door to the winery. Change to the join-in dialogue: If you are using a mod which changes Alora's pre-joining dialogue significantly (no known mods do at the present), please be advised that we create an entirely new joining dialogue file.

### The BG1NPC Project: Eldoth's Starting Location
_Tutu, BGEE Only_'
**Eldoth** will start either at his regular location or at the [Coastal Way](http://www.forgottenwars.com/bg1/ar2800b.htm) by the obelisk. No change to the join-in dialogue.

### The BG1NPC Project: Quayle's Starting Location
_Tutu, BGEE Only_
**Quayle** will be available in either his regular starting location or the [Nashkel Carnival](http://www.forgottenwars.com/bg1/ar4900.htm) near Great Gazib. No change to the join-in dialogue.

### The BG1NPC Project: Tiax's Starting Location
_Tutu, BGEE Only_
**Tiax** will start in his regular location or [Beregost](http://www.forgottenwars.com/bg1/ar3300b.htm), in Feldepost's Inn. No change to the join-in dialogue.

### Jason Compton's Accelerated Banter Script
_Tutu, BGT Only_
This component installs Jason Compton's Accelerated Banter Script, which basically makes banters happen more often. It is the same one as included with mods such as the Banter Packs for BG2, so if you have installed it there you don't need it again. Don't worry, the installer will tell you if you already have it installed.

### Banter Timing Tweak
_BGEE Only_
This component utilizes the new BANTTIMG.2DA file available in BGEE to adjust banter dialog timings, allowing them to be accelerated *or* decelerated. This component supercedes Compton's Banter Accelerator script for BGEE. It is not available for Tutu/BGT (Compton's Banter Accelerator remains available for Tutu/BGT).

### The BG1NPC Project: Make Shar-Teel Unkillable until In Party
_Tutu Only_
This component installs a short set of changes to Shar-Teel and her scripts which make her unkillable until she joins the party. This allows players to have the duel necessary for Shar-Teel to join the party without risking her destruction. It is compatible with Sword Coast Stratagems' similar component.

### The BG1NPC Project: Bardic Reputation Adjustment
This component places three Bards in three inns scattered on the Sword Coast. Each can be hired to spread your fearsome reputation around, decreasing your reputation. The amount of money this costs is dependent on your current reputation. This allows players to manipulate reputation both upwards through temple donations, and downwards through the spread of rumors (for those of us who hate killing an innocent just to keep neutral NPCs happy).

### The BG1NPC Project: Cloakwood areas availability in Chapter One
This component provides the option of opening up the first map of Cloakwood or all four Cloakwood maps at the start of the game. This is to support players who wish to pick up Coran and Faldorn earlier.

### The BG1NPC Sarevok's Diary Adjustments**
This component installs either SixofSpades' Expanded Sarevok Diary, or the original BG1NPC Project version.

SixofSpades' Expanded Sarevok Diary adds content rationalizing in-game events as closely to the storyline as he could, and incorporates entries that give depth to roleplayers. It also sets the diary to a book instead of a scroll. It is more a comprehensive change than Unfinished Business.

BG1NPC's original version changes the dates in the diary to fit the BG storyline more closely. It is less agressive a change than Unfinished Business' version.

Not installing either means that you have the original diary, flagged as a scroll, with no content changes.

In order of extent of changes, from least to most, between BG1 Unfinished Business (BG1UB) and BG1NPC:

* Vanilla
* "Slightly" restored (just correcting the dates) in BG1NPC regular
* "Rationalized and Updated" in SixofSpades' BG1UB component
* "Dates and characterizations and entries extended" in SixofSpades' BG1NPC component

### The BG1NPC Project: Check for TutuFix Walking Speeds
_Tutu Only_
This component can be used to match BG1 NPC -created actors/NPCs walking speeds to the default walking speeds if you have chosen to install TutuFix's Walking Speeds Component. It checks to see if Walking Speeds has modified the NPC Montaron, and then checks each BG1NPC -added creature you have installed to see if they qualify for the walking speed modification. If you have, it patches accordingly. If you have not installed TutuFix's Walking Speeds Component, no changes will be made. PLEASE NOTE: This component only checks BG1 NPC creatures. If you have added other mods, a better approach is to install the Walking Speeds component of TutuFix after all mods that add new quests, characters, or NPCs have been applied.

**WARNING: Tutufix's Walking Speeds component has odd effects on the Polymorph, Haste, and Slow spells.** Fixes for these odd behaviors are under development by the BG2 Tweaks team at [www.gibberlings3.net](http://www.gibberlings3.net/).

### The BG1NPC Project: Player-Initiated Dialogues (PIDs)
This component will give the player force-talk options for all party members. This will allow the PC to ask questions about an NPC and their past. To activate the PIDs, have your character talk to the NPC in question. Please note: the PID component must be installed after all other BG1NPC components. If you change an installation component involving dialogue, this component will automatically be uninstalled, and you may have to manually re-install it.

_Tutu only_: This component also has a Player-initiated string-fixer for all BGNPCs. If an NPC is starting to say other character's lines, or sounds odd, then speak to the character and let them know that their voice "sounds strange". The PID string-fixer will re-map the voiced lines and responses for the character, allowing you to continue the game. 

## Modder Notes

The philosophy driving coding in this project is to preserve compatibility with as wide a range of platforms and mods as possible. The BG1NPC Project incorporates the following required core fixes to support Project code:

*   [Index of Variables used in The BG1NPCProject code, with file name and line number, sortable by column.](bg1npc_docs/bg1npcvarindex.htm)
*   Use of [Cross Platform Modding Variables](http://gibberlings3.net/forums/) for single install code for multiple platforms
*   Use of Fluid State Variables for single install code for BGT compatible coding of joinable NPCs who stack BG dialogue on top of BG2 dialogue. This will be most useful when used in conjunction with versions of BGT v1.06 and above.
*   Non-destructive .tp2 patching of the pdialog.2da to incorporate Dream Scripts for all standard BioWare Non-Player-Characters
*   Non-destructive .tp2 patching of the interdia.2da to incorporate Imoen's banter file if not present
*   Non-destructive (installs if not present) initialization of bimoen.dlg/_bimoen.dlg
*   Non-destructive .tp2 patching of the happy.2da to allow CamDawg's Neutral/Happy interjection restoration
*   Tutu only: non-destructive .tp2 patching of the songlist.2da to allow music swapping
*   Clearing of repetition of default BioWare dialogues by ADD_STATE_TRIGGER and ADD_TRANS_ACTION to most files (c.f. files BG1NPC/Core/DLG/X#BGREPLACE_TUTU.D and BG1NPC/Core/DLG/X#BGREPLACE_BGT.D)
*   Tutu v4 and SoA-Only install support of cutspy.cre by creation of a working x#cutspy.cre
*   Creation and installation of Gorion's "talking letter" to force reading and variable setting on in-game receipt
*   Non-destructive patching of several NPCs to recheck that platform default override scripts and gnome animations are correct, and to force any .cre we use to effect v2 rather than v1
*   Inclusion of STATE.IDS patching to support CD_STATE_NOTVALID (courtesy of CamDawg)
*   ACTION.IDS, TRIGGER.IDS, GTIMES.IDS, and ANIMATE.IDS updated to Throne of Bhaal version (courtesy of BG2 Fixpack)
*   REPLACE_TEXTUALLY removal of Tazok's invulnerability items to render him killable in the Bandit Camp encounter
*   Tutu/BGT only: Cleaning Joined Files of non-conditional states using reversible non-attainable variables specific to the states in question, using a standardized format REPLACE_STATE_TRIGGER ~_AJANTJ~ 1 ~Global("X#JCleanAjantis","GLOBAL",1)~
*   Hijacking of Coran's Wyvern Timer and related dialogue via ~GlobalTimerExpired("Coran","GLOBAL")~ ~GlobalTimerExpired("Coran","GLOBAL") Global("X#CoranWyvernDisable","GLOBAL",1)~ and extension of his bcs.
*   Falsing of Kivan's and Minsc's standard timers in bcs, effectively removing any quest-time-related attempt to leave the party
*   Inclusion of a patching macro to convert Tutu items to BG2 items for BGT compatibility
*   Patching in all Tutu v4 Area Script name assignments for existing areas.
*   Area Type (FOREST, OUTDOOR, etc.) flagging patch for all areas
*   Tutu only: WizWom's NPC Battle fix, patching existing .bcs with REPLACE_TEXTUALLY ~MakeUnselectable(5000)~ ~MakeUnselectable(6) Continue()~
*   Miscellaneous non-destructive creature patching for all gnomes in the game, for animation, level, kit, etc.
*   In .DLG: Use of I_C_T with passback or I_C_T3 with passback for maximum compatibility with multiple interjections into the same state.
*   | TuTu | Variable | Associated | BGT |
    | dream | %bgdreams% | player1d | BG1Dream |
    | 2 | %bgdream1% | DRMTXT-2 has played | 1 |
    | 3 | %bgdream2% | DRMTXT-3 has played | 2 |
    | 4 | %bgdream3% | DRMTXT-4 has played | 3 |
    | 5 | %bgdream4% | DRMTXT-5 has played | 4 |
    | 6 | %bgdream5% | DRMTXT-6 has played | 5 |
    | 7 | %bgdream6% | DRMTXT-7 has played | 6 |

This list covers the required components. For compatibility notes on individually installed components, please evaluate the code directly, remembering that the files are often interlinked - so search carefully. While almost all Project code actively tries to avoid compatibility problems, two specific components do re-adjust major expected behaviors. ALORA being moved destructively overwrites a new pre-joining [_]ALORA.DLG, so if a mod has added to her pre-joined file those materials will be destroyed. KAGAIN's Caravan Quest shuts the variable "KagainCaravan" off and replaces it with a new expanded quest using "X#KagainCaravan".

As of September, 2011, none of the above items have shown incompatibility problems in testing with both Tutu and BGT standard mods installed in the recommended orders from the forums.


## Thanks and Acknowledgements

It takes many people to contribute to a project as large as BG1NPC. The current list of folks who have contributed and we wish to thank is at our forum.

Thanks to Jason Compton for his help in spotting where Andyr messed up with the very first alpha, and for letting us use his accelerated banter script! Big thanks also to Amok for letting us use some fantastic artwork for a few of the portraits. For invaluable help and consistent patience teaching working with WeiDU , thanks to CamDawg, the bigg, Grim Squeaker, Smoketest, devSin, and Nythrun. Thanks also to Domi, who authored and coded a large amount of content, has organized and directed the BG1NPC community for several years, and who constantly tracks down answers and bugs for you, the player. And thanks, of course, to the Infinity Engine modding community for its continued existence.

The current list for this release shows the dedication of a community for many years:

**Project Leads**

*   **Blucher** : Project creator
*   **Kish** : Project co-creator
*   **Domi** : Coordinator
*   **Andyr** : Putting-together person
*   **cmorgan** : Wrapup and modernization Coordinator, traification, cross platform implementation

**Project Contributors (in alphabetical order)**

*   Ajnos: playtester
*   Amazing Maurice: writer
*   Amgot: playtester
*   Andrew: playtester
*   Andyr: writer, coder, proofreader, troubleshooter, playtester, coordinator
*   Annalena: playtester
*   Arian: writer
*   Ascendency-Down: playtester
*   Ascenscion64: coder
*   AstroBryGuy: BGEE compatibility
*   Aurelius: writer
*   Baronius: coder
*   berelinde: writer, coder, proofreader, troubleshooter, playtester
*   Big Rob: proofreader
*   Black Elk: proofreader
*   Blucher: writer, coder, proofreader, troubleshooter, playtester, coordinator
*   BobTokyo: proofreader
*   Bookwyrme: proofreader
*   Bren: coder, proofreader
*   Caillean: playtester
*   Cam: coder
*   CamDawg: coder, proofreader, troubleshooter, playtester
*   Catseyes: playtester
*   Chevalier: troubleshooter, playtester
*   Clary: proofreader
*   cliffette: writer, proofreader
*   cmorgan: coder, proofreader, troubleshooter, playtester, coordinator
*   Creepin: playtester
*   Culain Mainframe: playtester
*   Cybersquirt: proofreader
*   Dan_Co9: writer
*   Deathmage: writer
*   Delvar: writer
*   Daulmakan: Proofreader
*   devSin: coder
*   DGR: proofreader
*   Domi: writer, coder, proofreader, troubleshooter, playtester, coordinator
*   Dorotea: writer, coder
*   Echon: playtester
*   Elena: coder
*   erebusant: playtester, troubleshooter
*   Eric: coder, proofreader
*   Ginger: playtester
*   Gorilym: coder, proofreader, troubleshooter, playtester
*   Grand Dracolich: proofreader, playtester
*   Greis: proofreader
*   Grim Squeaker: coder
*   Helseth: proofreader
*   Hendryk: writer, proofreader, troubleshooter, playtester, coordinator
*   Hlidskialf: coder
*   Hoppy: playtester
*   Htn: writer
*   Icelus: coder, proofreader
*   INS-Hyacinth: proofreader
*   Insolent Worm: proofreader
*   Inuna: playtester
*   jastey: writer, coder, proofreader, troubleshooter, playtester
*   Jinnai: writer
*   -JW-: troubleshooter, coder
*   K.Lou of Combs: proofreader
*   Kabuki: proofreader
*   Karkadinn: writer
*   Katerina: playtester
*   Katerine: proofreader
*   Kenyon: playtester
*   Keryvian: coder
*   Kiki & Mr. Kiki: writer(s)
*   Kish: writer, coder, proofreader, troubleshooter, playtester, coordinator
*   Kitana: playtester
*   Kulyok: writer, coder, proofreader, troubleshooter, playtester
*   Lisandro: proofreader
*   Macready: coder
*   Melisah: proofreader
*   Memnoch: proofreader
*   Merja: writer
*   Milkfed: troubleshooter, playtester
*   Miloch: coder, proofreader, troubleshooter, playtester
*   Minerva: proofreader
*   Mordenkainen: proofreader
*   Mr. Ennigma: proofreader
*   NiGHTMARE: writer, coder, troubleshooter
*   Nim: playtester
*   Nythrun: coder
*   Princeps: proofreader
*   Quana: proofreader, playtester
*   Quijana: proofreader
*   Qwinn: playtester
*   Rastor: coder
*   Reverendratbastard: proofreader
*   Riane: playtester
*   Sarah J: writer
*   ScuD: playtester, troubleshooter
*   seanas: proofreader
*   Seifer: writer
*   Sevialith: coder, proofreader
*   Sgàth: proofreader
*   Shed: proofreader
*   Sir BillyBob: coder, proofreader, troubleshooter
*   Sir-Kill: coder
*   smoketest: coder
*   Sphira: writer
*   Tancred: writer
*   TGMaestro: coder
*   Thanatos: writer
*   the bigg: coder
*   Theodur: writer
*   ThomasL: proofreader, playtester
*   Turkish Delight: writer
*   Twani: playtester
*   Unrelated Personage: proofreader
*   Vagary: proofreader
*   Volly: proofreader, playtester
*   Western Paladin: playtester, proofreader
*   Weyoun: writer
*   WizWom: coder, troubleshooter
*   Wyvern: proofreader
*   XVIII: coder
*   ycvflute: proofreader
*   Zulrik: writer
*   10thLich: proofreader

**Additional Components:**

*   Dorotea: NPCs can be sent to wait at an inn
*   JCompton: Accelerated Banter Script
*   SixofSpades: Expanded Sarevok Diary
*   cmorgan, berelinde: Bardic reputation Adjustment
*   AstroBryGuy: Banter Timing Tweak
*   Ascension64, CamDawg, devSin, Nythrun, the bigg, Miloch, Wisp, cmorgan: Deep Code. Don't Ask.
*   Zulrik: charmed dialogues

    **Contributors, by NPC:**
*   Ajantis: jastey(romance, PID, interjections), Merja (banter, character concept), Seifer (banter, character concept, PC dialogues)
*   Alora: Kulyok(PID), NiGHTMARE (character concept, banter, interjections, PC dialogue), Weyoun (banter)
*   Branwen: Karkadinn (character concept, banter, interjections and PC dialogue), Kulyok (PID, romance author)
*   Coran: Domi (character concept, banter, interjections, PC dialogue, romance, quest)
*   Dynaheir: Domi (character concept, banter, interjections, PC dialogue, romance, quest), Sarah J (character concept, banter)
*   Edwin: Domi (PC dialogue, interjections, quest), Kulyok(PID), Merja (character concept, PC dialogue, interjections, banter, quest)
*   Eldoth: Hendryk (character concept, banter, PC dialogue.)
*   Faldorn: Domi (character concept, banter, interjections, PC dialogue), Merja (banter)
*   Garrick: Andyr (character concept, banter, interjections, PC dialogue, quest)
*   Imoen: Blucher (character concept, interjections), Domi (interjections), Jinnai (banter, interjections and PC dialogues)
*   Jaheira: Htn (character concept, banter and PC dialogues), Domi (editor), Kish (editor), Theodur (character concept, banters, interjections, PC dialogues, quest)
*   Kagain: Delvar(early dialogue ideas), Hendryk (character concept, banter, interjections and PC dialogues)
*   Kivan: Domi (character concept, banter, interjections, PC dialogue, quest)
*   Khalid: Arian (character concept, banter), Domi (banter), Hendryk (character concept, banter, interjections, PC dialogue)
*   Minsc: Aurelius (character concept, banter, interjections, PC dialogue), Delvar (early dialogue ideas)
*   Montaron: Hendryk (character concept, banter, interjections, PC dialogue, quest)
*   Quayle: Andyr (character concept, banter, interjections, PC dialogue), Kulyok (PID)
*   Safana: Kiki & Mr. Kiki (character concept, banter, interjections, PC dialogue)
*   Shar-Teel: cliffette (romance), Domi (banter, interjections, romance), Kish (character concept, PC dialogue, banter), Turkish Delight (character concept, banter)
*   Skie: Amazing Maurice (banter, interjections, PC dialogues), Weyoun (banter, character concept)
*   Tiax: Andyr (interjections), Kulyok (PID), Hendryk (PC dialogue) Turkish Delight (character concept, banter, PC dialogue, interjections, quest)
*   Viconia: Andyr (interjections), Dan_Co9 (character concept, banter, PC dialogue), Kulyok (PID)
*   Xan: Domi (banters, PC dialogue, quest), Kulyok(romance, quest, PID), Sphira (character concept, banter), Thanatos (banter)
*   Xzar: Hendryk (character concept, banter, interjections, PC dialogue, quest)
*   Yeslick: Deathmage (early dialogue ideas), Tancred (character concept, banter, interjections, PC dialogue)

**Spanish translation:**

*   Bhasbuto: translator
*   Bittman: translator
*   Calamity: translator
*   Chocobo_Tyrael: translator
*   Elthalas: translator
*   Elwe Alcarin: translator
*   Eresh Kigal: translator
*   Excalibur: translator
*   garciafigueres: translator
*   Ghildrean: translator
*   girfut: translator
*   Gorobei: translator
*   Hector Blanco: translator
*   Immortality: proofreader, translator, translation coordinator
*   InFlames: translator
*   jade: translator
*   JK_Eye: translator
*   Karnak: translator
*   Kronos: translator
*   L@Zar0: translator
*   Miguelan: translator
*   Perse: translator
*   Rhaenys: translator
*   rMz: translator
*   Saemon: proofreader, translator
*   Samurai_zero: proofreader, translator
*   Xanatoss: translator
*   ¿Quien si no?: translator

**French translation:**

[La Couronne de Cuivre](http://www.baldursgateworld.fr/lacouronne/baldurs-gate-reloaded-les-mods-tutu-et-baldurs-gate-trilogy/)

*   Eleima: translator (Xan)
*   Galathée: translator (Ajantis, Coran romance, Garrick, Jaheira, Khalid, Minsc, Montaron, Tiax, Female Romance Challenges)
*   Garfield: translator (Kagain, Yeslick)
*   Graoumf: translation coordinator, proofreader
*   Isaya: translator (Imoen, items, characters), translation coordinator, proofreader, packaging, translation retriever tool
*   La Voix 2 la Sagesse: translator (Dynahéir, Eldoth, Shar-Teel, Skie), proofreader
*   Lefreut: playtester, verification tool
*   Le Marquis: translator (Alora, Branwen, Faldorn, Quayle, Safana)
*   Lothringen: translator (Coran, except romance, Edwin, Kivan, Viconia, Xzar, Bardic Reputation Adjustment)

**Polish translation:**

[Children of Bhaal](http://athkatla.cob-bg.pl/viewtopic.php?t=5734)

*   Translators: Cuttooth (coordinator), Jinete, Miss misery, Chisette, Yennyfer, Krist Algar, Nero, Morgan, Christoff, Marlong, Parys, Craven, Dead, Thug Poet, Yarpen, Lord Pawel
*   Proof readers: Cuttooth (coordinator), Kol (coordinator), Lua Nova, Claudiad, Morgan, Li, Jinete, Zireael, Soul Reaver, Picollo, Zed Nocear, Arientar, Tinuviel, Euler, Grazin

**Tools Used in Creation**
[jEdit](http://www.jedit.org/) Programmer's Editor, a fantastic free world-wide project
[WinMerge](http://winmerge.org/) <acronym title="GNU's Not Unix">GNU</acronym> freeware file comparison utility, developed: Grim; Project Lead: List
[Soundset Utility](http://www.usoutpost31.com/) by Macready
[BAM Workshop](http://www.teambg.eu/?page=tools&cat=32) by Glenn Flansburg
[BAM Workshop II](http://www.teambg.eu/?page=tools&cat=32) by Andrew Bridges
[DyValiTool](http://www.baldurs-gate.ch/) by Dyara
[Aptana IDE](http://www.aptana.com/) html/xml javascript editor. (c) Copyright Aptana, Inc. 2007\. Portions copyright Adobe, 2007.
[ConTEXT](http://www.context.cx/) by Eden Kirin
[TextPAD](http://www.textpad.com/) purchased version 5 by Helios Software Solutions
[WildEdit](http://www.textpad.com/) purchased version 1.1 by Helios Software Solutions
[Crimson Editor](http://www.crimsoneditor.com/) by Ingyu Kang
[<acronym title="Dragonlance Total Conversion Editor Pro">DLTCEP</acronym>](http://gibberlings3.net/forums/index.php?showforum=137) by Avenger
[<acronym title="Infinity Engine Structures Description Project">IESDP</acronym>](http://iesdp.gibberlings3.net/) maintained by igi and Avenger
[Infinity Explorer](http://infexp.sourceforge.net/) by Dmitry Jemerov
[Near Infinity](http://forums.pocketplane.net/index.php/topic,22727.msg297145.html#msg297145) by Jon Olav Hauglid, FredSRichardson and devSin
[Shadowkeeper](http://www.mud-master.com/shadowkeeper/) by Mud-Master
<acronym title="Weimer Dialogue Utility">[WeiDU](http://weidu.org/main.html#weidu)</acronym> by Wes Weimer and the bigg
[WeiDU ConTEXT Highlighters](http://dev.gibberlings3.net/) by Idobek, updated by cmorgan
[WeiDU Crimson Editor Highlighters](http://dev.gibberlings3.net/) by cmorgan
[WeiDU TextPAD Highlighters](http://dev.gibberlings3.net/) by cmorgan
[WeiDU NotePad++ Highlighters](http://dev.gibberlings3.net/) by mike 1072 and cmorgan
[BGT](http://forums.spellholdstudios.net/index.php?automodule=downloads&showcat=9/) builds by Ascension64
[Platform Conversion Utility](http://forums.spellholdstudios.net/index.php?automodule=downloads&showcat=9/) by Ascension64 for initial translation work to BGT
[Tutu](http://www.pocketplane.net/tutu/) by japheth, et. al
[EasyTutu builds](http://www.usoutpost31.com/) of Tutu by Macready

Advanced users can follow BG1NPC or add to its development by following it on GitHub; [https://github.com/cmorganbg/BG1NPC](https://github.com/cmorganbg/BG1NPC)

</div>

## Musical Themes Used

<div class="section">

(those not listed are unknown)

NOTE: To access this content, you will need to download and install the _The BG1<acronym title="Non-Player Characters">NPC</acronym>Music Pack_. You can find it on The Gibberlings Three download page, [here.](http://gibberlings3.net/forums/index.php?app=downloads&showcat=11)

*   **Ajantis:** _Federation Mission Failure_(from Star Trek: Starfleet Command) by Ron Jones
*   **Alora:** _The Heartland_by Bill Brown
*   **Coran:** _Gwinever_by Aquarium
*   **Coran: Romance (Good path)** _Recercada Tercera_by Diego Ortiz
*   **Coran: Romance (Baby Path)** _Dulce Memoria_by Hernando de Cabezon
*   **Coran: Romance (Neutral/Bored Path)** _Danse Macabre_by Camille Saint-Saens
*   **Coran: Romance Flirting** _Les beautéés du Diable_by François Dompierre
*   **Eldoth:** _Waterdeep_(from Descent to Undermountain) by Richard Band, Rick Jackson and Ron Valdez
*   **Faldorn:** _They are Coming_(from Run Like Hell) by Inon Zur
*   **Garrick:** _La Serenisima_(from Crusader Knights) by Inon Zur
*   **Imoen:** Unknown (from Neverwinter Nights) by Jermey Soule
*   **Kagain:** _Jango Fett's Theme_(from Star Wars: Bounty Hunter) by Jeremy Soule
*   **Kivan:** _The Lonely Shepard_by Paul Moria Orchestra
*   **Minsc:** _Worldmap 1_(from Fallout 2) by Mark Morgan
*   **Quayle:** _Buffy Rat_(from Buffy the Vampire Slayer) by Christophe Beck
*   **Safana:** _Thashasa's Pool_(from Descent to Undermountain) by Richard Band, Rick Jackson and Ron Valdez
*   **Skie:** _The Town of Targos_(from Icewind Dale II) by Inon Zur
*   **Tiax:** _Creatures_(from Digimon) by Inon Zur
*   **Yeslick:** _First Revelation_by Inon Zur

</div>

## <a name="contact" id="contact">Contact and Copyright Information</a>

<div class="section">

A complete list of contributors is maintained at our forum. Visit the [Gibberlings Three forums](http://gibberlings3.net/forums/) for information on this and any other Gibberlings Three mods on which we may be working. The current maintainer/coordinator is [cmorgan](http://gibberlings3.net/forums/?showuser=844)

The BG1NPC Project is not developed, supported, or endorsed by BioWare™ or Interplay/BlackIsle. The Tutu mod was created by Japheth, aided by Ghreyfain, SimDing0, and Kish. EasyTutu was created by Macready, based on a Baldurdashed (Kevin Dorner) version of Tutu v4 Fixpack 15\. If there are any copyright issues or this statement needs revision then please contact one of us and advise us what to do about it. This mod was created to be freely enjoyed by all Baldur's Gate and Baldur's Gate II players. However, it should not be sold, published, compiled or redistributed in any form without the consent of the team leaders.

</div>

## <a name="history" id="history">Version History</a>

<div class="section">

**Version 22.8 - 2017-03-25**

*   Fixed issue with Faldorn-Izefia quest. https://github.com/Gibberlings3/BG1NPC/issues/26
*   Deprecating Non-Joinable NPC Portraits component due to copyright issues

**Version 22.7 - 2017-03-01**

*   Fixed issue with BMPs with negative heights in header.

**Version 22.6 - 2017-01-28**

*   Fixed: missing entar.cre for BGT install? https://github.com/Gibberlings3/BG1NPC/issues/23

**Version 22.5 - 2017-01-08**

*   French translation updates
*   Fixed item flags for Romance Challenge dragons

**Version 22.4 - 2017-01-04**

*   Updates for Jaheira's "Bury Gorion" dialogue
*   Updates to Kagain's Quest
*   Update BGEE Banter Tweak prompts
*   Change Shar-teel's interjection on meeting Kagain
*   Update Lord Foreshadow's Ring Description
*   Ajantis Bhaaltalks - variable correction
*   Fixing Minsc's interjection with Vitiare
*   Check before adding "missing" items to BGEE games (SoD adds many of the previously missing items)
*   Portraits: Make filenames consistent with naming scheme, i.e. %SOURCE_RES%s.bmp
*   Portraits: Replaced BGEE portraits with new 169x266 images
*   Portraits: Added a few new portraits
*   Fix for 2 Legacy of the Masters gauntlets in Bandit Camp
*   Make Amulet of the Apprentice Mage unusable by Monks
*   Updates to dragons for Romance Challenges
*   Update BGT_VAR for EET support
*   Update x#tqbh2.cre sex to match animation
*   Enforce LoveTalk timer on Branwen romance post-rest talks
*   Fix Colquetle Family Amulet bug
*   French translation updates

**Version 22.3 - 2016-04-16**

*   Fix Gatekeeper dialog if CHARNAME has been to the Friendly Arm Inn
*   Updating Jaheira's interjection to ELMIN2.DLG
*   Moving SetGlobal actions to before non-INSTANT actions
*   Updating CRE sounds for Xan's quest CREs
*   Update for Coran Wyvern Quest fixes for BGEEv2
*   No Dynaheir Romance endgame cutscene on SoD
*   Updates for "your voice is strange" PID function on BGEE and BGT.

**Version 22.2 - December 12, 2015**

*   Fix for bug in NPC Starting Location Component - Thanks Lollorian!

**Version 22.1 - December 1, 2015**

*   Correcting typos in German tra files [Isaya]
*   More German translations [Jastey]
*   Numerous minor bug fixes

**Version 22 - June 14, 2015**

*   David Jansen Quest: Adding %tutu_var% to SHLD16 items to reference where P#BAG01 and P#BAG02 should be placed in STO04901.
*   Banter Timing Tweak: Adding condition to require BG1NPC Required Changes to be installed.
*   Dynaheir's Journal Quest: Fix for quest failing to start
*   Fixed issue with journal entries not being removed for Rescue Dynaheir quest on BGEE
*   Kagain's Caravan Quest: Cross-mod compatibility with Thimberling's Skie mod.
*   Kagain's Caravan Quest: Fixed x#kaband.cre having 2 bandit scalps, x#bandk.cre did not go hostile if you attacked them
*   Romance Challenges: Fix Battle song reference for x#ch12.are
*   Fixed redudant usability sections in item descriptions for BGEE
*   Fixed issue: Ajantis Shield proficiency bonus becoming permanent in BGEE
*   Incorporated fixes from BWP Fixpack v15.1.1
*   New CRE macro: source_cre_script_cleanup. Useful for blanking scripts when using an existing CRE as a template for a new CRE.
*   Updated WeiDU to v238
*   Adding Polish translation credits to README.
*   Various dialog typo fixes.

**Version 21 - February 7, 2015**

*   BGEE compatibility

*   "Just-in-time" UTF-8 conversion of tra files for installation on BGEE. (Isaya)
*   Add BG2 item files used by BG1NPC to BGEE installs: brac25, dagg11, minhp20, misc3m, misc3n, misc3o, sahbolt, scrl8i, scrl9h, seeinvis, vamp, vamp1, vamp2, vamp3
*   Create version of x#bgreplace_X for BGEE.
*   Create version of X_area_script_assign.tph for BGEE.
*   Missing strings added to tra files for BG2 strings referenced by BG1NPC but not in BGEE dialog.tlk
*   Replaced referenced BG2 scripts unavailable in BGEE with BG1NPC versions: x#mag10b, x#mag10c, x#mag14d, x#prs10b, x#drdsht, x#drui12, x#druid8, x#druid6, x#gpsht, x#shoutp, x#davidx, x#fight2, x#mepsmo, x#shout6
*   Accounting for dialog state order differences from Tutu to BGEE: firebe.dlg, xanp.dlg, hentol.dlg, housg3.dlg
*   Added code to update SPELDESC.2DA in BGEE for Camdawg's Temple Fix
*   For CREs that use BG2 sounds that are unavailable in BGEE, sound references were updated to sounds available in BGEE (with a few exceptions). Note: Tutu and BGT will still use available BG2 sounds.
*   Added x#ogref sounds for x#chop and x#cru in Xan's Turnip Quest.
*   Fixes for x#cutspy creating errors in BGEE.
*   Banter Timing Tweak to adjust average time between dialog banters (replaces Compton's Banter Accelerator for BGEE)
*   Fixed spell name for Imoen's Artifact in BGEE. (Mike1072)
*   Replace references to BURN01.CRE (unavailable in BGEE) with new x#burn01.cre.
*   Moved location of Imanel Silversword in BGEE to not conflict with Dorn quest encounter.
*   Romance Challenges area files included with BG1NPC for BGEE.
*   Updated Dynaheir romance end-game cutscene script to not be Tutu-specific (i.e., allows for BGEE).
*   Added sounds from BG2 for "Stranger" in Dynaheir romance end-game cutscene in BGEE. (Thanks to Etamin, Isaya, and CrevsDaak for files)
*   Updated Open Cloakwood components to work in BGEE. (Isaya)
*   Updated Imoen's death variable in x#pcbury.d. (Jastey)
*   Updated Shar-Teel romance to NOT detect a Blackguard as a Paladin.
*   Added NPC-only items (x#ajshld, p#bow) to item_use.2da in BGEE.
*   Pink Xan portrait updates for BGEE
*   Alora starts in Gullykin AND the Hall of Wonders bug in BGEE
*   Colquetle Family Amulet Fix for BGEE
*   Updates to Dynaheir's Journal Quest, Jaheira's Quest, Garrick's Quest, and Montaron's interjection with Ender Sai to enable journal entries to work in BGEE.
*   Adding fixes for Safana-Dorn and Tiax-Dorn dialogs preventing PIDs from firing.
*   Fix area scripts for AR2400 and AR2900 to not continuously fire when the variable TazokSays = 1\. This was preventing blocks added by BG1NPC from firing.

*   Updated to WeiDU v237
*   German translation available (Teiluebersetzung vom Kerzenburgforum, teilweise noch in englisch, [http://kerzenburg.baldurs-gate.eu/](http://kerzenburg.baldurs-gate.eu/))
*   Polish translation available (Tlumaczenie przez Children of Bhaal, [http://athkatla.cob-bg.pl/viewtopic.php?t=5734](http://athkatla.cob-bg.pl/viewtopic.php?t=5734))
*   General coding updates to modern WeiDU standards (e.g., using GAME_IS instead FILE_EXISTS for game type checks)
*   Updated cross-platform libraries with latest fixes for all platforms. (Jastey)
*   New variable %tazokminhp% to account for different anti-death items used in Tutu vs. BGT vs BGEE.
*   New variable %RunAwayFrom% for scripts to use action "RunAwayFrom()" in Tutu/BGT and new action "RunAwayFromNoLeaveArea() in BGEE.
*   Move dialog changes for Coran Wyvern quest from x#jfix_X and x#bgreplace_X to new x#corwyv_X.d files.
*   Block Shar-Teel/Tiax banter until Chapter 4, since it references the Iron Throne.
*   BG1NPC romances won't start while CHARNAME is wearing the Girdle of Masculinity/Femininity for compatibility with BG1 Romantic Encounters mod.
*   Reordered dialog actions to place EscapeArea() command last.
*   Reordered Dynaheir, Branwen, Coran, Xan, and Shar-Teel dream script triggers to prevent crashes when NPC is dead while resting. (Jastey)
*   Ajantis Romance/SCS Wait at Inns component incompatibility fix.
*   Added macro ~source_cre_sound_cleanup~ to CRE blocks for cleanup.
*   Update Jozzi Seasnake (#seasn) to use Nereid soundset (all platforms).
*   Update x#garwyl to use GHAST sounds like a spectre (all platforms).
*   Imoen's dialog regarding Gorion's body no longer requires CHARNAME to be holding Gorion's letter. Her script triggers the dialog by the party picking up the letter, but in the time it takes her to walk to CHARNAME, it was possible to read and drop the letter, leaving her unable to initiate the proper dialog.
*   Imoen's dialog on Laryssa will no longer interrupt Brage's script to return the party to Nashkel.
*   At the Bandit Camp, if Tazok was engaged in combat too quickly, Kivan could be left trying to initiate dialog with him. This dialog would fire after the combat, with Tazok possibily dead. Kivan no longer attempts dialog with Tazok after Tazok is dead.
*   Updates for Tiax's Quest to close open quest entries at their conclusions.
*   Moved Minsc/Dynaheir interjection with Thalantyr into a new stand-along banter with Dynaheir
*   Xan's interjection with Mulahey was copying a "ChangeEnemyAlly(Myself,NEUTRAL)" command to Xan since there is no pass back. Changed to ICT2 to prevent issue.
*   Added checks to Imanel Silversword's script to prevent dialog from re-initiating and stop dialog from initiating during battle.
*   Montaron was being sent to Minsc's "goto" location in the Elfsong Tavern rather than the Low Lantern with Xzar by BG1NPC's Wait at Inns component. Updating to send Montaron to Low Lantern.
*   In Tutu, when refusing Cythandria's surrender, Dynaheir will turn hostile. Danaher's interjection is inheriting an Enemy() action from Cythandria. Only affects Tutu, Cythandria's dialogue state 6 has an "Enemy()" action which is not present in BG:EE and BGT. Solution is to remove the Enemy action() in Tutu.
*   Kivan gives his reaction to Prism's death upon entering the Nashkel Mines area even if he wasn't in the party when Prism died. Adding a See("prism") check to script block in kivan.bcs. That should prevent the trigger from firing long after Prism is dead (and the corpse is removed).
*   Safana's response to PID option "Do you have any advice, Safana?" References Narlen Darkwalk, even in Chapter 1\. Corrected triggers to not show this response until after Narlen has been encountered.
*   Correcting "Bruno" DV in x#yeint2.baf. (MadMate)
*   Updated item slots for x#david and x#dragon to place items in correct slots. (MadMate)
*   The XZNI1.6 dialog in xzint.d has an issue with the conditions. If Montanan is in the party, alive, but disabled (e.g., held, panicked, etc..), the dialog cannot continue. Updating the second transition condition to be "OR(3) !InParty("montaron") !InMyArea("montaron") StateCheck("montaron",CD_STATE_NOTVALID)" which is the opposite of the first transition, ensuring one branch can fire.
*   Updates to Coran's Succubus Quest
    *   Updates to close open quest journal entries at quest conclusion. Added "close quest" journal entries.
    *   If you refuse the quest initially, Coran no longer becomes instantly "charmed" before he has been given the roses. He has a more appropriate reaction to your refusal of Amelia.
    *   Scripting updates to account for players force-attacking Amelia. Amelia will now turn hostile and attack the party. If Natan has not been talked to, remove him if Amelia is force-attacked (quest is aborted). If Natan has been talked to, increment X#CoranSuccubus to 13 to allow quest to complete.
    *   Coran will now become "charmed" by Amelia when in her presence if Natan is "charmed" (i.e., has been shown the roses).
    *   Amelia was a very difficult battle for BG1, so she has been toned-down to be more appropriate for BG1\.
        *   HP, THAC0, AC, Saving throws updated to be in line with PnP succubus stats.
        *   Only immune to non-magical weapons
        *   On BGEE (or Tutu/BGT installs with 1PP Wings), Amelia's combat appearance now has wings (defaults to previous fire elemental appearance on installations without 1PP Wings).
        *   Updated combat script, inspired by Kirinhale's from TotSC
*   Many dialog typo fixes.

**Version 20 - November 26, 2011**

*   <font color="red">Added</font> **Traduction française** : pour tout support, rendez-vous sur [La Couronne de Cuivre](http://www.baldursgateworld.fr/lacouronne/forum.php)
*   <font color="green">Repaired</font> From Isaya, reporting translator findings: x#cosqu.tra, < PRO_MANWOAMN > repaired to < PRO_MANWOMAN >
*   <font color="green">Repaired</font> From Isaya, reporting translator findings: x#challenge.tra, string merge; lines across all translations now read:
    @112 = ~I am pleased to make your acquaintance, even if it has happened under such... peculiar circumstances. Coran Sullussaer, was it not?~
    @112 = ~Me alegra conoceros, incluso en tal... circunstancia peculiar. Coran Sullussaer, ¿verdad?~
    @112 = ~Je suis heureuse de faire votre connaissance, même si elle se produit en des... circonstances aussi particulières. Coran Sullussaer, n'est-ce pas ?~
*   <font color="green">Repaired</font> From Isaya, reporting translator findings: I_C_T ~%tutu_scripts%LAVLEAD~ 0 X#CoranRill repaired to correct line; I_C_T ~%tutu_scripts%LAVLEAD~ 2 X#CoranRill
*   <font color="green">Repaired</font> [ScuD's Yeslik repairs](http://gibberlings3.net/forums/index.php?s=&showtopic=21446&view=findpost&p=182686.php)
*   <font color="green">Repaired</font> [BGT and TutTu Dream assignment repairs](https://github.com/cmorganbg/BG1NPC/commit/6bfbbdc8fcd1b62a844543998765f11799da1bc6)
*   <font color="green">Repaired</font> [Xan Slaver Quest dialog initiation switched to NPC script](https://github.com/cmorganbg/BG1NPC/commit/4a884b69b91666112f37e850f46e02dc1cd0a1b3)

**Version 19 - September 18, 2011**

*   WeiDU v230 for Windows, OS X, (Linux gets theirs from [www.weidu.org](http://www.weidu.org))
*   <font color="green">Repaired</font> [Repair Ajantis' Lovetalk sequence (1 branch)](http://gibberlings3.net/forums/index.php?showtopic=22518)
*   <font color="green">Repaired</font> [Repair Coran's Hanali Sequence initiation.](http://gibberlings3.net/forums/index.php?showtopic=21956)
*   <font color="green">Repaired</font> [Repair swapped .tra lines in x#ict3.d](http://gibberlings3.net/forums/index.php?showtopic=21807)
*   <font color="green">Repaired</font> [Recheck BGT and Tutu for possible mismatch in Skie's dialog, with utilization of CandleKeep BILL and GATEWA2 .dlg references.](http://gibberlings3.net/forums/index.php?showtopic=21928)
*   <font color="green">Repaired</font> [Recheck X#ImoenRaiken usage for x#imint.d; only one of the two are supposed to react, since she plays the same line in each.](http://gibberlings3.net/forums/index.php?showtopic=21928)
*   <font color="green">Repaired</font> [Repair OR() found by BWP](http://gibberlings3.net/forums/index.php?showtopic=19610)
*   <font color="green">Repaired</font> [Include check-for-and-install-if-not-yet-done on Ascension64's Bere"ghost"fix](http://gibberlings3.net/forums/index.php?showtopic=19662)
*   <font color="green">Repaired</font> [Recheck WTASIGHT script assignment on those pesky bandits (again)](http://gibberlings3.net/forums/index.php?showtopic=19009)
*   <font color="green">Repaired</font> Typos [reference post](http://gibberlings3.net/forums/index.php?s=&showtopic=18136&view=findpost&p=172090) [reference post](http://gibberlings3.net/forums/index.php?s=&showtopic=18332&view=findpost&p=166167) [reference post](http://gibberlings3.net/forums/index.php?s=&showtopic=18332&view=findpost&p=166168)
*   <font color="green">Repaired</font> [aVENGER_(RR) and wisp's replacement-of-regexp repair of "Bg2 Portrait" component](http://gibberlings3.net/forums/index.php?showtopic=18516)
*   <font color="green">Repaired</font> [Repair dream responses cross-project on BGT, where DREAM = BG1DREAM](http://gibberlings3.net/forums/index.php?showtopic=17905)
*   <font color="green">Repaired</font> [Kagain X#KAQUREWARDParty adjustment it NumInParty to avoid trigger failure if a party member is dead](http://gibberlings3.net/forums/index.php?showtopic=20113)
*   <font color="green">Repaired</font> [Xan's quest - Friendly Arm Inns owners described as Dwarves instead of Gnomes in one of the dialogs.](http://gibberlings3.net/forums/index.php?showtopic=20698)
*   <font color="green">Repaired</font> Elminister doesn't leave after meeting in first BG city-area. Can talk to him again and get double Journal-entries (after this he leaves). Interjection with Minsc/Boo to blame? [reference post](http://gibberlings3.net/forums/index.php?showtopic=20698) [the bigg suggests a repair for this](http://gibberlings3.net/forums/index.php?showtopic=19941)
*   <font color="green">Repaired</font> [May have to adjust actions that break when interrupted at the end of dialog, like this one:](http://gibberlings3.net/forums/index.php?showtopic=20399)
*   <font color="green">Repaired</font> [Recheck project for invalid actions sequences, like this one:](http://gibberlings3.net/forums/index.php?showtopic=20072)
*   <font color="green">Repaired</font> [Internal workrooms - Ajantis Hostile Leave script adjustment block](http://gibberlings3.net/forums/index.php?showtopic=20873)
*   <font color="gold">Reported But Determined No Action Necessary:</font>[Internal workrooms - raid Ascension64's run in ALWAYS block but don't bother doing it over and over again if it is already done during this install session code snippets from BGUB;](http://gibberlings3.net/forums/index.php?showtopic=18917) no action: his usage is cleaner, but there is no harm in leaving the old behavior.
*   <font color="gold">Reported But Determined No Action Necessary:</font>[Replace regexp for temples with specific A_F EACH file IN list BEGIN A_I F_E_I_G to avoid catching mod-added temples or healing areas on a BGT install (or a Tutu, if anyone actually adds them there) and spamming Resurrection and greater Restoration, etc.;](http://gibberlings3.net/forums/index.php?s=&showtopic=18754&view=findpost&p=175544) no action: code already screens for actual cures and adds them - possibly overkill, but best to leave it as it is working for now.
*   <font color="gold">Reported But Determined No Action Necessary:</font>[Recheck Xan dream for RestParty();](http://gibberlings3.net/forums/index.php?showtopic=20910) no action: author intent. may need to strengthen docs when someone finally tackles that project.

**Version 18 - September 18, 2009**

*   WeiDU v211 for Windows, OS X, and Linux 09.18.2009
*   [Galathée's translation repairs to Garrick's dialog](http://gibberlings3.net/forums/index.php?showtopic=17012&st=0&gopid=145893&#entry145893) 03.24.2009
*   [Erebusant's repairs to Coran's Rose Quest](http://gibberlings3.net/forums/index.php?showtopic=17091&pid=146433&st=0&#entry146433)04.05.2009
*   [Xzar and Montaron Charming Scene: Montaron's attempting to speak while dead fixed.](http://gibberlings3.net/forums/index.php?showtopic=17721)07.15.2009
*   [Temujin's mismapped resource references fixes](http://gibberlings3.net/forums/index.php?s=&showtopic=16855&view=findpost&p=144623) 07.15.2009
*   [Druid dv mismatch in combat script](http://gibberlings3.net/forums/index.php?s=&showtopic=16855&view=findpost&p=144623)07.15.2009
*   [Mike1072's Winski Portrait Fix](http://gibberlings3.net/forums/index.php?showtopic=16958) 07.16.2009
*   [Player Comment on Shared Love when no longer romancing Branwen blocked.](http://gibberlings3.net/forums/index.php?s=&showtopic=15740&view=findpost&p=152312) 07.16.2009
*   [Edwin's Dynaheir Romance Cutscene refusal option fixed.](http://gibberlings3.net/forums/index.php?s=&showtopic=15740&view=findpost&p=1523152)07.16.2009
*   [More robust patching of BIMOEN2 into interdia.2da for BGT](http://gibberlings3.net/forums/index.php?s=&showtopic=16403&view=findpost&p=146078) 07.16.2009
*   [Faldorn/Izefia Quest loophole repaired](http://gibberlings3.net/forums/index.php?s=&showtopic=16588&view=findpost&p=152337) 07.16.2009
*   [erebusant's "let Andarthe surrender, already!" fix](http://gibberlings3.net/forums/index.php?s=&showtopic=16588&view=findpost&p=152342) 07.16.2009
*   [Temujin's Resource, DV, and typo repairs part II](http://gibberlings3.net/forums/index.php?s=&showtopic=16855&view=findpost&p=152451) 07.17.2009
*   [aVENGER_(RR)'s repairs to 'Use BG2 Portraits' component.](http://gibberlings3.net/forums/index.php?s=&showtopic=18332&view=findpost&p=156883)09.17.2009
*   [Wisp's repairs to Coran's Wyverns Address](http://gibberlings3.net/forums/index.php?s=&showtopic=18104&view=findpost&p=156884) 09.17.2009
*   [aVENGER_(RR)'s repairs to Jaheira's Quest items and scripts](http://gibberlings3.net/forums/index.php?s=&showtopic=18332&view=findpost&p=156885) 09.17.2009
*   [Item Revisions compatibility for the ring of Human Influence](http://gibberlings3.net/forums/index.php?s=&showtopic=18332&view=findpost&p=156887) 09.17.2009
*   [Daulmakan's typos and repairs](http://gibberlings3.net/forums/index.php?s=&showtopic=18136&view=findpost&p=155024) 09.17.2009

**Version 17 - February 28, 2009**

*   Nythrun's updated creature fixer
*   Viconia "I See Dead People" fix for Flaming Fist when first joining
*   Adjustment for Branwen Joining with a scalp alredy in inventory
*   Ascension64's Coran's Wyvern Fix replacement
*   Tarnish/Tarnesh agreement across project
*   Coran InParty checks missing from some romance dialogs un-missing'ed
*   IncrementGlobal moved to SetGlobal for troubleshooting in some of Branwen's dialogs
*   Removed duplicate code in Ajantis romance
*   Repaired Viconia/Faldorn responses within Tiax's Quest
*   Repaired Dynaheir's Quest journal entry
*   Placed global closiure higher up on Dynaheir's journal conflict with Edwin
*   Ajantis Bhaal Talk Repaired
*   Edwin Unavailable for Dialog loophole closed on Dynaheir's quest
*   Adjustment for Branwen Joining with a scalp alredy in inventory: no commentary allowed in joining area
*   Ajantis/Kivan banter will not play if Tazok has already been killed
*   [Xan Multiple Interjections on Ice Island repaired](http://gibberlings3.net/forums/index.php?s=&showtopic=15876&view=findpost&p=138061)
*   [Tutu: Jaheira and Khalid sharing same coordinates in Elfsong, et al repaired](http://gibberlings3.net/forums/index.php?s=&showtopic=16013&view=findpost&p=138076)
*   [SAY@ instances repaired to SAY @](http://gibberlings3.net/forums/index.php?s=&showtopic=15985&view=findpost&p=138080)
*   [Coran flirt sentence malformation repaired](http://gibberlings3.net/forums/index.php?s=&showtopic=15866&view=findpost&p=138084)
*   [Xan: loved -> laughed repaired](http://gibberlings3.net/forums/index.php?s=&showtopic=15864&view=findpost&p=138087)
*   [Xan: token and grammar repair](http://gibberlings3.net/forums/index.php?s=&showtopic=15826&view=findpost&p=138089)
*   [Documentation: Dudleyville links updated to ForgottenWars, all instances, all documents](http://gibberlings3.net/forums/index.php?s=&showtopic=15561&view=findpost&p=138097)
*   [Adjust Romance Challenge Areas for names of BGT versions of distributed .wed files on BGT, and Tutu ones on Tutu for areas X#CH[11,12,13,14] and X#AJR1](http://gibberlings3.net/forums/index.php?s=&showtopic=15765&view=findpost&p=138114)
*   [Xan leaving due to reputation though you are bonded with him repaired](http://gibberlings3.net/forums/index.php?s=&showtopic=15890&view=findpost&p=138322)
*   [Updated and clarified relationship of BG1NPC and UB Sarevok's Diary components in documentation](http://gibberlings3.net/forums/index.php?s=&showtopic=15314&view=findpost&p=138316)
*   [Repaired inconsistent coding with SAY~ and DO~ missing spaces for easier code searches](http://gibberlings3.net/forums/index.php?s=&showtopic=16119&view=findpost&p=138325)
*   [-JW-'s repairs to the Edwin Ambush](http://gibberlings3.net/forums/index.php?s=&showtopic=15516&view=findpost&p=138335)
*   [Documentation update, BGT compatibility and install order links at Spellhold Studios](http://gibberlings3.net/forums/index.php?showtopic=15480&st=0&gopid=138416&#entry138416)
*   [Kagain Quest Journal entries reshuffled to remove any but the last seen as valid](http://gibberlings3.net/forums/index.php?s=&showtopic=15407&view=findpost&p=138418)
*   [Jaheira now no longer banters about Khalid with Shar-Teel and Montaron unless he is in the party](http://gibberlings3.net/forums/index.php?s=&showtopic=15367&view=findpost&p=138423)
*   [Xan Checking for HaveSpellParty in Romance but player has an SoA install](http://gibberlings3.net/forums/index.php?s=&showtopic=15053&view=findpost&p=138538)
*   [Tiax Quest reweighting and scripts tweaks](http://gibberlings3.net/forums/index.php?s=&showtopic=15180&view=findpost&p=138549)
*   [Coran Romance (Briel error) I_C_T moved to I_C_T2](http://gibberlings3.net/forums/index.php?showtopic=15525&st=0&gopid=138436&#entry138436)
*   [maretha, beador, and andarthe, part 17\.](http://gibberlings3.net/forums/index.php?showtopic=16588)
*   [BG1NPC, SCS, and SCSII: Killing Tazok given SPRITE_IS_DEAD resurrection in Undercity](http://gibberlings3.net/forums/index.php?showtopic=16141)
*   [Xan Romance talk missing movie call on EasyTutu repaired](http://gibberlings3.net/forums/index.php?showtopic=16710&pid=144499&st=0&#entry144499)
*   Updated to WeiDU v210
*   Other minor documentation updates, typos, grammar, etc. (multiple) - if you want the full changelog, please visit the forums.

**Version 16 - May 15, 2008**

*   Clan DLAN provides the Spanish translation files! Culmination of a long project coordinated by Immortality of ClanDLAN. For Spanish support, visit them on www.clandlan.net
*   Ajantis' PID: Fixed typo in bg1npc\core\dlg\x#jfix_tutu.d(8): REPLACE_STATE_TRIGGER ~_AJANTJ~ 0 ~Global("AjantisLeave","GLOBAL",0) HappinessLT(Myself,-290)~
*   Caravan Bandit Leader does not have a scalp. All the other bandits do. Added line 2562 >> ADD_CRE_ITEM ~%tutu_var%misc86~ #0 #0 #0 ~IDENTIFIED~ ~GLOVES~
*   Bug when completing Kagain's quest in Baldur's Gate: Talking to lady Silvershield with any NPCs that have interjections gives you no option to tell her "the grave news" about her step-son. Coran still stops completeion, but that is intended behavior. Solved by moving I_C_T3 file to last in the order of compilation: line 4795 >> COMPILE EVALUATE_BUFFER ~BG1NPC/Phase2/dlg/X#ICT3.D~
*   Updated to WeiDU v206
*   Repaired Tiax quest creatures script assignments to allow quest to complete, and tightened script block for attacking Karris and party.
*   Repaired double interjection: commented out bg1npc\phase2\dlg\x#viint.d(368): I_C_T ~%tutu_var%TIBER~ 2 X#VicTiber Matched bg1npc\phase3\xarom\dlg\x#xanlt.d line 3774 with SDNS()>%JOINED%
*   minor documentation updates, Linux distribution.

**Version 15 - March 18, 2008**

*   Updated ReadMe, Quest, Credits, and some of the other documentation.
*   berelinde's full revision of broken I_C_T2 behaviors across project, with broken and blocked states moved to I_C_T3 with passback.
*   Repairs and minor editing of Ajantis's Romance component, including compilation order, timer setting, and changing his sword to a bastard sword.
*   Repaired a Branwen romance variable mismatch which held Branwen's Romance from being initiated/completed.
*   Multiple Minor Adjustments: All RealSetGlobalTimer() moved to the end of dialogue action calls unless Rest() or RestParty(), updated and extended area script variable usage, repaired Branwen/Dynaheir conflict code, incorporated WizWom's Alora Crash fix, Dream assignments for BGT installs, repaired [Shar-Teel/Montaron], Shar-Teel's Unkillable component made Tutu-only. Recode of 4 Viconia and one Kivan banter REPLACE to use REPLACE_SAY and appropriate ALTER_TRANS. Repaired minor dialogue and code typographical errors including chapter references, LOCALS to GLOBAL reference mismatches, variable misnaming instances, and other minor stuff. Repaired Minsc interjecting after rescuing Dynaheir, if it hasn't fired yet. Lots of cosmetic/commenting repairs.
*   CamDawg's Full Temple Cures Fix placed in core install component to open BG temples for restoration if Rashel (or Durlag's Tower, or another mod-added succubus) level drains the party before they make it to Amn.
*   Enabled Nythrun's .cre ordering and forced effect v2 on project-used .cres.
*   Rebuilt and repaired Dynaheir's Romance end-of-game cutscene (Tutu only).
*   Fluid States materials integrated for compatibility with more types of BGT installs (See <acronym title="The Gibberlings Three">G3</acronym> Tutuorial section or <acronym title="Spellhold Studios">SHS</acronym> BGT-WeiDU forum for discussions about fluid dialogue states).
*   Miloch's multiple fixes to gnomes integrated, Imoen/Safana spell fix so that Safana's gift no longer shows up in spellbooks as a selectable spell, Jaheira Quest journal entry and .d/.tra edits integrated; Portraits Revisions and Additions integrated - Miloch reduced existing to 256 colors where necessary and touched up several blurry portraits. Added new (not previously referenced) portraits for <acronym title="Tales of the Sword Coast">TotSC</acronym>NPCs, more gnomes, etc. including added <acronym title="Tales of the Sword Coast">TotSC</acronym> portraits and gnome portraits.
*   Miloch's Code Repairs: Added buggered Tutu soundslot fix, _zombiew.cre's race to zombie, Changed copied zombies' reaction from Enemy to Neutral (critical fix for Garrick's quest), macro_tutu_items_to_bgt.tph fixes adding a ton of items that weren't getting converted on BGT , unique portraits to Garrick's zombies, surgical spell/script fixes (required for Gnomes), removed redundant druid references assigned on CREs, and even more stuff. Repairs to Garrick's Quest and Jaheira's Quest documentation. x#andart, x#beado1, x#beador, x#mareth, x#shdr6, x#shdr8a, x#shdr8b, removed small portrait reference (added via mod component); gave undroppable free action effect (_mage05) to do away with the RunAwayFrom weirdness when casting Entangle, Web.
*   Moved to VERSION ~version #~ and WeiDU v20400, and reordered some code to remove WeiDU warnings for resources called. If you uncomment the MODDER flag, do not be alarmed - hundreds of warnings about "ajant99" and such missing are links to The BG1NPC Music package. If you don't install it first, WeiDU will warn you that those resources do not exist.

**Version 14 - September 17, 2007**

*   Added Modder index of all variables called in project code, with file and line number reference.
*   Set all project files to lowercase for <acronym title="Operating System">OS</acronym> compatibility.
*   Remapped and recoded entire project for single trigger called dialogues and IsValid replacement checks.
*   Repaired several incorrect <acronym title="Death Variable">DV</acronym> assignments.
*   Upgraded to WeiDU v200; this should allow for a more streamlined install process
*   Developed, added, and tested cross-platform variables for ease of placing code on both BGT and Tutu installs without duplicating recoding efforts
*   Added four new lovetalks to Xan Romance
*   Added Xan's Moonblade Quest
*   Ajantis recode of <acronym title="PLayer Initiated Dialogues">PIDs</acronym> and addition of responses for removal of his shield, alignment change, and gender change of either himself or Player1 via items.
*   Rebuilt ReadMe to take these factors into account
*   Addition and repair of several Tweaks components
*   Addressed a full laundry list of found bugs, reported from both Tutu and BGT users over the past two years. For more information, if you really, truly are interested, please visit cmorgan at [www.gibberlings3.net](http://www.gibberlings3.net/), and he will try to whip up a readable complete list.

**Version 12 Beta 3 - October 22, 2006**

*   This version is a stable release of v12 for Tutu. It is only designated as a Beta for BGT installs.
*   Repaired Garrick's Quest for incorrect <acronym title="Death Variable">DV</acronym> assignments
*   Adjusted area scripts to play nicer with other mods
*   Re-tinkering with Drizzt's actions to get journal to appear; items now added in a more mod-friendly way
*   Added further clarifications to install order in ReadMe
*   Repair of Imoen's dialogue about Return to Candlekeep
*   Changed Kagain's bandits for better compatibility; fixed bug with extra items showing up
*   Gorilym's Complete Rebuild/Retest of the end of Dynaheir's Quest and the final cutscene for Tutu
*   Removed all Dynaheir Romance materials related to the end cutscene for BGT installs
*   Repairs to Edwin and Minsc conflict
*   Repairs to Jaheira commenting on Gorion before burial looping
*   Altered scripting for Gorion's Burial as it could cause future issues
*   WizWom's NPC Fight Fix tested, works great with Tutu; confirmed incompatable with BGT side
*   Created new optional component "Make Shar-Teel Unkillable"
*   <acronym title="Death Variable">DV</acronym> repairs to Jaheira's Quest creatures
*   Repairs to Ajantis' <acronym title="Tales of the Sword Coast">TotSC</acronym> /Non-<acronym title="Tales of the Sword Coast">TotSC</acronym> compiled romance dialogues
*   Big Group Project Completed: all TRA files fully proofread and integrated; multiple repairs
*   Repaired Eldoth/Bentley Store label
*   Fixed and expanded various script triggers and identifiers by "lifting" libraries from BG2 Fixpack;
*   Additional repairs to Eldoth's Dialogue overrides when he is moved
*   Additional repairs to <acronym title="Death Variables">DVs</acronym> and Cutscene names/objects for Xan's minor quest, tp2 id of Bag of Grain
*   BGT : Multiple, huge amounts of rewriting, testing, and adapting to get the BGT side to be part of the single install. Still at Beta status for BGT , as we are occasionally running into <acronym title="Player-Initiated Dialogues">PID</acronym> conflicts with dialogues; the BGT side seems to have restored almost all of these always-true timered conditions, so I have to go fix them one by one. It installs, works better than the previous ones, and has taught me a lot, but still is definitely a Beta. Biggest single change from Beta 2 was the moving of a number of .cre and item creations to use existing creature files as templates, and the addition of a BGT -to-Tutu item macro

**Version 12 Beta 2 - September 18, 2006**

*   Tp2/Installation Changes
    *   All dialogues/scripts/etc. now have translation files; rebuilt tp2 to take advantage of this
    *   Streamlined install process by grouping components and using other WeiDU goodies
    *   Tagged each phase of install with an override file/flag for BG<acronym title="Unfinished Business">UB</acronym> compatibility
    *   .tp2 cleanup; portraits component, reordering, remove ancient DEPRECATED calls
    *   Sound References for BG1NPC -added creatures added to .tp2
*   Added/Extended Components and Core Fixes
    *   BG1NPC s PID soundset/stringfixer added
    *   Integrated TutuFix Walking Speeds check component
    *   NPCs Can Be Sent to an Inn/Wait Here added, flagged
    *   Alternate NPC Starting Locations: Alora, Eldoth, Quayle, and Tiax added, flagged
    *   Added 1 hr 30 minute timer options to all romances
    *   Cam's 2DA Neutral/Happy interjection restoration
*   Global Scripts/Dialogue Changes
    *   Dorotea's scripts fix for all Interact and StartDialogNoSet calls, all NPCs , all files
    *   "Empty Token" Lexing Errors repaired (courtesy Macready and Domi)
    *   Multiple "code prettification" and error checks using DyValiTool
    *   Moved Phase1 banter file calls to joine dialogue file calls
    *   Now using more reliable valid-for-dialogue checks
    *   Repaired Phase1 scripts for 10 second "closing" timers, moved to 1
    *   Tightened code for resting talks not triggering until the following rest
    *   Multiple text/typo/grammar corrections reported by the testers and players (thank you!!!)
    *   Moved final <acronym title="Tales of the Sword Coast">TotSC</acronym> interjections into <acronym title="Tales of the Sword Coast">TotSC</acronym> -only section of install
    *   Attempted to fix Reputation talks triggering instead of <acronym title="Player-INitiated Dialogue">PID</acronym>
*   Documentation
    *   List of Tutu Variables included in documentation
    *   List (and some standardization) of BG1NPC variables included in documentation
    *   Development Wiki entries added for group collaboration on docs and tp2
    *   Rebuild of documentation into interlinked html files
*   NPC -Specific Changes
    *   Ajantis: Ajantis Romance match Lawful Neutral option implemented; Ajantis romance loops and romance challenges repaired, new flirts, recheck of all code
    *   Alora: Domi's Alora Script St-t-Stutter Fix, minor edits in dialogue; new dialogue when she is moved to the alternate start location.
    *   Eldoth: Repaired behavior when he is recruited from alternate start location.
    *   Dynaheir: Dynaheir Quest content integrated into Phase2; fixed Dynaheir "swallowing" Setta's dialogue in romance, Setta's dialogue triggering, interjection in Shandalar's dialogue fixed; interjection with Hafiz fixed.
    *   Shar-Teel: Multiple repairs to Shar-Teel's Romance; Domi's Shar-Teel Paladin/Ranger fallen status talks/scripts added to S's Romance; interjection with Silke in Beregost altered
    *   Khalid: interjection about Rufie/Albert Repaired
    *   Coran: Coran's quest spawning tweaks; added back Coran's committment talks; new options for rune sequence; Coran's Succubus Quest roses repaired; fixed Coran having a dialog loop about the wyverns
    *   Edwin: Fixed Edwin/Hairtooth interjection, fixed issues with timers and variables, extended dialogues to allow joining party before or after Dynaheir is saved.
    *   Minsc: Fixed open variables in Minsc/Edwin conflict; extended dialogues to allow joining party before or after Dynaheir is saved.
    *   Jaheira: Jaheira/Rill; Imoen/Jaheira interjections fixed/rechecked; quest weapon rebuilt (Thanks, Drew!); Jaheira's Quest remapped, added dialogue, and tweaked spawning variables
    *   Imoen: Imoen reacting to Gorion's body disabled after one hour RealTime of play; Imoen/Xan pink banter moved to initiated by banter, continuing material and timers all set for joined dialogue file; Gorion's Burial changes
    *   Yeslick: Multiple Yeslick exiting Cloakwood Mines fixes; Yeslick/Kagain altered
    *   Viconia: Fight Resolution for Viconia/Kivan altered
    *   Kivan: Repaired Bounty Hunter encounter at BG to reflect possible pre-emptive strike by the party; rebuilt all combat and AI scripts and assignments, assigned portrait to Imanel.
    *   Kagain: Kagain dialogue conditions reviewed; Kagain Quest materials moved to Phase 2 and interaction repaired; Kagain's Quest rebuilt from the ground up with (minor) additional options, new scripts, and clean separation from regular Kagain content, Silvershield Estate entry accounts for fibula possession now. (Caravan Bandit Leader now also has a portrait)
    *   Garrick: Garrick's Quest item upgrade set for both Tutu and normal BG2 versions of an item, tp2 repair; variable repair
    *   Xan: Added area check for Xan's Reputation talks
    *   Player1, or <CHARNAME>: now has additional options regarding Gorion's body.
    *   Extended and Recoded Non-Joinable NPC Portraits component to encompass all portraits added by BG1NPC , and extended the number of creatures given portraits. Please advise if we are using a portrait that is your property; we used Portrait City at BWL for source material.

**Version 11 - October 19, 2005**

*   Fixed bugs in interjections, such as repeating interjections
*   Fixed NPCs music overlaying with the ambient game music (hopefully)
*   Added five new romances with the accessories and expanded Coran’s Romance
*   Added assorted interjections
*   Significantly expanded the <acronym title="Player-Initiated Dialogues">PIDs</acronym> (thanks, Kulyok!)
*   Seemingly had fixed the Coran and Baby issue in romance
*   Added new quests for Xzar, Coran, Kivan and Jaheira
*   Fixed assorted typos, character speech and glitches reported by the testers and players (thank you!!!)
*   Romance Guides added
*   Probably did something else beneficial and hopefully avoided doing anything malevolent

**Version 10 - August 27, 2005**

*   New Tranzig-Branwen encounter
*   Music will now play only on talks with PC (to combat the overlay/non-pausing problem)
*   Brevlick bug fixed
*   Jaheira - PC druid talks added
*   Imoen's new interjections added
*   Imoen talking a few times in Firewine fixed
*   Fixed coded lines showing instead of PC replies in one of the dialogues
*   Routine fixes of reported typos

**Version 9 - June 19, 2005**

*   Fixed the 'scripted' banters appearing instead of regular banter, in particular the 'at rest' banters that popped up at random times
*   Prevented identical BioWare banter between NPCs from reoccurring
*   Fixed Coran's stutter if wyvern not killed
*   Fixed reported typos
*   More interjections

**Version 8 - February 13, 2005**

*   Bugfixes for some dialogues triggering improperly
*   Bugfix for characters leaving party after interjections
*   Numerous grammar fixes
*   Coran's romance resolution on baby pass fixed
*   Bugfix for Kivan's Bandit Camp interjection
*   New interjection sets for Viconia, Edwin and Quayle
*   New interjections for some other characters

**Version 7 - November 28, 2004**

*   Added Phase II content such as interjections for the NPCs
*   Added fixes and more banters for Phase I content (banters)
*   Moved the alternate NPC portraits into a separate mod, the [BG1NPCPortrait Pack](http://www.gibberlings3.net/bg1npc/portrait.php)

**Version 6 - July 18, 2004**

*   Lots of typo fixes. Well, a couple...
*   A handful of bugfixes (e.g. Alora's joining, Khalid's stutter - hmmm, not *his*, but the dialogue bug).
*   Added Kagain's Caravan Encounter.
*   Added the 'Xan vs. Jansen' Encounter.
*   Added Coran's Romance.
*   Added some more portraits for important non - joinables.
*   Added a few new banters (Skie, Imoen, Jaheira, Faldorn).

**Version 5 - May 2, 2004**

*   First non - beta release.
*   Made Garrick, rather than the PC , be given the book by Archibald during Garrick's quest.
*   Fixed the Minsc stutter bug.
*   Fixed some typos.
*   Fixed an install issue if the player did not have <acronym title="Tales of the Sword Coast">TotSC</acronym> .
*   Eliminated repeats of BioWare's original talks.
*   Enable Coran's "romantic" sequence.
*   Put a check on all talks to happen outside combat.
*   Added a couple of Skie banters written by The Amazing Maurice.
*   Some area flag reassignment.
*   Added portraits for some important non - joinables.

**Version 4 - May 2, 2004**

*   First public release version (last beta of 'Phase I', hopefully).
*   Updated the WeiDU installer version.
*   Fixed some typos and made a few minor updates.

**Version 3 - March 29, 2004**

*   Learned html to make the ReadMe better.
*   Added a quest for Kivan, and expanded Coran's.
*   Removed the Nightcloak and Battleguard kits - you can find them in the [Cleric Remix mod](http://www.gibberlings3.net/cleric/).
*   Fixed miscellaneous bugs and typos.

**Version 2 - February 29, 2004**

*   Tweaked Garrick's quest and some dialogues.
*   Added the Nightcloak and Battleguard kits.
*   Incorporated Jason Compton's Accelerated Banter Script.
*   Added the new optional portrait for Coran.
*   Added all the other banter sets.

**Version 1 - September 27, 2003**

*   Incorporated banters for Branwen, Dynaheir, Garrick and Quayle.
*   Added Garrick's quest.
*   Added the option of giving NPCs their BG2 portraits.

</div>