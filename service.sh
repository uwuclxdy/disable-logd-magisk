#!/system/bin/sh
# Disable Logging Module - service.sh
# Runs on each boot in late_start service mode

MODDIR=${0%/*}

until [ "$(getprop sys.boot_completed)" = "1" ]; do
    sleep 3
done

sleep 3

resetprop persist.log.tag S
resetprop log.tag S

su -c "stop logd"

logcat -b all -c 2>/dev/null
