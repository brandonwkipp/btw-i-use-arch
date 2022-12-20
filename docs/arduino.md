# Arduino post-install

After `arduino` has been installed, you won't be able to use it very well. You'll need to plugin in your `arduino` board and run the following:
```
sudo chmod a+rw /dev/ttyACM0
```

Because it needs to _exist_ (be plugged in), we can't technically automate this :(

Source: https://forum.arduino.cc/t/permission-denied-on-dev-ttyacm0/475568/4
