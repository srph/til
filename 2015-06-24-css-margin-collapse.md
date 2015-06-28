---
title: CSS: Margin collapse
---

Let's explain this with code and a couple of screenshots.

```css
.block {
  margin-top: 25px;
  margin-bottom: 25px;
  width: 100px;
  height: 100px;
}

.block.-red {
  background: red;
}

.block.-blue {
  background: blue;
}
```

```html
<div class="block -red"></div>
<div class="block -blue"></div>
```

This results to:

![screenshot 2015-06-28 21 36 04](https://cloud.githubusercontent.com/assets/5093058/8396551/894031b4-1ddd-11e5-9e57-783a3e28740a.png)


<sup>Check the [demo here](http://codepen.io/srph/pen/RPxZqy)</sup>

Works, right? But it's not working as we intended. If you'll look closely, the vertical allowance / spacing between the first block and the second block isn't 50px; it's 25px.

This is **Margin collapsing**. More about on [MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/margin_collapsing). TL;DR: When two blocks have intersecting margins, the larger margin is used (and the smaller margin is discarded).

To elaborate:

```css
p {
  margin-top: 10px;
  margin-bottom: 15px;
}

h1 {
  margin-top: 20px;
  margin-bottom: 25px;
}
```

```html
<h1>Hey</h1>
<p>I'm here</p>
```

What would be the margin between the `h1` and `p` element be? It's `25px` just as you were thinking (or maybe not?).
