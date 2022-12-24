#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:20793344:07916d35fd626cfe22449d9c875ebb3e8c0becfb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:11687936:c9e6cc56bb69551b5baea3d500486f5a0f77ad30 EMMC:/dev/block/bootdevice/by-name/recovery 07916d35fd626cfe22449d9c875ebb3e8c0becfb 20793344 c9e6cc56bb69551b5baea3d500486f5a0f77ad30:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
