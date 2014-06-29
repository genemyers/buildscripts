deployenvirons
==========================================================

Scripts for setting up AWS instances for various deployment environment

==========================================================
SETTING UP AN AWS INSTANCE
==========================================================

$ wget https://raw.github.com/genemyers/deployenvirons/master/stanford_dev_env.sh

Now run

$ bash stanford_dev_env.sh NOHEROKU 


If there any argument after stanford_dev_env.sh, it won’t install the Heroku tool belt.


NOTE: can we eliminate the 4 'Enter's needed before the Huroku creeds and the 3 after(when creating rsa keys)  and clean up setup, dot files dirs and stanford_dev_env.sh file when done?

==========================================================
NOW YOU NEED TO ADD THE RSA KEY TO GITHUB
==========================================================

$ cat ~/.ssh/id_rsa.pub 


Go into your GitHub account, then go to and add or update the key for the environment you are using.

       https://github.com/settings/ssh



Now come back to the command line and type in:

$ ssh -T git@github.com


You should see 


Hi [username]! You've successfully authenticated, but GitHub does not provide shell access!


if you’ve added the SSH key successfully.
