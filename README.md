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

`ln -s $(pwd)/yssh /usr/local/bin/yssh`

`yssh --help`
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

`_ssh --add-alias <ip>=test`

`_ssh -q test`
- `<ip>|test`

`yssh test`
- `trying to ssh into x.x.x.x`

   `spawn ssh x.x.x.x`

   `Password:`

   `[notaws] [<user>@<host> ~]$ sudo su - root`
