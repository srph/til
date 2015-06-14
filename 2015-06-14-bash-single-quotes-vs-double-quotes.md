---
title: Bash: Single Quotes vs Double Quotes
---

The main difference is that double quotes *can* still parse variables; single quotes can't.

```bash
POGI=(ako) # cause i'm the only one

echo $POGI # 
echo "$POGI" # kier (iykwim)
echo '$POGI' # $POGI
```

Jokes aside (you will most probably understand the jokes if you understand some Tagalog words), the first two would echo out `ako`; the last one would echo `$POGI`.

**Other Links**:
-[**What's the difference between single and double quotes in the bash shell** - How-To Geek](http://www.howtogeek.com/howto/29980/whats-the-difference-between-single-and-double-quotes-in-the-bash-shell/)
