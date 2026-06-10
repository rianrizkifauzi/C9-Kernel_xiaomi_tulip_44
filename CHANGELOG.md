# Changelog — C9 Kernel Tulip (BKZ)

## R1.0-Test (initial)
- Port setup dari C9-Kernel lavender 4.4 yang sudah terbukti boot + KSU working.
- Source: kucingoranye/android_kernel_xiaomi_sdm660_44 @ manual-hook-rksu-ksun.
- Defconfig: tulip_defconfig (in-tree, SDM636).
- KernelSU-Next legacy, manual hook pre-patched, path_umount backport.
- Toolchain Proton Clang, GNU ld (ld.lld bikin built-in.o kosong di 4.4).
- AnyKernel3 + SELinux permissive (uji boot awal).

## R1.1 (enforcing)
- R1.0-Test TERBUKTI boot + KSU-Next Working di tulip (screenshot: 4.4.302-C9-BKZ-KSUN-R1.0-Test, Working 33129).
- Buang patch cmdline androidboot.selinux=permissive → SELinux ENFORCING.
- Build daily-usable + integrity-ready.

## R1.2 (force enforcing)
- R1.1 ternyata masih Permissive: ROM/bootloader tulip inject androidboot.selinux=permissive ke cmdline (ro.boot.selinux=permissive, padahal CONFIG_CMDLINE bersih).
- Fix: anykernel patch_cmdline override androidboot.selinux=enforcing → paksa kernel boot enforcing.
- KSU-Next dipin ke fc33995cedc5 (hindari regресi selinux_hide #1297 yang merusak 4.4).
