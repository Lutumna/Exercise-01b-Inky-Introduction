/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> beast_encounter

== beast_encounter ==
You are a vagabond venturing into a tomb said to be the resting place of a warrior of a bygone era. The path is long. An ethereal beast not too dissimilar to a large cat is ahead. It locks eyes with you as if signalling you to follow.{not totem_pickup: You spot a totem out of the corner of your eye.} 
+[Follow the beast] -> follow
You follow the beast closely
+[Ignore the beast then continue down the path] -> ignore
You ignore the beast and continue alone
*[Grab totem] -> totem_pickup

== follow ==
You stick close to the beast. It rubs up on your leg, marking you with its scent. The path ends with a sealed door with a socket.
* [Kneel and pet the beast] -> beast_pet
+ {totem_pickup}[Use Totem] -> follow_totem_use
+ [Go Back] -> beast_encounter
-> END

== ignore ==
You venture forward on your own. You see a small tunnel. You have no clue where it leads.
*[Try to crawl through tunnel] -> derelict_arena
-> END

=== totem_pickup ===
You stow the totem away.
* [Go Back] -> beast_encounter
-> END

== follow_totem_use ==
The totem fits perfectly in the socket. The doors begin to swing open.\
*[Enter] -> derelict_arena
-> END

=== beast_pet ===
You entertain the beast. You confirm that there is no hostility.
* [Go Back] -> follow
-> END

== derelict_arena ==
Up ahead you see a single beam of light illuminating a warrior's remains.{not ignore: You notice the sorrow in the beast's eyes as you gaze at the remains.} In his hands, a sword is clutched. You can feel the power of blade seething out from the sheath. Suddenly the hand clutches the blade and the warrior takes his stance in an instant.

+ {not pistol}[Draw pistol] -> pistol
+ {not sword}[Draw sword] -> sword
* [Battle] -> battle
->END

=== pistol ===
You ready your pistol
+ [Go Back] -> derelict_arena
-> END

=== sword ===
Your sword is drawn
+ [Go Back] -> derelict_arena
-> END

== battle ==
The warrior charges
+ {sword}[Prepare to parry] -> parry
+ {pistol}[Shoot] -> shoot
-> END

== parry ==
You barely stop the attack
* {sword}[Slash] -> battle_end
* {pistol}[Shoot] -> battle_end
->END

== shoot ==
You force the warrior to block your bullet
* {sword}[Slash] -> battle_end
* {pistol}[Shoot] -> battle_end
->END

== battle_end ==
The warrior is defeated. As he fades away, he stares you down and presents his blade to you as a reward. You take hold of it. It has an incredible weight.{beast_pet: The beast looks to you with a new found respect.}
*{beast_pet}[Take beast with you and leave] -> beast_end
*Leave -> END
-> END

=== beast_end ===
You continue your journey with the beast.
-> END











