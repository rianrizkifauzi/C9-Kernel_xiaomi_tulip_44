# Changelog — C9 Kernel Tulip (BKZ)

## R1.0-Test (initial)
- Port setup dari C9-Kernel lavender 4.4 yang sudah terbukti boot + KSU working.
- Source: kucingoranye/android_kernel_xiaomi_sdm660_44 @ manual-hook-rksu-ksun.
- Defconfig: tulip_defconfig (in-tree, SDM636).
- KernelSU-Next legacy, manual hook pre-patched, path_umount backport.
- Toolchain Proton Clang, GNU ld (ld.lld bikin built-in.o kosong di 4.4).
- AnyKernel3 + SELinux permissive (uji boot awal).
