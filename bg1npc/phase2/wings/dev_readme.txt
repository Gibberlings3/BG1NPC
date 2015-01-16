*

IF YOU'D LIKE TO SET UP A MOD USING THESE:

Alter an item to use the 'inventory icon' (field name in NI) ZW. It must be a helmet, and equipped in the according slot. Yes, this means you cannot wear a helmet at the same time.

The included test item does not specify a colour. If no colour is set, these wings default to your character's hair colour. Should you need them to be different, you can set this as you would any other item colour with NI.

Just set a 'set item colour' for location code 54. You will have to type this in as it is 'unknown' to NI - it does not correspond to any existing helmet locations, as logically no helmets are made of hair.

I would recommend preventing the item from being dropped upon death, or unequipped in any way. As per the readme your character should not wield shields, bows, or two weapons. They also should not wear Robes set to inventory icon 3W or 4W (those with cloaks).

How you employ these limitations is up to you.

*

THAT OTHER THING

The wings installed by default are optimised for female elves (if you couldn't tell from the screenshots). This is true for both the animation and the paperdoll image.

The animation will look mostly fine, but the wings appear a little displaced along the right arm on the male paperdoll. If you specifically need a male character and this is unacceptable to you, I have supplied an extra set with a paperdoll optimised for male elves. The animations are the same, so it's not all-optimised but the only really noticeable thing is the paperdoll anyway.

To use these, copy the contents of the folder 'male ppd' to your override (or install them with your mod). They use a different identifier, namely YW instead of ZW. This means they coexist with the female version peaceably. If you bother to use them be sure to set your item to the right one!

(I've also included a copy of the test item set to YW - it is WINGS01B.ITM.)

Before I get asked why these aren't installed by default, it is mainly to save clutter. The only noticeable difference is if it's a player character (i.e. you have a paperdoll) and even then it's minor. It doesn't warrant installing yet another entire animation. 

Why the female ones by default? The answer begins with an A.

*

WHY DO THESE LIMITATIONS EXIST?


1. Why can't I have wings on my human/half-orc/dwarf?

Because I made no content for them. No, you cannot just copy it.

2. Why does it have to be a helmet? Can't I just make it any other item?

Of all items that have inventory/avatar rendering in the game, only helmets qualify for this purpose. This is mainly because helmets render for all animation sequences (while casting, for instance) and because they render properly for all directions. 

3. Why no swooshy robes?

By making these an equippable item as opposed to an altered avatar they are, in fact, merely 'bolted on'. Obviously this does not end up looking well with a cloak in the way.

4. Why can't I dual wield / use shields or bows?

For some reason, the game seems to render bows differently compared to all other two handed items. This means they may render on top of your wings when they shouldn't (making them appear transparent). The same is true for anything equipped in your second hand. 

It is possible to fix this to an extent (and I may for bows) but requires a new animation for that purpose, with the wings 'cut out': In other words, your winged character will never be able to wield the *same* bow that anyone else could.

This was tested on exactly one (1) install with one (1) configuration. Hopefully this should be consistent behaviour, but the rendering order of the Infinity Engine is not really trustworthy. It regularly screws up vanilla items, and it does it with no detectable cause or method.

5. What is wrong with the crossbows?

The inventory paperdoll image is rendered partly above it. This isn't fixable, and the wings would look odd if accomodated in a space that doesn't clash with anything else. For the most part things should look fine (I haven't encountered any problems with any other items in my test so far) but crossbows will look a bit off where they intersect with the wing. They render correctly in-game though.

*