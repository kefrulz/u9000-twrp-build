# U9000 TWRP GitHub Actions Build

This folder is a ready-to-push GitHub repository for building a first-pass TWRP
recovery image for the U9000 rugged Android scanner.

It contains:

- `device/alps/U9000`: manually generated TWRP device tree
- `recovery-stock-for-reference.img`: stock recovery repack with
  `ro.product.first_api_level=24`, useful as Auto TWRP Builder input/reference
- `debug-stock-recovery.img`: stock recovery repack that enables ADB in recovery
- `.github/workflows/u9000-twrp-build.yml`: cloud build workflow

## Run

1. Create a new GitHub repo.
2. Push the contents of this folder.
3. Open the repo's **Actions** tab.
4. Run **Build U9000 TWRP**.
5. Keep the defaults:
   - manifest URL: `https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni`
   - manifest branch: `twrp-8.1`
   - build target: `recovery`
6. Download the generated `recovery.img` from the workflow artifact or release.

Do not flash the generated image until it has been size-checked against the
16 MiB recovery partition and we have decided on a test path.

## Local source facts

- Android: 7.0 / API 24
- SoC: MT6737M, stock recovery paths identify the board as MT6735
- Display: 720x1280
- Recovery partition: 16 MiB
- Boot image page size: 2048
- Boot image base: `0x40000000`
- Cmdline: `bootopt=64S3,32N2,64N2`
