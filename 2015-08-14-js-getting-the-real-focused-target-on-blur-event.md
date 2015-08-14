---
title: JS: Getting the real focused target on blur event
---

I'm feeling lazy, so I'll just copy-paste the whole thing.

> The trick is to wait an extra tick:
```js
$(el).blur(function (event) {
    // If we just hangout an extra tick, we'll find out which element got focus really
    setTimeout(function(){
       document.activeElement; // This is the element that has focus
    },1);
})
```


**References**
- [**Get the clicked object that triggered the blur event** | Stack Overflow](http://stackoverflow.com/questions/11544554/get-the-clicked-object-that-triggered-jquery-blur-event)
