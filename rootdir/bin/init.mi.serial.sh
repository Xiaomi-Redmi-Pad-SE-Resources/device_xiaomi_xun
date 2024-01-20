#!/vendor/bin/sh
setprop ro.vendor.oem.psno `cat /mnt/vendor/persist/serialno/.psno`
setprop ro.vendor.oem.sno `cat /mnt/vendor/persist/serialno/.sno`
setprop ro.ril.factory_id `cat /mnt/vendor/persist/serialno/.factoryid`
setprop ro.ril.oem.wifimac `cat /mnt/vendor/persist/wlan/wlan_mac.bin | head -1 | cut -d '=' -f 2 | sed -e 's/^\(..\)\(..\)\(..\)\(..\)\(..\)\(..\)/\1:\2:\3:\4:\5:\6/'`
setprop ro.ril.oem.btmac `cat /mnt/vendor/persist/wlan/bt_mac.bin | head -1 | sed -e 's/^\(..\)\(..\)\(..\)\(..\)\(..\)\(..\)/\1:\2:\3:\4:\5:\6/'`
