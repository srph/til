---
title: ES6: Destructuring in arguments
---

In ES5, there's no way to directly extract a property from an object argument. Take this as an example,

```js
function g(someObj) {
  var someProp = someObj.someProp;
  // do something with someProp
}
```

We wanted to extract `someProp` from the provided `someObj` argument (object).

In ES6, we can dish it less verbosely with [*Default + Rest + Spread*](http://babeljs.io/docs/learn-es2015/#default-rest-spread),

```es6
function g(someObj) {
  let { someProp } = someObj;
  // do Something wit someProp
}
```

Still, it still looks painful. With ES6's Destructuring, this makes the above examples the easy, easier:

```es6
function g({ someProp }) {
  // do somethin with someProp
}
```

I have never been so thrilled this entire month that I took my time to illustrate something so basic.

**References**:
- [**Destructuring** - *Learn ES2015 - Babel*](http://babeljs.io/docs/learn-es2015/#destructuring)
