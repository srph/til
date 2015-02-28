---
title: Arrays can be `return`ed in C
---

Fascinating. Hours ago, I [just understood C's *pointers*, *reference*, and *dereference*](https://github.com/srph/til/blob/master/2015-02-28-c-effin-pointers.md). That said, I really never knew that *C* allows array to be returned from a function.

How stupid, right?

```c
#include <iostream>

char* yolo(void);

int main ()
{
  char* _y = yolo();
  std::cout << *_y; // => H
  return 0;
}

char* yolo(void)
{
  char _x[25] = "HELLO";
  return _x;
}
```

**Other Links**:

- [Stack Overflow - *Is array name a pointer in C*?](http://stackoverflow.com/questions/1641957/is-array-name-a-pointer-in-c)
