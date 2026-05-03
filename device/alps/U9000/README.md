# U9000 TWRP Device Tree

This is a first-pass TWRP device tree for the U9000 Android rugged scanner.

Known hardware/software facts:

- Product: `full_U9000`, device `U9000`, model `PDA`
- Android stock build: `PDA_EN_N2_P1_V2.2`, Android 7.0 / API 24
- SoC: MediaTek MT6737M family, stock tree labels many paths as `mt6735`
- Kernel: stock recovery kernel from the dumped `recovery.img`
- Display: 720x1280
- Recovery partition: 16 MiB
- Boot image page size: 2048
- Boot image base: `0x40000000`
- Cmdline: `bootopt=64S3,32N2,64N2`

The prebuilt kernel in `prebuilt/kernel` is copied from:

`backups/u9000-stock-20260503/u9000-backup/recovery.img`

Build target after placing this directory at `device/alps/U9000` in a TWRP/Omni
source tree:

```sh
. build/envsetup.sh
lunch omni_U9000-eng
mka recoveryimage
```

Do not flash a generated recovery image until it is size-checked and, if
possible, tested with a temporary boot path first. This bootloader reported
fastboot support but behaved unreliably during probing, so a root `dd` flash
should be treated as the last step, not the first one.
