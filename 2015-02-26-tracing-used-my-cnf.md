---
title: Tracing the my.cnf being used
---

I'm really pondering how to trace the ```my.cnf``` (configuration file) used by **MySQL**, and then I came across this:

```bash
$ mysqld --help --verbose | head -20 > junk.txt
```

This will persist output by ```mysqld``` to the ```junk.txt``` file. To output, use ```cat```.

```
$ cat > junk.txt
```

Which should output something similar to:

```bash
mysqld  Ver 5.6.10 for Linux on x86_64 (MySQL Community Server (GPL))
Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Starts the MySQL database server.

Usage: mysqld [OPTIONS]

Default options are read from the following files in the given order:
/etc/my.cnf /etc/mysql/my.cnf /usr/etc/my.cnf ~/.my.cnf
The following groups are read: mysqld server mysqld-5.6
The following options may be given as the first argument:
--print-defaults        Print the program argument list and exit.
--no-defaults           Don't read default options from any option file,
                        except for login file.
--defaults-file=#       Only read default options from the given file #.
```

As stated, the default configuration files used are:

- ```/etc/my.cnf```
- ```/etc/mysql/my.cnf```
- ```/usr/etc/my.cnf```
- ```~/.my.cnf```

While it is also possible to just print the output instead of persisting it to a file by omitting ```> junk.txt```, like so:

```bash
$ mysqld --help --verbose | head -20
```

If you are using Linux, it's possible to get the same information using the following low-level shell command:

```bash
$ strace -e stat64 mysqld --print-defaults > /dev/null
```

Other Links:
- [DBA.StackExchange - *How to tell which .cnf is read?*](https://dba.stackexchange.com/questions/36889/mysql-5-6-os-x-10-8-how-tell-if-my-cnf-read/36896#36896?newreg=6a4f1a97730f4b6290ec41accfad9228)
- [Google Books - *Understanding MySQL Internals*](https://books.google.com.ph/books?id=vz6PcTdo8VUC&pg=PA81&lpg=PA81&dq=mysqld+head&source=bl&ots=nLBS73JBgi&sig=1vB1l3f8CiGIJVhI9zAPpQkSpa0&hl=en&sa=X&ei=k5_uVKuPGIvd8AWk_YDYBw&ved=0CEUQ6AEwBw#v=onepage&q&f=false)
