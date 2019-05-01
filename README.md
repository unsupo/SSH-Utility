# SSH-Utility
`ln -s /usr/sbin/_ssh _ssh`

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