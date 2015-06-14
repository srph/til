---
title: Backticks
---

Backticks (``` `` ```) are used as substitution in Bash, similar to `$()`.

```bash
FILES=$(ls)
FILES2=`ls`

if [ "$FILES" == "$FILES2" ]; then
  echo "FILES and FILES2 are the same"
fi
```

The code above should echo out `"FILES and FILES2 are the same"`.

**Other Links**:
- [Variables - Learn Shell](http://www.learnshell.org/en/Variables)
