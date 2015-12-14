---
title: C: switch case ranges
---

C allows switch case ranges, with the syntax:

```c
case LOWVAL … HIVAL:
```

This code:

```c
switch(exp) {
  case 2:
  case 3:
  case 4:
  case 5:
    fprintf(stdout, “Around LOWVAL and HIVAL!”);
  default:
    fprintf(stdout, “OH NOPEw”);
}
```

is equivalent to:

```c
switch(exp) {
  case 2 … 5:
    fprintf(stdout, “Around LOWVAL and HIVAL!”);
  default:
    fprintf(stdout, “OH NOPEw”);
}
```

#### References
- [Linux + Programming (C++)](https://github.com/yuyichao/cs-doc/blob/master/Programming/C_C%2B%2B/Linux%2BProgramming(C%2B%2B).pdf)
