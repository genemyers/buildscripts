echo Please enter the Machine name eg: dev-regservice
read machinename
sudo sed -i '/^127.0.0.1/ s/$/ '${machinename}'/'  /etc/hosts
sudo sed -i 's/.*/'${machinename}'/g' /etc/hostname
sudo hostname -F /etc/hostname
sudo apt-get install -y git-core
ssh-keygen -t rsa -C "code@datumlogic.com" -f /home/ubuntu/.ssh/id_rsa -N ""
#prints the pub key to the console
echo Go to https://github.com/settings/ssh and add the following key:
cat ~/.ssh/id_rsa.pub
echo At the command line and type in:
echo ssh -T git@github.com
echo
echo If you have added the SSH key successfull you should see: 
echo Hi [username]! You\'ve successfully authenticated, but GitHub does not provide shell access!
# git clone ssh://git@github.com/fezzee/feznoc.git
#We need htpasswd to create and generate an encrypted for the user using Basic Authentication. Install apache2-utils using the command below.
sudo apt-get install apache2-utils
sudo apt-get install nginx