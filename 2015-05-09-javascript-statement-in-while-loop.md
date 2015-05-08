---
title: Javascript&#58; Statement in while loop
---

The `while` loop in JavaScript can accept two arguments.

```js
while( <Statement>, <Expression> )
```

This can get in handy to create shorter code.

```js
var x = 0;
while ( ++x, x < 5 );
console.log(x); // 5
```

In a sense, it's also similar to the `for` loop.

Here are some examples that produce the same result when the above code is written to another form.

```js
// for 
for ( var x = 0; x < 5; ++x );

// for v2
for ( var x = 0; ++x < 5; );

// do-while
var x = 0; do { x++; } while(x < 5);

// longer while
var x = 0; while(x < 5) { ++x; }
```

**Other Links**:
- [Gist - snippet for detecting versions of IE](https://gist.github.com/padolsey/527683)
