
cd ./UTN-FRA_SO_Examenes/202406/
bash script_Precondicion.sh
source ~/.bashrc
history -a
cd .
ls -l
cd .
cd
sudo fdisk -l
sudo fdisk /dev/sdc
sudo wipefs -a /dev/sdc1
sudo wipefs -a /dev/sdc2 
sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdc2
sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo fdisk /dev/sdd
sudo wipefs -a /dev/sdd1
sudo pvcreate /dev/sdd1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L vg_temp -n lv_swap
sudo lvcreate -L 512M vg_temp -n lv_swap
u - semoniuk
history -avagrant halt
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd ./UTN-FRA_SO_Examenes/202406/
su - vagrant
ls -l
history -a
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
pip install ansible
ansible --version
sudo apt install ansible
sudo usermod -aG docker semoniuk
sudo fdisk /dev/ssd
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workares /work
sudo mount /dev/mapper/vg_datos-lv_workareas /work
ls -l
cd RTA_Examen_20251125/
cat << "EOF" > /Punto_A.sh
sudo fdisk/dev/sdc
sudo wipefs -a /dev/sdc1
sudo wipefs -a /dev/sdc2
sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdc2
sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo fdisk /dev/sdd
sudo wipefs/ -a /dev/sdd1
sudo pvcreate /dev/sdd1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
EOF

ls /l
ls -l
chmod +x Punto_A.sh
cat << "EOF" > /Punto_A.sh
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
> EOF

EOF

ls -l
cat > Punto_A.sh << EOF
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

EOF

ls -l Punto_A.sh
cd
sudo systemctl status docker
cd /usr/local/bin
sudo vim Semoniuk_AltaUser-groups.sh
sudo groupadd supervisores
sudo vim Semoniuk_AltaUser-groups.sh
ls -l
cd
cd /usr/loca/bin
cd /usr/local/bin
rm Semoniuk_AltaUser-groups.sh
sudo rm Semoniuk_AltaUser-groups.sh
sudo vim Semoniuk_AltaUser-groups.sh
cd
ls -l
cd /RTA_Examen_20251125
cd RTA_Examen_20251125
cd
chmod +x Semoniuk_AltaUser-groups.sh
cd /usr/local/bin
chmod +x Semoniuk_AltaUser-groups.sh
sudo chmod +x Semoniuk_AltaUser-groups.sh 
cd
cd RTA_Examen_20251125
cat > Punto_B.sh << EOF
sudo groupadd 2PSupervisores
chmod +x Semoniuk_AltaUser-groups.sh
./Semoniuk_AltaUser-gropus.sh $HOME/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
EOF

cp Semoniuk_AltaUser-groups.sh RTA_Examen_20251125/
cp /usr/local/bin/Semoniuk_AltaUser-groups.sh .
ls /l
ls -l
cd
cd UTN-FRA_SO_Examenes/202406/docker
ls -l
vim index.html
vim dockerfile
docker login -u gustavosemoniuk
docker build
docker build -t gustavosemoniuk/tparq latest .
sudo docker build -t gustavosemoniuk/tparq 
sudo docker build -t gustavosemoniuk/tparq .
docker image list
sudo docker image list
cd ..
cd ansible
ls -l
vim playbook.yml 
cat /proc/cpuinfo
vim playbook.yml 
cat /etc/os-release
ip a
vim playbook.yml 
vim datos_alumno.txt.j2
vim datos_equipo.txt.j2
ansible-playbook playbook.yml 
vim playbook.yml 
ansible-playbook playbook.yml 
vim playbook.yml 
sudo ansible-playbook playbook.yml 
cd..
cd ..
cd docker
sudo docker build -t gustavosemoniuk/tp
sudo docker build -t gustavosemoniuk/tp .
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo docker build -t gustavosemoniuk/tp .
cd
cd RTA_Examen_20251125/
Punto_B.sh
cat Punto_B.sh 
cat Punto_A.sh 
./Punto_A.sh 
sudo ./Punto_A.sh 
su - semoniuk
history -a
sudo umount /var/lib/docker 2>/dev/null
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
cd UTN-FRA_SO_Examenes/202406/docker/
sudo docker build -t gustavosemoniuk/tparq .
sudo systemctl daemon-reload
sudo systemctl restart docker
sudo docker build -t gustavosemoniuk/tparq .
sudo docker login
sudo docker push gustavosemoniuk/tparq
cat > run.sh << EOF
sudo docker run -d -p 8080:80 gustavosemoniuk/tparq
EOF

chmod +x run.sh
cd
cd RTA_Examen_20251125/
cat > Punto_C.sh << EOF
sudo docker build -t gustavosemoniuk/tparq .
sudo docker login
sudo docker push gustavosemoniuk/tparq
sudo docker run -d -p 8080:80 gustavosemoniuk/tparq
EOF

cat < Punto_D.sh >> EOF
cat < Punto_D.sh << EOF
cd $HOME/UTN-FRA_SO_Examenes/202406/ansible/
sudo ansible-playbook playbook.yml
EOF

cat < Punto_D.sh >> EOFs
cd
git remote -v
.git
ls -l
git add .
pwd
ls -a
cd UTN-FRA_SO_Examenes/
la -a
git add .
git remote -v
git remote add personal https://github.com/gustavosemoniuk/UTNFRA_SO_2do_TP_Semoniuk
git commit -m "tp"
git config --global user.email gustavo.semoniuk@gmail.com
git config --global user.name gustavosemoniuk
git commit -m "tp"
git push personal master
git push personal main
git push
git push personal main
cd
git clone https://github.com/gustavosemoniuk/UTNFRA_SO_2do_TP_Semoniuk
cd UTNFRA_SO_2do_TP_Semoniuk/
cp -r ~/202406 .
cp -r ~/UTN-FRA_SO_Examenes/202406 .
cp -r ~/RTA_Examen_$(date +%Y%m%d) .
cp -r ~/RTA_Examen_20251125 .
history -a
