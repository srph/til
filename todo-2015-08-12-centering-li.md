---
title: Centering LI
---

UL has nothing to do with the centering, it's its children. To center a list with this markup:

```html
<ul class="some-list">
  <li>Hello</li>
  <li>World</li>
  <li>Hi!</li>
</ul>
```

Simply tweak some of `some-list > li`'s properties:

```css
.some-list {
  > li {
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
}
```

https://css-tricks.com/centering-list-items-horizontally-slightly-trickier-than-you-might-think/
