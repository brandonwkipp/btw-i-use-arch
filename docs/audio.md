## Notes on Audio stuff

### Waves
Here are some notes in getting Waves Central v11 working. There is a file named `LastAcceptableMACAddress.txt` with the MAC address of my ethernet interface without colon separators as the only value. What is weird about that is that Waves Central used my wifi interface to do its actual communication. There is another file named `LastRefreshLicenseFile.txt` without anything in it.

#### Waves Plugins license location
`$HOME/.local/share/wineprefixes/waves/drive_c/ProgramData/Waves Audio/Licenses/????.wle`

The `.wle` file is installed when you activate licenses to your machine and is removed when you deactivate them.

While I technically have Waves Central working in stock `wine-7.22` (not wine-staging), it automatically updated itself to v13.4.1 without asking for my consent. It works...right now, but it's a matter of time before it breaks. 

#### Update response payload
```
20:29:02 [info]     Update for version 13.4.1 is not available (latest version: 13.4.1, downgrade is disallowed).
20:29:02 [verbose]  ElectronMainUpdate::checkUpdate no update {
  success: true,
  updateAvailable: false,
  isMandatory: false,
  releaseDateAsString: '2022/10/12',
  releaseNotes: 'Update',
  version: '13.4.1',
  installOnExit: false
}
```

#### Blocking the update url
Blocking the update url seems to work to prevent it from making the call but I have yet to actually try with a fresh install of v11. Important to note though, you can't just block `register.waves.com`. It seems like (at least on my macbook) that url is used during the license transfer or something? Instead, it should work to block the actual path.

#### Other Waves paths
- `WavesLogsPath::\\users\\$USER\\AppData\\Local\\Waves Audio\\Logs`
- `WavesSharedDataPath::\\ProgramData\\Waves Audio`
- `WavesUserCachePath::\\users\\$USER\\AppData\\Local\\Waves Audio`
- `WavesSoftwareRootPath::\\Program Files (x86)\\Waves`
- `WavesDataPath::\\Program Files (x86)\\Waves\\Data`
- `WavesPreferencePath::\\users\\$USER\\AppData\\Roaming\\Waves Audio\\Preferences`

#### License Transfer??? (this turned out to be successful in actually activating the license to my machine
```
20:33:49 [error]    WleGetLicensedProducts::getProducts failed {
  centralParsedError: true,
  message: 'getLicenseFiles timed out after 40 second(s)',
  stack: ''
}
20:33:49 [info]     WleGetLicensedProducts::doGetProducts completed after 41.57s
20:33:49 [info]     ProductGuidsStore::update all products are known
0198:fixme:dxgi:d3d11_swapchain_Present1 Ignored present parameters 000000000081DC70.
20:33:49 [info]     ProductGuidsStore::update completed after 0.01s
20:33:49 [info]     BundleContentStore::update completed after 0.00s
20:33:49 [info]     SessionGetProducts::logUpdates completed after 0.00s
20:33:49 [info]     SessionGetProducts::handleMisreportedProductsAndUpdates completed after 0.04s
20:33:49 [info]     SessionGetProducts::getProducts completed after 41.62s
20:33:49 [info]     SessionRefreshProcess::perform completed after 41.64s
```
