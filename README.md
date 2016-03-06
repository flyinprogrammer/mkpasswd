#mkpasswd

Make it really simple to run the [mkpasswd](https://github.com/rfc1036/whois/blob/next/mkpasswd.c) tool from any host that can run docker.

##Usage:

####Create password with SHA-512 encrpytion
```
$ docker run --rm -it flyinprogrammer/mkpasswd
Password:
$6$aEu1pEzAHXC6W$7jqA/ybnNyZem05RD9JJAYDw30YMH.tVepha2ecjARP5/h6Ee1KGez9P9Jl/wBGeAS8SBbi4x8OO98XwWZqoC.
```

####Getting help
```
$ docker run --rm -it flyinprogrammer/mkpasswd -h
Usage: mkpasswd [OPTIONS]... [PASSWORD [SALT]]
Crypts the PASSWORD using crypt(3).

      -m, --method=TYPE     select method TYPE
      -5                    like --method=md5
      -S, --salt=SALT       use the specified SALT
      -R, --rounds=NUMBER   use the specified NUMBER of rounds
      -P, --password-fd=NUM read the password from file descriptor NUM
                            instead of /dev/tty
      -s, --stdin           like --password-fd=0
      -h, --help            display this help and exit
      -V, --version         output version information and exit

If PASSWORD is missing then it is asked interactively.
If no SALT is specified, a random one is generated.
If TYPE is 'help', available methods are printed.

Report bugs to <md+whois@linux.it>.
```
