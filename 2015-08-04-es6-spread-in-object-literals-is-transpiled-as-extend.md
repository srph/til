---
title: ES6: Spread in object literals
---

Spead in object literals, like the following

```js
const x = {
  y: 5,
  z: 2
};

const a = {
  ...x,
  z: 5
};
```

is simply synactic sugar for `Object.assign` or `extend`.

```
const a = Object.assign({}, x, { z: 5 });
```
