# SSH-Utility
I was extremely tired of entering my password over and over again
as i log into different hosts.  Some hosts I'd have to wait a while
for the password prompt to show up and it would time out because I
was too slow to enter my password.  Also, with the introduction of 
duo, it just added further steps for me to perform for each and every
host i'd like to log into.

I decided I'd wasted enough time on logging in, so i decided to write 
this utility.  This utility will not only log you into a shell host, 
it will allow referencing aliases using globs, it will automatically 
send a duo prompt if needed and it will log you in as another user if 
needed.

Git clone this repo then symlink it to usr sbin so you don't need an
absolute path everytime.

`ln -s $(pwd)/_ssh /usr/local/bin/_ssh`

`_ssh --help`
- -t|--time-out
  - set the ping timeout
- -ld|--list-defaults
  - print out all the default values stored in sqllite
- -sd|--set-default
  - set or override a default value key=value
- -y|--yes
  - answer yes to all prompts
- -cp|--change-password
  - change a password with no arguments changes global password used else add host and optionally user
- -q|--query
  - dont ssh just show results that come up
- -aa|--add-alias
  - add an alias to show up in query ip=alias

`_ssh --change-password`

`_ssh --add-alias 172.21.19.5=test`

`_ssh -q test`
- `172.21.19.5|test`

`_ssh test`
- `trying to ssh into 172.21.19.5`

   `spawn ssh 172.21.19.5`

   `Password:` 
   
   `[notaws] [<user>@<host> ~]$ sudo su - root`
   
   `[notaws] [<user>@<host> ~]# `
