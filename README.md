deployenvirons
==========================================================

Scripts for setting up AWS instances for various deployment environment

29 Jun 2014- Now the stanford script runs without any user intervention and sets the machinename


SETTING UP AN AWS INSTANCE
==========================================================

$ wget https://raw.github.com/genemyers/deployenvirons/master/stanford_dev_env.sh

Now run

$ bash stanford_dev_env.sh NOHEROKU | tee install.log

Please note that 'tee' allows the output of the script to be printed to the console and the screen
simultaneously
.
If there any argument after stanford_dev_env.sh, it won’t install the Heroku tool belt.


ADD THE RSA KEY TO GITHUB
==========================================================
The final operation in the Stanford script creates the Github keys and prints
the pub key info to the screen, with the following instructions.

\#prints pub key to the console<br>
$ cat ~/.ssh/id_rsa.pub 


Go into your GitHub account, then go to and add or update the key for the environment you are using.

       https://github.com/settings/ssh



Now come back to the command line and type in:

$ ssh -T git@github.com


You should see 


Hi [username]! You've successfully authenticated, but GitHub does not provide shell access!


if you’ve added the SSH key successfully.

FezzeeSetup.git
=========
Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to
configure both the machine and your individual development environment as
follows:

```sh
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/startup-class/setup.git
./setup/setup.sh   
```

See also http://github.com/startup-class/dotfiles and
[Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
for more details.

