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
