echo ""
echo "-------------------------------------------------------------------------------------------------------------------------"
echo "update serer                                                                                                             "
echo "-------------------------------------------------------------------------------------------------------------------------"
echo ""
sudo apt update
sudo apt upgrade -y
echo ""
echo "-------------------------------------------------------------------------------------------------------------------------"
echo "Docker install                                                                                                             "
echo "-------------------------------------------------------------------------------------------------------------------------"
echo ""
sudo apt install docker.io -y
echo ""
echo "-------------------------------------------------------------------------------------------------------------------------"
echo "Minikube install                                                                                                             "
echo "-------------------------------------------------------------------------------------------------------------------------"
echo ""
sudo apt-get install curl
sudo apt-get install apt-transport-https
sudo user md -aG docker $user && new grp docker
sudo apt install virtualbox virtualbox-ext-pack -y
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
minikube start --driver=docker