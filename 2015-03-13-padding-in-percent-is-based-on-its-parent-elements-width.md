---
title: Padding in percent (`%`) is based on its parent element's width
---

Today, I stumbled upon Behance's feed design while re-designing Omai for smaller screens (`<= 480`). I noticed that the item thumbnail retained its proportions although its *height* being resized. I figured why.

After some research, quoting [WMYL](http://www.wmyl.se) from their [article](http://www.wmyl.se/en/blog/proportional-scaling-responsive-boxes-using-just-css),

> Padding in percent IS based on the elements width. So it turns out you actually CAN set the height of an element relative to its own width.

However, what I've noticed is that, it's actually relative to the parent element's width.

We'll be using the html structure for the following examples:

```html
<div class="container">
  <img src="">
</div>
```

For the first example, we'll be basing our code on WMYL's article,

```css
.container {
    position: relative;
    width: 25%;
    padding-bottom: 25%;
    float: left;
    height: 0;
    margin: 1%;
}

img {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
}
```

![Screenshot](https://cloud.githubusercontent.com/assets/5093058/6642678/77eac708-c9e1-11e4-98e8-af3e348803c7.png)

The reason their statement *is* `true` *at first*, *but* not *when* analyzed, is that both `width` and `padding-bottom` of the parent element (`.container`) are using its parent element's (`body`, not to be confused with `.container`) `width`.

In our next example, I fiddled with the code and set the parent element (`.container`) to a fixed `width`. It turns out that it's not proportional *anymore*.

```css
.container {
    position: relative;
    width: 50px;
    padding-bottom: 25%;
    float: left;
    height: 0;
    margin: 1%;
}

img {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
}
```

![Screenshot](https://cloud.githubusercontent.com/assets/5093058/6642677/77e7668a-c9e1-11e4-8841-743621f07e34.png)

A little fact, giving an element a fixed width scales an image to be proportional. However, giving an element a fixed height does not. This is due to the [CSS Box Model specification](http://www.w3.org/TR/CSS2/box.html#margin-properties).

> The [margin] percentage is calculated with respect to the width of the generated box's containing block. Note that this is true for 'margin-top' and 'margin-bottom' as well. If the containing block's width depends on this element, then the resulting layout is undefined in CSS 2.1. (emphasis mine)

To properly fix the example from WMYL, let's alter the html structure a bit, like so:

```html
<div class="container">
  <div class="image-container">
    <img src="">
  </div>
</div>
```

```css
.container {
    /**
     * The proportion we'd like impose.
     * In a lot of situations (especially in responsive), we
     * just set this to 100%, and let our column classes do its
     * thing.
     */
    width: 50px;
}

/**
 * Our `container` during the last examples.
 * All in all, this `container` is actually a *container*
 * element for the image
 */
.image-container {
    position: relative;
    width: 100%;
    
    /**
     * A little explanation for this. We'd
     * set the `height` to 0 since our padding
     * creates the height for us. The reason for
     * this is because padding and margin is relative
     * to our width, but `height` isn't
     */
    height: 0;
    padding-bottom: 100%;
    
    /* Other stuff */
    float: left;
    margin: 1%;
}

img {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
}
```

**Other Links**:
- [WMYL](http://www.wmyl.se/en/blog/proportional-scaling-responsive-boxes-using-just-css)
- [Stack Overflow - *Why are margin/padding percetanges in CSS are always calculated against width*](http://stackoverflow.com/questions/11003911/why-are-margin-padding-percentages-in-css-always-calculated-against-width)
- [Stack Overflow - *How to set the margin or padding as percentage of height or parent container*](http://stackoverflow.com/questions/4982480/how-to-set-the-margin-or-padding-as-percentage-of-height-or-parent-container)
