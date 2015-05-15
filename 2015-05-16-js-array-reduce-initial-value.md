---
title: JavaScript&#58; [].reduce initial value
---

`reduce` accepts a second argument and uses it as the initial value.

```js
[1, 2, 3].reduce(function(prev, cur) { 
  console.log(prev, cur);
  return cur;
});
```

In the example above, `prev == 1` and `cur == 2` in the first iteration, and it goes on. However, if we add an initial value,

```js
[1, 2, 3].reduce(function(prev, cur) { 
  console.log(prev, cur);
  return cur;
}, 0);
```

`prev == 0`, and `cur == 1` in the first iteration.
