# C9 Kernel — Tulip (Redmi Note 6 Pro / SDM636)

Custom kernel **KernelSU-Next** untuk Xiaomi Redmi Note 6 Pro (codename **tulip**), kernel Linux **4.4.x**, dibangun via GitHub Actions.

- **Codename build:** BKZ
- **Base source:** `kucingoranye/android_kernel_xiaomi_sdm660_44` @ `manual-hook-rksu-ksun` (pre-patched manual hook + path_umount)
- **Defconfig:** `tulip_defconfig`
- **SU:** KernelSU-Next (legacy, non-GKI 4.4)
- **Toolchain:** Proton Clang (GNU ld — wajib untuk 4.4)
- **Target ROM:** Android 11 / crDroid 7.x

## Cara build
Jalankan workflow **Build C9 Kernel KSUN (Tulip 4.4)** via Actions → Run workflow. Default input sudah disetel untuk tulip.

## Flash
Flash zip AnyKernel3 hasil build via TWRP/OrangeFox. Backup partisi boot dulu.

> Catatan: build awal pakai relver bertanda `-Test` dan SELinux permissive untuk uji coba boot. Setelah terbukti boot + KSU working, baru naik ke rilis enforcing.
