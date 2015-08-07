---
title: High-order functions, First-class functions, First-class values
---

Really, TIL. I wasn't very aware with terms, although I was fully aware and heard of [*High-order components*](https://medium.com/@dan_abramov/mixins-are-dead-long-live-higher-order-components-94a0d2f9e750) by [gaearon (Dan Abramov)](https://github.com/gaearon).

[*High-order functions*](http://www.quora.com/What-is-a-simple-explanation-of-higher-order-functions-and-callbacks-in-JavaScript) are functions that simply take functions as input, and call the function in its process. This concept is particularly popular and most used in [functional programming](https://en.wikipedia.org/wiki/Functional_programming).

A very simple example (an incomplete implementation of the native `forEach`), in JavaScript:

```js
function logEach(array, fn) {
  for ( var i = 0; i < array.length - 1; i++ ) {
    fn(array[i]);
  }
}

var array = [1, 2, 3, 4, 5];
forEach(array, function(value) {
  console.log(value + 2);
});
```

The example above illustrates `forEach` as the high-order function. And the function passed to it is being called by `forEach` to control the output.

To explain what the code above does, it simply runs through the array, and runs `console.log` in each value of the array.

But, wait, how is this related to [*first-class functions*](https://en.wikipedia.org/wiki/First-class_function)?

- *High-order functions* are related to *first-class functions*.
- This is obviously because the function passed to a *high-order function* is called a *first-class function*.
- *First-class* functions are simply functions that can be passed around other function, and also so be assigned to variables.
- *First-class* functions are also *first-class* values because they have the conditions which makes them so.
- *First-class* values are values that can be assigned to variables and also be passed to functions.

But these are basic descriptions or definitions of the terms. This can be different depending on the [context](http://stackoverflow.com/questions/2578872/about-first-second-and-third-class-value).

> Something is *first-class* if it is explicitly manipulable in the code. In other words, something is *first-class* if it can be programmatically manipulated at run-time.

- **ewernli** (user) , [Stack Overflow](http://stackoverflow.com/questions/2578872/about-first-second-and-third-class-value)

**References**:
- [**High-order function** | Wikipedia](https://en.wikipedia.org/wiki/Higher-order_function)
- [**First-class function** | Wikipedia](https://en.wikipedia.org/wiki/First-class_function)
- [**About first-,second- and third-class value** | Stack Overflow](http://stackoverflow.com/questions/2578872/about-first-second-and-third-class-value)
- [**What is a simple explanation of high-order functions and callbacks in JavaScript** - Quora](http://www.quora.com/What-is-a-simple-explanation-of-higher-order-functions-and-callbacks-in-JavaScript)
