# Explorations in Wine

- 64-bit seems ok
- Windows 10 seems to work better than the default
- `wine v7.22` has worked pretty well for the things that have actually worked
- download all the fonts at the start of the bottle

## Does not work

- Splice's Desktop app
- iLok detection

### Packages

TODO

### Electron
These commands have been immensely useful in my research:
```
# Unpack an Electron .asar file to a new directory
npx asar extract app.asar $DIRNAME

# Pack a directory as an Electron .asar file
npx asar pack $DIRNAME app.asar
```

In addition to those two commands, I have found [httptoolkit](https://httptoolkit.com/) to be very helpful in showing me all HTTP(S) calls made from Electron applications.
