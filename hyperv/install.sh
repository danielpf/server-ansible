#!/bin/sh
#
sudo apt-get update
sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf
sudo apt-get upgrade -y
sudo apt-get install net-tools ansible git -y
sudo apt-get autoremove -y

sudo useradd -m -G sudo ansible
sudo bash -c "echo 'ansible ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/ansible"

./ansible-pull.sh
CURR_DIR=$(basename $PWD)
cd ..
rm -rf $CURR_DIR


#sudo usermod -a -G microk8s danielf
#sudo chown -R danielf ~/.kube
#echo "re-login to get permissions"
##sudo microk8s kubectl config view --raw > $HOME/.kube/config
#
#
#microk8s.enable dashboard dns ingress registry
#sudo snap install kubectl --classic
#sudo snap install helm --classic

# sudo snap install docker.io --classic
