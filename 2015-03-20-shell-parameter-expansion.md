---
title: Shell Parameter Expansion
---

Shell allows default-value for undefined or missing arguments.

In our following examples, we'll use PHP's CLI-SAPI.

There are a few of ways of determining. First, in some instances we can to check if there were any arguments provided (at all). If none, we can assign it accordingly.

```bash
if [ $# -e 0 ]; then
  $1=8080
fi

php -S localhost:$1
```

\* `$#` is equal to the number of arguments provided.

Or we can try to check if the first argument was provided:

```bash
if [ $1 == "" ]; then
  $1=8080
fi

php -S localhost:$1
```

This could be simplified by using [Shell Parameter Expansion](http://www.gnu.org/software/bash/manual/bashref.html#Shell-Parameter-Expansion).

```bash
port = ${1:=8000}
php -S localhost:$port

# or a clean refactor to
php -S localhost:${1:-8000}
```

**Other Links**:
- [GNU - Bash Manual](http://www.gnu.org/software/bash/manual/bashref.html#Shell-Parameter-Expansion)
- [Unix.SE - *How to check if there are no parameters provided to a command*](http://unix.stackexchange.com/questions/25945/how-to-check-if-there-are-no-parameters-provided-to-a-command)
- [Stack Overflow - *How to write a bash script that takes optional arguments*](http://stackoverflow.com/questions/9332802/how-to-write-a-bash-script-that-takes-optional-input-arguments)
