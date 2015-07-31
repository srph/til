---
title: ES6: Nested object destructuring does not set parent to a variable
---

The following code, I expect to have variables `x, y, m`.

```es6
const z = {
  x: 1,
  y: {
    m: 1
  }
};

const { x, y: { m } } = z;
```

However, Babel translates this to:

```js
"use strict";

var z = {
  x: 1,
  y: {
    m: 1
  }
};

var x = z.x;
var m = z.y.m;
```

If we wanted to have `m` in our scope, we'll have to destructure it in *another line*:

```es6
const { x, y } = z;
const { m } = y;
```

Haven't fully grasped the specifications.

**Other Links**:
- [Demo - Babel Playground](http://babeljs.io/repl/#?experimental=true&evaluate=true&loose=false&spec=false&code=const%20z%20%3D%20%7B%0A%20%20x%3A%201%2C%0A%20%20y%3A%20%7B%0A%20%20%20%20m%3A%201%0A%20%20%7D%0A%7D%3B%0A%0Aconst%20%7B%20x%2C%20y%3A%20%7B%20m%20%7D%20%7D%20%3D%20z%3B)
