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

# R1.1: SELinux enforcing (no permissive patch).
# Boot + KSU verified working on R1.0-Test; now ship secure enforcing build.

flash_boot;
## end install
