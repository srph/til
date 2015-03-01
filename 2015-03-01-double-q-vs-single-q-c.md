---
title: (`Double quotation` vs `single quotation`) marks in C
---

**Legend**:

- `SQ` - *Single* (`''`)
- `DQ` - *Double* (`""`)

Little did I know that C processes `SQ` and `DQ` differently. `SQ` identify a single character (a `char` type), while `DQ` create a string literal.

```cpp
char x = 'x'; // works
char x = "x"; // doesn't work
```

Like mentioned, `DQ` creates a string literal (in this case, a `x` and a `null` terminator(`\0)).

```cpp
char* x = "hello phoWz" //works
char x[5] = "hiPo!"; // works
```

*Out of scope* -- however, in my case, I receive a warning from the first line

```cpp
// warning: conversion from string literal to 'char *' is deprecated
char* x = "hello PhoWz";
```

That means, in C++, assigning a `string` variable to one letter by means of an `SQ` (`'x'`) should throw an error:

```cpp
// error: noo viable conversion from 'char' to 'std::string'
// (aka 'basic_string<char, char_traits<char>, allocator<char> >')
std::string x = 'x'; 
```

**Other Links**:

- [Stack Overflow - *Single Quotes vs Double Quotes in C*](http://stackoverflow.com/questions/3683602/single-quotes-vs-double-quotes-in-c)
