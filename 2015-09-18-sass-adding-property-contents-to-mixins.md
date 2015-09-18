---
title: Sass: Adding property contents to mixins
---

I'm bad at following instructions; I always jump over some sections in any documentation, and usually just take what I think I need.

This code in Sass has always intimidated me.

```sass
@include breakpoint(..) {
  //
}
```
<sup>Taken from Neat</sup>

It's an awesome feat. Mixins can use `@content` to get its contents. Here's a basic implementaiton of the above:

```sass
@mixin breakpoint($size) {
  @media(min-width: $size) {
    @content
  }
}
```
