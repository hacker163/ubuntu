
dd if=/dev/zero of=linuxroot.img bs=1M count=4096
sudo mkfs.ext4 linuxroot.img
mkdir -p rootfs
sudo mount linuxroot.img rootfs/
sudo cp -rfp ubuntu/* rootfs/
sudo umount rootfs/
e2fsck -p -f linuxroot.img
resize2fs -M linuxroot.img
