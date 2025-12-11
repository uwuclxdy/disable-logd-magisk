# Disable Logd Magisk Module

A simple Magisk module that disables Android system logging on every boot. All changes are revertable by uninstalling and rebooting.

## Installation

1. Download the zip from the [releases page](https://github.com/uwuclxdy/disable-logd-magisk/releases/latest).
2. Flash in Magisk.

> APatch and KSU haven't been tested but should work.

## What it does

After installation and on each boot:
1. Sets `persist.log.tag` and `log.tag` to `S` (Silent)
2. Stops `logd`
3. Clears all log buffers (`logcat -b all -c`)


