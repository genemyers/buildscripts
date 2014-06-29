deployenvirons
==========================================================

Scripts for setting up AWS instances for various deployment environment


SETTING UP AN AWS INSTANCE
==========================================================

$ wget https://raw.github.com/genemyers/deployenvirons/master/stanford_dev_env.sh

Now run

$ bash stanford_dev_env.sh NOHEROKU 


If there any argument after stanford_dev_env.sh, it won’t install the Heroku tool belt.


NOTE: can we eliminate the 4 'Enter's needed before the Huroku creeds and the 3 after(when creating rsa keys)  and clean up setup, dot files dirs and stanford_dev_env.sh file when done?


ADD THE RSA KEY TO GITHUB
==========================================================

$ cat ~/.ssh/id_rsa.pub 


Go into your GitHub account, then go to and add or update the key for the environment you are using.

       https://github.com/settings/ssh



Now come back to the command line and type in:

$ ssh -T git@github.com


You should see 


Hi [username]! You've successfully authenticated, but GitHub does not provide shell access!


if you’ve added the SSH key successfully.


Note on the 4 manual 'Enters' needed:
==========================================================

1) caused by sudo apt-get install python-software-properties python g++ make
The following NEW packages will be installed:
  binutils cpp cpp-4.8 g++ g++-4.8 gcc gcc-4.8 libasan0 libatomic1 libc-dev-bin libc6-dev libcloog-isl4 libgcc-4.8-dev libgmp10 libgomp1 libisl10 libitm1 libmpc3 libmpfr4 libquadmath0
  libstdc++-4.8-dev libtsan0 linux-libc-dev make manpages-dev python-software-properties
0 upgraded, 26 newly installed, 0 to remove and 66 not upgraded.
Need to get 27.3 MB of archives.
After this operation, 101 MB of additional disk space will be used.
Do you want to continue? [Y/n]

2) sudo add-apt-repository ppa:chris-lea/node.js
update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
Setting up make (3.81-8.2ubuntu3) ...
Setting up manpages-dev (3.54-1ubuntu1) ...
Setting up python-software-properties (0.92.37.1) ...
Processing triggers for libc-bin (2.19-0ubuntu6) ...
 Evented I/O for V8 javascript. Node's goal is to provide an easy way to build scalable network programs
 More info: https://launchpad.net/~chris-lea/+archive/node.js
Press [ENTER] to continue or ctrl-c to cancel adding it

3)
Press [ENTER] to continue or ctrl-c to cancel adding it

gpg: keyring `/tmp/tmpzi963s6j/secring.gpg' created
gpg: keyring `/tmp/tmpzi963s6j/pubring.gpg' created
gpg: requesting key C7917B12 from hkp server keyserver.ubuntu.com
gpg: /tmp/tmpzi963s6j/trustdb.gpg: trustdb created
gpg: key C7917B12: public key "Launchpad chrislea" imported
gpg: Total number processed: 1
gpg:               imported: 1  (RSA: 1)
OK
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following extra packages will be installed:
  libc-ares2 libv8-3.14.5
The following NEW packages will be installed:
  libc-ares2 libv8-3.14.5 nodejs
0 upgraded, 3 newly installed, 0 to remove and 66 not upgraded.
Need to get 1,912 kB of archives.
After this operation, 7,538 kB of additional disk space will be used.
Do you want to continue? [Y/n]

4)
The following NEW packages will be installed:
  build-essential dpkg-dev fakeroot gyp javascript-common libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libc-ares-dev libdpkg-perl libfakeroot
  libfile-fcntllock-perl libjs-node-uuid libssl-dev libssl-doc libv8-3.14-dev node-abbrev node-ansi node-archy node-async node-block-stream node-combined-stream node-cookie-jar
  node-delayed-stream node-forever-agent node-form-data node-fstream node-fstream-ignore node-github-url-from-git node-glob node-graceful-fs node-gyp node-inherits node-ini
  node-json-stringify-safe node-lockfile node-lru-cache node-mime node-minimatch node-mkdirp node-mute-stream node-node-uuid node-nopt node-normalize-package-data node-npmlog node-once
  node-osenv node-qs node-read node-read-package-json node-request node-retry node-rimraf node-semver node-sha node-sigmund node-slide node-tar node-tunnel-agent node-which nodejs-dev
  npm zlib1g-dev
The following packages will be upgraded:
  libssl1.0.0
1 upgraded, 63 newly installed, 0 to remove and 65 not upgraded.
Need to get 5,451 kB of archives.
After this operation, 18.9 MB of additional disk space will be used.
Do you want to continue? [Y/n]

5) (3x Returns- see the last 3 lines)
Cloning into 'dotfiles'...
remote: Reusing existing pack: 39, done.
remote: Total 39 (delta 0), reused 0 (delta 0)
Unpacking objects: 100% (39/39), done.
Checking connectivity... done.
Generating public/private rsa key pair.
Enter file in which to save the key (/home/ubuntu/.ssh/id_rsa):
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 

