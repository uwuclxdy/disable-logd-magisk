#!/system/bin/sh
# Disable Logging Module - uninstall.sh
# Restores logging to default when module is removed

# Restore log level to default (INFO)
resetprop persist.log.tag I
resetprop log.tag I

log -t "disable_logging" "Logging restored to default level (INFO)"
