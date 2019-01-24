# OSX Auto Rotate
I have identical dual monitors with one in a landscape orientation and OSX can never seem to keep track of which one is which when I plug in my MacBook. I constantly have to deal with the wrong monitor being rotated so I wrote a small script to fix that.

[`fb-rotate`](https://github.com/CdLbB/fb-rotate) is doing all the heavy lifitng for me

### Setup
Once you clone the repository, run
```
 $ gcc -w -o fb-rotate fb-rotate.c -framework IOKit -framework ApplicationServices
```
to setup `fb-rotate`

Then run
```
 $ fb-rotate -l
```
From this list you must determine which monitor you want as your main and which you want as your secondary. 

Based on that information set:
- `$DIS0` to the id of your main display
- `$DIS1` to the id of your secondary display
- `$DIS0_ROT` to the desired rotation of your primary display (0, 90, 180, 270)
- `$DIS1_ROT` to the desired rotation of your secondary display (0, 90, 180, 270)

Lastly make sure your script is executable:
```
 $ chmod u+x auto_rotate.sh
```
And execute as you wish
```
 $ ./auto-rotate.sh
```
It is likely useful to alias this or run it automatically when your computer wakes up or whatever you want


