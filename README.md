## FLEX
[FLEX](https://github.com/Flipboard/FLEX) is an in-app debugging and exploration tool for iOS.

## libFlex.dylib
libFlex.dylib can debug other app in your jailbreak device.
[中文介绍](https://www.lanvsblue.top/2018/01/23/SpringBoard-with-FLEX/)

![libFlex.dylib](https://www.lanvsblue.top/img/in-post/post-SpringBoard-with-FLEX/FLEX-Demo1.PNG)

![libFlex.dylib](https://www.lanvsblue.top/img/in-post/post-SpringBoard-with-FLEX/FLEX-Demo2.PNG)

## install
copy [libFlex.dylib](https://github.com/lanvsblue/libFlex/raw/master/libFlex/Package/Library/MobileSubstrate/DynamicLibraries/libFlex.dylib) and [libFlex.plist](https://github.com/lanvsblue/libFlex/raw/master/libFlex/Package/Library/MobileSubstrate/DynamicLibraries/libFlex.plist) to your DynamicLibraries path, your path may different:
```
/Library/MobileSubstrate/DynamicLibraries/
```
and than restart SpringBoard:
```
killall SpringBoard
```
