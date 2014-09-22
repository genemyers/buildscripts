####################
# Functions
####################
 
Pause()
{
 OLDCONFIG=`stty -g`
 stty -icanon -echo min 1 time 0
 dd count=1 2>/dev/null
 stty $OLDCONFIG
}

####################
# Main Script
####################

ssh-keygen -t rsa -C "arjundhadwal@zapbuild.com" -f ~/.ssh/id_rsa -N ""

#prints the pub key to the console

echo Go to https://github.com/settings/ssh and add the following key:

echo "################################################################################ \n"

cat ~/.ssh/id_rsa.pub

echo "\n################################################################################"

echo "\nAt the command line and type in:"

echo ssh -T git@github.com

echo 

echo "\nIf you have added the SSH key successfull you should see:" 

echo Hi [username]! You\'ve successfully authenticated, but GitHub does not provide shell access!

echo "\nIf you have added the SSH key, Then Hit any key to continue ..."

Pause

echo "\nInstalling git ..."

sudo apt-get install git

echo "\nCreating clone of LineupManagementSystem..."

sudo git clone -b dev git@github.com:fezzee/LineupManagementSystem.git

echo "\nUpdating packages..."

sudo apt-get update

echo "\nNow start installing nodejs..."

sudo apt-get install nodejs

echo "\nLets install nodejs legacy..."

sudo apt-get install nodejs-legacy

echo "\nInstall npm(node package manager)"

sudo apt-get install npm

echo "\nNow install our lovable sails js via npm"

sudo npm install sails -g

echo "\nLets install ImageMagic for image processing tasks"

sudo apt-get install imagemagick 

echo "\nLets start the installation of PostgreSql....."

sudo apt-get install postgresql postgresql-contrib

echo "\nNow set the password of user postgres, You can set any password by running this quiery ' ALTER USER postgres PASSWORD 'ztech@44'; ' \n Once you run this query then type \q in order to exit from psql."

sudo -u postgres psql

echo "\nCreate new DB for LMS"

sudo -u postgres createdb festivals

echo "\nInstalling PgSql's client"

sudo apt-get install phppgadmin

sudo cp /etc/apache2/conf.d/phppgadmin /etc/apache2/conf-enabled/phppgadmin.conf

sudo /etc/init.d/apache2 restart

echo "\ninstalling foreaver js, it will use in production mode"

sudo npm install -g forever

cd LineupManagementSystem/

echo "\nIntalling node packages via npm"

sudo npm install

echo "################################################################################"

echo "\nWaaoooo all the required packages successfully installed....Now lift the Sails.."

echo "\n################################################################################"

sudo sails lift

