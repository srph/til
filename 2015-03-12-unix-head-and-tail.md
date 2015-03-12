---
title: Unix `head` and `tail`
---

`head` and `tail` is pretty awesome. Both grabs lines; `tail` starts from the end, while `head` starts from the beginning. The following example grabs the `3rd` line from the result of `locate`:

```bash
locate my.cnf | head -n3 | tail -n1
```

Breaking it down, in my machine, `locate my.cnf` outputs:

```bash
$ locate my.cnf
/private/etc/my.cnf
/private/etc/my.cnf.bak_
/usr/local/mysql-5.6.22-osx10.8-x86_64/my.cnf
/usr/local/mysql-5.6.22-osx10.8-x86_64/mysql-test/include/default_my.cnf
/usr/local/mysql-5.6.22-osx10.8-x86_64/mysql-test/suite/federated/my.cnf
/usr/local/mysql-5.6.22-osx10.8-x86_64/mysql-test/suite/ndb/my.cnf
/usr/local/mysql-5.6.22-osx10.8-x86_64/mysql-test/suite/ndb_big/my.cnf
/usr/local/mysql-5.6.22-osx10.8-x86_64/mysql-test/suite/ndb_binlog/my
# .. other stuff
```

Okay, awesome. And then we chain it with `head`, with the `-n3` option (which tells, "hey `head`, can you get the first three lines for me?"), using `|` which outputs:

```bash
$ locate my.cnf | head -n3
/private/etc/my.cnf
/private/etc/my.cnf.bak_
/usr/local/mysql-5.6.22-osx10.8-x86_64/my.cnf
```

Lastly, we use `tail`, with the `-n1` option (which says, "hey `tail`, can you get the last line for me?) which outputs:

```bash
$ locate my.cnf | head -n3 | tail -1
/usr/local/mysql-5.6.22-osx10.8-x86_64/my.cnf
```

Awesome &mdash; but useless. In my case, I needed to open the third line with `vi`.

```bash
$ vi $( locate my.cnf | head -n3 | tail -n1 )
```

**Other Links**:
- [Unix.SE - *Open a result of `locate` with `vi`*](http://unix.stackexchange.com/questions/189704/open-a-result-of-locate-with-vi/189714#189714)
