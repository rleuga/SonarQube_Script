
#!/bin/bash
#Author: Rodrigue
#Date: June 20, 2022


## -----------------------------------SonarQube Installation Script------------------------------------------------

echo "SonarQube Installation. Please be patient, many steps here, it take couple minutes..."
sleep 5

##-------------Server update-------------------------------
echo "updating the server"
sleep 3

sudo yum update -y

##-----------------Java Installation------------------
echo "installing java"
sleep 3
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y

##-------------Changing directorY--------------------------
echo "moving to the  /opt directory"
sleep 5
cd /opt 

##---------------Downloading SonarQube online---------------
echo "Downloading SonarQube online"
sleep 3
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

##-----------Unzipping SonarQube---------------------
echo "Unzipping SonarQube file"
sleep 3
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip

##------------Changing the file's owner and group from root to vagrant"
echo "Changing the file's owner and group from root to vagrant"
sleep 3

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

## -------------Moving to file ./sonar.sh location-----------------
echo "Moving to file ./sonar.sh location"
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

## --------------Starting ./sonar.sh---------------
echo "Starting ./sonar.sh"
sleep 3
./sonar.sh start

sleep 5
echo "Sonarqube installed and started successfully"
