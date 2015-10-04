---
title: JS&colon; double-tilde operator and `Math.floor`
---

Interestingly, The double-tilde operator (`~~`) is a double *bitwise NOT operator* that may be used as a replacement for `Math.floor`.

```js
~~2.369 === Math.floor(2.369); // true
```

Some notes to be taken:
- In comparison to  `Math.floor`, some benchmarks show that there's very little to no performance gain with the `~~` operator; and it's slower in some browsers.
- It's not very readable; hides the intention of the code.
  - It's not a widely known usage of the operator
  - It's not semantic.


**Reference**:
- [**Tilde or the Floor? Practical use for JavaScript bitwise operators.** | rochla.la](http://rocha.la/JavaScript-bitwise-operators-in-practice)
