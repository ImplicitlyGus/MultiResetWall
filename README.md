# GusWall
Please Support Specnr on Ko-Fi! ----> [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/specnr)

## Instructions

Watch the [NEW Multi Instance & Wall Setup Video](https://youtu.be/0xAHMW93MQw)

## Usage

To use the macro, run TheWall.ahk and wait for it to say ready. Start up OBS, then start up a [Fullscreen Projector](https://youtu.be/9YqZ6Ogv3rk).

On the Fullscreen projector, you have a few hotkeys: 
- (1-9): Will reset the instance with the corresponding number
- Shift + (1-9): Will play the instance with the corresponding number
- E: Will reset the instance which your mouse is hovering over
- R: Will play the instance which your mouse is hovering over
- F: Will play the instance which your mouse is hovering over, and reset all of the other ones
- T: Will reset all instances
- Shift + L Mouse button: Lock instance so other "blanket reset" functions skip over it

Use [this world moving macro](https://gist.github.com/Specnr/f7a5450d932a1277fdcd6c141ad7bf6a) to delete old worlds and speed up resetting. Run it at the beginning of every session.

## Background Resetting
When in-game, you can reset other instances in the background. To do this, I'd advise:

Right click on wall scene (or your verification scene) in OBS scene list
Open a windowed projector
Make it small, put it somewhere convenient
Right click it -> select stay on top
To actually background reset, lock good looking instances then reset all.

I'd advise messing with the default hotkeys for background resetting in Hotkeys.ahk and finding something you're comfortable with. (Don't worry about these being bound to numpad keys and it affecting your OBS - when the macro is running, the key presses won't affect OBS)

## OBS Websocket

1) Download [Python 3.7+](https://www.python.org/downloads/)
2) Install [OBS websocket](https://obsproject.com/forum/resources/obs-websocket-remote-control-obs-studio-from-websockets.466/)
3) Open up command prompt, and run this command in `pip install obs-websocket-py`
4) Now, open up obs.py in whatever text editor you want. 
5) For scene_name_format you want to put in whatever the prefix of all your scenes are. 
6) For wall_scene_name, its pretty self explanetory, just put in the scene name of your wall.
7) Now, for the password, you can put in a password if you want, and if you use it you can go to `Tools -> WebSockets Server Settings -> Enable Authentication` and then put in whatever password you want. Then you can put the same password in the password variable quotes.

After that it should be working. Open a ticket in the [Discord](https://discord.gg/tXxwrYw) if you have any issues.

## Credit

- Specnr ; the original macro & gist
- Gus (Me) ; this fork, cannibalizing code, & testing
- Ravalle ; rawalle code for borderless and entity distance setting changing
