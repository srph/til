---
title: :checked pseudo-class
---

CSS supports the `:checked` *pseudoclass* (`input:checked`), which means we can build awesome stuff like stop/pause, hide/show, or anything similar with CSS alone.

For example,

```html
<!-- index.html -->
<label>
  <input type="checkbox" name="check">
  <span class="text">Hello</span>
</label>
```

```css
.text { opacity: 0; }
input:checked ~ .text { opacity: 1; }
```

The example above allows us to show / hide the "Hello" text depending on the checkbox. [Demo](http://codepen.io/srph/pen/rVwGeo).

**Other Links**:
- [`:checked` | CSS Tricks](https://css-tricks.com/almanac/selectors/c/checked/)