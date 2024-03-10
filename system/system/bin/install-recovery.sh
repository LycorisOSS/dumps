#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:49ddaeb59084429458474139ef2f258c07d7b2c9; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:67108864:21a8f8e483f25c524e17de63c9075fa21e4410b0 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:49ddaeb59084429458474139ef2f258c07d7b2c9 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
