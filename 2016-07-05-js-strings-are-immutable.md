---
title: JS: Strings are immutable
---

Obviously, this means that modifying strings won't work. Take this code as an example

```js
var str = 'pogi';
console.log(str[0]); // p
```

It works, right? But let's try to play around and set the character at position `0` to something else.

```js
str[0] = str[str.length - 1];
console.log(str[0]); // p
```
