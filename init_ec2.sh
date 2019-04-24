sudo apt-get update -y

# tools
sudo apt-get install -y ant gcc links git make

# java
sudo apt-get install -y openjdk-8-jdk

# mysql
echo "mysql-server mysql-server/root_password password root" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections
sudo apt-get -y install mysql-server mysql-client
sudo systemctl start mysql
sudo systemctl enable mysql

# tomcat
sudo sed -i '2 i deb http://us.archive.ubuntu.com/ubuntu/ xenial main' -i /etc/apt/sources.list
sudo sed -i '3 i deb http://us.archive.ubuntu.com/ubuntu/ xenial universe' -i /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y tomcat7
sudo sed -i 's:# JAVA_HOME=/usr/lib/jvm/java-6-openjdk/bin/java:JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre:g' /etc/default/tomcat7

