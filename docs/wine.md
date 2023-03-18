# Explorations in Wine

### Notes to keep in mind
- 64-bit seems ok
- Windows 10 seems to work better than the default
- download all the fonts at the start of the bottle

### Works (vanilla wine, v7.22)
- [x] FL Studio
- [x] Waves Central (v11, but it auto updated to v13.4.1 which still seems to work) 
- [x] XLN Installer aka RC-20 (works out of the box, except that it doesn't draw the Noise & Wobble waveforms?)
- [x] MPC (Installed, haven't fully tested with the license)

## Does not work
Basically, anything involving an `iLok` doesn't work fully. The license manager will install just fine, even going so far as to let you login successfully. However, `wine` does not seem to actually detect the physical `iLok` and I'm not sure if that's a serial data problem or not. None of the following will work the "right" way as of now:
- [ ] ~~Autotune~~
- [ ] ~~Soundtoys~~
- [ ] ~~iLok~~
- [ ] ~~ProTools~~
- [ ] ~~Serum~~
- [ ] ~~iZotope~~
- [ ] ~~Splice~~

### Electron
These commands have been immensely useful in my research:
```
# Unpack an Electron .asar file to a new directory
npx asar extract app.asar $DIRNAME

# Pack a directory as an Electron .asar file
npx asar pack $DIRNAME app.asar
```

In addition to those two commands, I have found [httptoolkit](https://httptoolkit.com/) to be very helpful in showing me all HTTP(S) calls made from Electron applications.
