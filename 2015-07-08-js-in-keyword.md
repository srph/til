---
title: JS: "in" keyword
---

If we want to check if a certain property exists in an object, we can do two things: use `Object.keys`, and then `indexOf`; or use `for in` loop.

```js
var person = {
  name: {},
  location: {},
};

// Let's check if person has or father
Object.keys(person).indexOf('father') !== -1; // false

var hasFather = false;

for ( detail in person ) {
 // although it is a best practice to use Object.hasOwnProperty,
 // we'll omit it for brevity.
  if ( detail === 'father' ) {
    hasFather = true;
    break;
  }
}

hasFather; // false
```

Looks pretty tedious, right? We can also try using the `in` keyword to find if an object has a certain property.

```js
var x = {};

'kier' in x; // false
x.kier = null;
'kier' in x; // true
```
