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
    - gdisk /dev/disktoformat
    - x - for expert options 
    - z - for Formatting
3. cfdisk /dev/disktoinstall
    - select dos (gpt for more than 2TB)
    - create 128M partition for bootable (Grub)
    - create 4GB for swap - make type swap
    - create rest partition
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
    - uncomment the languages to select and :wq
    - locale-gen
    - vim /etc/locale.conf 
    - first line here: LANG=en_US.UTF-8
    - :wq
9. vim /etc/hostname
    - First line here: -your-username-
10. ln -sf /usr/share/zoneinfo/Asia/Riyadh /etc/localtime
11. exit

## Unmount
1. umount -R /mnt
2. reboot

## User Creation
1. su
2. useradd -m -G wheel ***username***
3. vi /etc/sudoers
    - uncomment: %wheel   ALL=(ALL)   ALL
    - :wq
4. passwd ***username***
5. chown -R ***username***:users /home/***username***

## Audio Configuration
1. pacman -S pipwire
2. pacman -S pavucontrol
3. start the pipewire service by dmenu or terminal

## Packages
1. pacman -Syu
2. pacman -S git i3 lightdm xorg lightdm-gtk-greeter dmenu terminator alacritty polybar nodejs

## Troubleshoot Network
1. nmcli d
2. nmcli r wifi on
3. nmcli d wifi list
4. nmcli d wifi connect -wifiname- -password-

