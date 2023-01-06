# btw-i-use-arch

This repository holds the `ansible` configurations for my adventures in tuning an `Arch Linux` system to combine my two favorite interests: audio and programming.

It is very much a work in progress.

## TODO
- backups config
- track pad freezing
- talon
- lv2-plugins (group?)
- LinVST
- yabridge config?

### Wine Programs (vanilla wine, v7.22)
- [x] FL Studio
- [x] Waves Central (v11, but it auto updated to v13.4.1 which still seems to work) 
- [x] XLN Installer aka RC-20 (works out of the box, except that it doesn't draw the Noise & Wobble waveforms?)
- [x] MPC (Installed, haven't fully tested with the license)
- [ ] iZotope

Basically, anything involving an `iLok` doesn't work fully. The license manager will install just fine, even going so far as to let you login successfully. However, `wine` does not seem to actually detect the physical `iLok` and I'm not sure if that's a serial data problem or not. None of the following will work the "right" way as of now:
- [ ] ~~Autotune~~
- [ ] ~~Soundtoys~~
- [ ] ~~iLok~~
- [ ] ~~ProTools~~
- [ ] ~~Serum~~

### Evaluation
- Ardour
- Bitwig Studio
- Harrison Mixbus
- Reaper
