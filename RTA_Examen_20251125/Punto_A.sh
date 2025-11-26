sudo fdisk/dev/sdc
> sudo wipefs -a /dev/sdc1
> sudo wipefs -a /dev/sdc2
> sudo pvcreate /dev/sdc1
> sudo pvcreate /dev/sdc2
> sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
> sudo lvcreate -L 5M vg_datos -n lv_docker
> sudo lvcreate -L 1.5G vg_datos -n lv_workareas
> sudo fdisk /dev/sdd
> sudo wipefs/ -a /dev/sdd1
> sudo pvcreate /dev/sdd1
> sudo vgcreate vg_temp /dev/sdd1
> sudo lvcreate -L 512M vg_temp -n lv_swap
> sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
> sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
> sudo mkswap /dev/mapper/vg_temp-lv_swap
> sudo swapon /dev/mapper/vg_temp-lv_swap
> sudo mkdir -p /var/lib/docker
> sudo mkdir -p /work
> sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
> sudo mount /dev/mapper/vg_datos-lv_workareas /work

