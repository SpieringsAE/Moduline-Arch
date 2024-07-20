
sudo dd if=/dev/zero of=rootfs.ext4 bs=1M count=0 seek=3500 
sudo mkfs -t ext4 rootfs.ext4
sudo dd if=/dev/zero of=bootfs.fat bs=1M count=0 seek=32
sudo mkfs -t vfat bootfs.fat
sudo mount -o loop rootfs.ext4 /mnt/
sudo mkdir /mnt/boot
sudo mount -o loop bootfs.fat /mnt/boot

#sudo pacstrap -C pacman.conf -K -M -P -c /mnt archlinuxarm-keyring base base-devel vim networkmanager modemmanager openssh git ntp curl wget nodejs npm python zip unzip xz python-pip

#sudo umount /mnt/boot
#sudo umount /mnt
