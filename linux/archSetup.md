# Arch Setup Using Pacstrap (Not ArchInstall)
***The steps exclude the bootable medium generation process***

## Network Connection
***Check connection by "ping google.com"***
1. Enter iwctl to enter networks mode 
2. station wlan0 connect <your-connection>

**timedatectl set ntp true**

## Partitioning
1. lsblk - to see all drives
2. Formatting
    a. gdisk /dev/disktoformat
    b. x - for expert options 
    c. z - for Formatting
3. cfdisk /dev/disktoinstall
    a. select dos (gpt for more than 2TB)
    b. create 128M partition for bootable (Grub)
    c. create 4GB for swap - make type swap
    d. create rest partition
4. mkfs.ext4 /dev/<bootpartition>
5. mkfs.ext4 /dev/<restpartition>
6. mkswap /dev/<swappartition>
***mounting process***
7. mount /dev/<mainpart> /mnt
8. mkdir /mnt/boot
9. mount /dev/<bootpart> /mnt/boot
10. swapon /dev/<swappart>

## Installation
1. pacstrap /mnt base base-devel linux linux-firmware vim

## Post Install
1. genfstab -U /mnt >> /mnt/etc/fstab
2. arch-chroot /mnt /bin/bash











