### AnyKernel3 Ramdisk Mod Script
### tulip (Redmi Note 6 Pro / SDM636) - A-only device

properties() { '
kernel.string=C9 Custom Kernel for Redmi Note 6 Pro (tulip)
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=tulip
device.name2=Tulip
device.name3=TULIP
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# Banner
ui_print " ";
ui_print "**************************************";
ui_print "*  C9 Custom Kernel for Tulip        *";
ui_print "*  Codename: BKZ                      *";
ui_print "*  Built by JorianPonomaref          *";
ui_print "*  Base: Linux 4.4.x + KSUN           *";
ui_print "*  Source: kucingoranye SDM660       *";
ui_print "*  Mode: SELinux enforcing           *";
ui_print "**************************************";
ui_print " ";

## AnyKernel install
. tools/ak3-core.sh;

split_boot;

# R1.2: Force SELinux ENFORCING.
# The tulip ROM/bootloader injects androidboot.selinux=permissive into the
# boot cmdline (verified: ro.boot.selinux=permissive while CONFIG_CMDLINE has
# no selinux token). Override it to enforcing so the kernel boots secure.
ui_print "Forcing cmdline: androidboot.selinux=enforcing";
patch_cmdline "androidboot.selinux" "androidboot.selinux=enforcing";

flash_boot;
## end install
