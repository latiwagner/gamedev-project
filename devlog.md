# Fall 2024 - Intro to Game Design @ SUNY New Paltz
* Name: Casey Reardon
* [Trello Board](https://trello.com/b/Avqr8HAu)
* [Proposal](proposal.pdf)
* [Itch.io](https://deadname-th.itch.io/gamedev-project)

## 2024-11-24 - 3 hr
* Added a lot of sound effects. Trying to shoot with an empty clip, reloading, enemy taking damage, enemy dying.
* Added missing sprites
* Added swarmer enemy. same as basic melee enemy, but is smaller, faster, and has less health. In the demo level it will spawn in small groups.
* More balancing to make the game a bit easier.

## 2024-11-19 - 1.25 hr
* Implemented a way to have enemies spawn at specific parts of the level using a collision trigger.
* Toggles on visibility for enemies. When enemy visiblility is false, they are inactive and don't take damage. 
* Added firing sound
* Improved folder structure somewhat

## 2024-11-18 - 3 hr
* implemented a simple firing animation. The weapon recoils backwards and muzzle flash appears for a frame.
* Added a crosshair that replaces the cursor while ingame.
* Minor balancing changes.
* Spent time finding some royalty free sound effects for the weapon. 

## 2024-11-7 - 2 hr
* made sprites for enemies.
* also made a muzzle flash sprite
* not actually implemented at this point. 

## 2024-11-4 - 1.5 hr
* added a bouncing enemy.
* Enemy slowly accelerates with each bounce. Has a maximum velocity so it doesn't get out of control.

## 2024-10-23 - 1.5hr: ammo counter
* added an ammo counter.
* The ammo counter stays in a consistent spot on the screen.
* Tried to attach the ammo counter to the camera, but this caused weird problems with camera smoothing. So, I attached the ammo counter to a canvaslayer instead. This worked perfectly.

## 2024-10-17 - 3.25hr: ammo, reloading, more
* Ammo added. 12 bullets, cannot fire after reaching 0.
* Reloading added. Plays a simple animation during which you can't shoot before setting your ammo back to 12. Can only reload if your ammo isn't already full.
* Used [this video](https://www.youtube.com/watch?v=YAoueKaqhkc) for reference on the above.
* Slight delay after each shot before you can fire again. Can now hold down the fire button to fire automatically.
* Player sprite now looks in the direction you're aiming rather than the direction you're moving.
* Made bullets a bit larger.
* Fixed an issue in which bullets weren't coming out of the correct spot when aiming to the left.
* TODO: next task is to display current ammo count on the screen.

## 2024-10-16 - 2.5hr: enemy
* Created an enemy that moves towards the player. Player dies on contact. 
* The enemy dies after being shot a few times.
* Much of this time was spent trying to fix weird problems.
* Gun sprite flips correctly. 

## 2024-10-13 - 1hr: prototype level
* Created a small and very rudimentary level that will be used for playtesting

## 2024-10-07 - 2.5hr: Added shooting mechanic
* Added a weapon that rotates around the player. The weapon looks at the mouse.
* Added a projectile that fires out of the weapon upon pressing left click. The projectile is moved at a constant speed based on the rotation of the gun
 and despawns after a set distance or upon hitting terrain.
* Created very simple pixel art sprites for the gun and bullet using [pixilart](https://www.pixilart.com/draw). All current visuals may be subject to change. 
* Used the [GDQuest top-down shooter video](https://www.youtube.com/watch?v=GwCiGixlqiU&list=WL&index=84) and
 [this video on creating a shooting mechanic](https://www.youtube.com/watch?v=Aqzpx2f4X6Q) as references.
* Adjusted movement speed again.

## 2024-10-06 - 2hr: Watched the GDQuest video
* Watched the GDQuest top-down shooter video. 
* While I am not making a top-down shooter, a lot of the information in the video is still relevant to me such as enemies that follow the player, healthbars, and the weapon that fires projectiles.
* The weapon in the video is coded to aim at enemies automatically. I will need to find out how to have it aim at the cursor.

## 2024-10-03 - 2hr: imported Brackey's platformer template
* Re-watched the Brackey tutorial. I thought I would better absorb the information on a second watch, and I think it worked.
* Added the platformer to this project. Will be heavily modified in the future, of course.
* Fixed the killzone not working as intended.
* Adjusted movement speed and jump height.

### 2024-09-24 - 3hr: repo, devlog, trello, itch.io.
* Created github repo
* Added devlog.md and proposal.pdf
* Made trello page
* Exported the game and uploaded to itch.io, playable in browser.