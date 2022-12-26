## Notes on Audio stuff

### Waves
Here are some notes in getting Waves Central v11 working. There is a file named 'LastAcceptableMACAddress.txt` with the MAC address of my ethernet interface without colon separators as the only value. What is weird about that is that Waves Central used my wifi interface to do its actual communication. There is another file named `LastRefreshLicenseFile.txt` without anything in it.

#### Waves Plugins license location
`$HOME/.local/share/wineprefixes/waves/drive_c/ProgramData/Waves Audio/Licenses/????.wle`

The `.wle` file is installed when you activate licenses to your machine and is removed when you deactivate them.


While I technically have Waves Central working in stock `wine-7.22` (not wine-staging), it automatically updated itself to v13.4.1 without asking for my consent. It works...right now, but it's a matter of time before it breaks. 

#### Other Waves paths
WavesLogsPath::\\users\\$USER\\AppData\\Local\\Waves Audio\\Logs
WavesSharedDataPath::\\ProgramData\\Waves Audio
WavesUserCachePath::\\users\\$USER\\AppData\\Local\\Waves Audio
WavesSoftwareRootPath::\\Program Files (x86)\\Waves
WavesDataPath::\\Program Files (x86)\\Waves\\Data
WavesPreferencePath::\\users\\$USER\\AppData\\Roaming\\Waves Audio\\Preferences
