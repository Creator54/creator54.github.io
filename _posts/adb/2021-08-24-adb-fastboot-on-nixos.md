---
title: ADB Fastboot on NixOS
tags: [adb,fastboot]
---
## This guide covers how to get get adb and fastboot working on NixOS

First you need to get the android tools package. NixOS stable currently doesn't
include android-tools so get it via nixpkgs.

> nix-env -iA nixpkgs.android-tools

This will install all base packages like `fastboot` and `adb`. For fastboot you
can simply start using the `fastboot` cmd after plugging the device on fastboot
mode. But for adb you need to start the server with root permissions which can
be achieved via a simple 	`sudo adb devices` or `sudo adb shell` should work
with and basic `adb` cmd. This is a one time requirement, no need to type sudo
again and again. Also remember to connect the device with `usb debugging` on
after the above cmd else adb fails to recognise the device and you will need to
unplug and replug again.

Now you are ready to use adb cmds as per your liking .Eg:

* `adb pull /sdcard/test.mp4`
* `adb shell screenrecord --verbose /sdcard/test.mp4`
* `adb shell am start -a android.intent.action.VIEW -d $url`

Enjoy !!

