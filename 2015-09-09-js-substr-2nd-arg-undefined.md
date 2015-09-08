---
title: JS: substr 2nd arg is undefined
---

If the 2nd arg is ommitted, `String.prototype.substring` extracts the string from the (*provided*) starting position to the last one.

```js
var x = 'hello World';

// same
x.substr(5, x.length - 5); // hmm, okay // ' World'
x.substr(5); // good // ' World'
```

**Other Links**:
[MDN - **String.prototype.substring**](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/String/substring)
