---
title: ES6 arrow syntax is awesome!
---

I am referring to the ES6's current specification's arrow syntax. In which the current syntax 

```js
var x = [1, 2, 3];

var square = function(x) {
  x *= x;
}

x.forEach(square);
```

can be refactored to

```js
var square = (x) => {
  x *= x;
}
```

Awesome, right?

What's even more awesome is you can omit the the parenthesis (```( /** */ )```) for anonymous functions accepting a single argument. In our case, we only accept ```x``` as argument.


```js
var square = x => { x *= x };

// Or we can directly pass the callback, and still produce 1-liner, less, beautiful code.
x.forEach(x => { x *= x });
```

Other Links

- [```esnext/es6-arrow-function```](https://github.com/esnext/es6-arrow-function)
- [MDN - Arrow Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)
