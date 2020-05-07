# Android port of usb_modswitch

The original source code comes from https://www.draisberghof.de/usb_modeswitch/.
All contribution for this great part of software goes to there!

On the system must be also libusb present: https://github.com/libusb
If you save and compile libusb at a parallel folder, you can stay the Android.mk as is. If not, the path to libusb must be corrected!

To compile the sources, execute the command (inside the jni folder): 

```
"/path/to/your/SDK/ndk-bundle/ndk-build -B"
```

You will get the executables:

```
[arm64-v8a] Install        : usb_modeswitch => libs/arm64-v8a/usb_modeswitch
[armeabi-v7a] Install        : usb_modeswitch => libs/armeabi-v7a/usb_modeswitch
[arm64-v8a] Install        : libusb-1.0.so => libs/arm64-v8a/libusb-1.0.so
[armeabi-v7a] Install        : libusb-1.0.so => libs/armeabi-v7a/libusb-1.0.so
```
Install the executable of your arch to the folder /system/bin or to /vendor/bin on your device.

Install the library to the folder /system/lib (armeabi-v7a) or /system/lib64 (armeabi-v7a) on your device.

I use this mainly to switch my 4G modem to Hilink mode:
```
usb_modeswitch -v 12d1 -p 1f01 -M '55534243123456780000000000000a11062000000000000100000000000000'
```



