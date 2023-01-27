echo ""
echo "-------------------------------------------------------------------------------------------------------------------------"
echo "update serer                                                                                                             "
echo "-------------------------------------------------------------------------------------------------------------------------"
echo ""
sudo apt update
sudo apt upgrade -y
echo ""
echo "-------------------------------------------------------------------------------------------------------------------------"
echo "Java installation                                                                                                        "
echo "-------------------------------------------------------------------------------------------------------------------------"
echo ""
sudo apt install default-jdk
echo "-------------------------------------------------------------------------------------------------------------------------"
echo "Jenkins installation                                                                                                       "
echo "-------------------------------------------------------------------------------------------------------------------------"
echo ""
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
echo ""
sudo apt install docker.io