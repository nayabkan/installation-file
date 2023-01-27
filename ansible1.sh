sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update 
sudo apt install -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt install docker-ce
sudo usermod -aG docker ${USER}
su - ${USER}
sudo usermod -aG docker username