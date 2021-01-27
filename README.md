# miscQuakeMods
A collection of small experiments in QuakeC

These are just some small (roughly implemented) mods just to see what QuakeC (and I) can do

The weapon model [v_plasma.mdl](/progs) is from Quake 1.5 which is only used here as a placeholder and **is not my work**.
This was meant only to make it more fun for me to test the lava shooting with instead of the original Rocket Launcher

You can check out Quake 1.5 [here](https://www.moddb.com/mods/quake-15), which I highly recommend you do

## What's included
- Lava ball weapon
- Third person camera when using the Axe
- DOOM inspired "glory kills" (without the fancy animations)
- A dynamic music system (with a single somewhat hard coded song)
- In-air time stop during which you can one shot enemies
- Time reversal that affects the player and other entities (enemies, environment lava balls, grenades etc)

[Here is a showcase of some of the above](https://youtu.be/ClMLjC8g5FM)

## Installation
- Download this repo as a ZIP
- Extract folder to `Quake/` (feel free to give it a more sensible name)
- Add `-game <name of the folder>` to the game's launch options

## How it works
### Lava weapon
  To equip the lava launcher, type `impulse 9` in the console to get all weapons and scroll past the Thunderbolt

### Relevant key binds
The [config file](/config.cfg) has the key binds for the "glory kills", time stop and time reversal. They are as follows by default:
- `g` for time reversal
- `r` for glory kill
- `f` for in-air time stop
- `F7` is used as the `map start` command for testing convenience

### "Glory kills"
The "glory kill" can be done on enemies that are marked with blue particles during their death animation.
By standing near them and pressing the appropriate key, a small sequence plays out. This heals the player and gibs the enemy.
The player is also immune to damage during this period.

### Dynamic music
The dynamic music is based on a "kill streak", so if you kill enemies quickly it will ramp up. There's also a specific snippet for the time reversal period as well as the level end.
Furthermore, glory kills automatically ramp the music up.

### Time stop
The time stop allows you to do one of two things:
- Manually aim at enemies and shoot however many you can within the time stop period
- Press the same key again to automatically shoot enemies or parry incoming projectiles within a given radius of the player, up to 3 per time stop.

The camera effect can be a bit jarring, be warned.

### Time reversal
Pressing the appropriate key will send the player and other entities back in time through their previous positions. This does not, however, affect HP.

## Disclaimer

Only `start` and `E1M1` were tested (or rather, played around) with this, as this not intended to be a released mod, but rather an archive of my time with QuakeC.

As such, it would result in a pretty broken gameplay experience (especially with the time stop).
