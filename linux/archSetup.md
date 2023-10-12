# Arch Setup Using Pacstrap (Not ArchInstall)
***The steps exclude the bootable medium generation process***

## Network Connection
***Check connection by "ping google.com"***
1. Enter iwctl to enter networks mode 
2. station wlan0 connect -your-connection-

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
4. mkfs.ext4 /dev/-bootpartition-
5. mkfs.ext4 /dev/-restpartition-
6. mkswap /dev/-swappartition-
***mounting process***
7. mount /dev/-mainpart- /mnt
8. mkdir /mnt/boot
9. mount /dev/-bootpart- /mnt/boot
10. swapon /dev/-swappart-

## Installation
1. pacstrap /mnt base base-devel linux linux-firmware vim

## Post Install
1. genfstab -U /mnt >> /mnt/etc/fstab
2. arch-chroot /mnt /bin/bash
3. pacman -S networkmanager grub
4. systemctl enable NetworkManager
5. grub-install /dev/sda **Don't put sda1 or sda2 etc. Just the drive in which you are installing. NOT THE PARTITION**
6. grub-mkconfig -o /boot/grub/grub.cfg
7. passwd
8. vim /etc/locale.gen
    a. uncomment the languages to select and :wq
    b. locale-gen
    c. vim /etc/locale.conf 
    d. first line here: LANG=en_US.UTF-8
    e. :wq
9. vim /etc/hostname
    - First line here: -your-username-
10. ln -sf /usr/share/zoneinfo/Asia/Riyadh /etc/localtime
11. exit

## Unmount
1. umount -R /mnt
2. reboot

## User Creation


## Packages
1. pacman -S git i3 lightdm xorg lightdm-gtk-greeter dmenu terminator alacritty polybar nodejs

## Troubleshoot Network
1. nmcli d
2. nmcli r wifi on
3. nmcli d wifi list
4. nmcli d wifi connect -wifiname- -password-





