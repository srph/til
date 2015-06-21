---
title: JavaScript: Enclosing passed callbacks to asynchronous functions in loops in IIFE.
---

It's a good practice to enclose functions declared inside for loops in IIFEs.

```js
for ( let i = 0; i < 5; i++ ) {
  $('marker-' + i).hover(function(evt) {
    $('marker-' + i).css(/* something */);
  });
}
```

Given the above example, what do you think may happen? Obviously, when `.hover` executes, `i` won't have the same value as you expect. Most probably, it'll be the value of `i` at the end of the loop.

This is because the callback provided to `.hover` are processed asynchronously. This means that the value of `i` may have already changed once it is executed.

Wrapping it in a IIFE creates a local variable in the given scope. Which means that `i` outside the IIFE, and `i` inside the IIFE are two different variables.

To fix the above,

```js
for ( let i = 0; i < 5; i++ ) {
  ;(function(i) {
    $('marker-' + i).hover(function(evt) {
      $('marker-' + i).css(/* something */);
    });
  })(i);
}
```

Anyway, we could just have solved this with `$(this)`, lol. Which is more performant besides having less code.

```js
for ( let i = 0; i < 5; i++ ) {
  var $this = $(this);
  
  $this.hover(function(evt) {
    $this.css(/* something */);
  });
}
```

This technique works like a charm for `FileReader` and other functions that execute asynchronously.

Anyway, to test, you could dish this out in your browser console or cli with node:

```js
for ( var i = 0; i < 5; i++ ) {
  console.log('a-' + i);
  setTimeout(function() {
    console.log('b-' + i);
  }, 0);
}
// a-1 .. a-5
// b-5

for ( var i = 0; i < 5; i++ ) {
  console.log('a-' + i);
  ;(function(i) {
    setTimeout(function() {
      console.log('b-' + i);
    }, 0);
  })(i);
}
// a-1 .. a-5
// b-1 .. b-5
```
