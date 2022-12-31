## Notes on Audio stuff

### Waves
Here are some notes in getting Waves Central v11 working. There is a file named `LastAcceptableMACAddress.txt` with the MAC address of my ethernet interface without colon separators as the only value. What is weird about that is that Waves Central used my wifi interface to do its actual communication. There is another file named `LastRefreshLicenseFile.txt` without anything in it.

#### Waves Plugins license location
`$HOME/.local/share/wineprefixes/waves/drive_c/ProgramData/Waves Audio/Licenses/????.wle`

The `.wle` file is installed when you activate licenses to your machine and is removed when you deactivate them. Waves Central v11 autoupdates itself to v13.4.1 at the moment and while it does work on stock `wine-7.22` (not wine-staging), it's a matter of time before it breaks. 

#### License Transfer??? (this turned out to be successful in actually activating the license to my machine
20:33:49 [error]    WleGetLicensedProducts::getProducts failed {
  centralParsedError: true,
  message: 'getLicenseFiles timed out after 40 second(s)',
  stack: ''
}
20:33:49 [info]     WleGetLicensedProducts::doGetProducts completed after 41.57s
20:33:49 [info]     ProductGuidsStore::update all products are known
20:33:49 [info]     ProductGuidsStore::update completed after 0.01s
20:33:49 [info]     BundleContentStore::update completed after 0.00s
20:33:49 [info]     SessionGetProducts::logUpdates completed after 0.00s
20:33:49 [info]     SessionGetProducts::handleMisreportedProductsAndUpdates completed after 0.04s
20:33:49 [info]     SessionGetProducts::getProducts completed after 41.62s
20:33:49 [info]     SessionRefreshProcess::perform completed after 41.64s
```
