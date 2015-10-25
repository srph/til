---
title: Sass: Adding rule to mixins
---

This code in Sass has always intimidated me.

```sass
.yolo-swag {
  color: blue;
  
  @include breakpoint($screen) {
    color: red;
  }
}
```

It's an awesome feat. Mixins can use `@content` to get its rules. Here's a basic implementaiton for the above:

```sass
@mixin breakpoint($size) {
  @media(min-width: $size) {
    @content
  }
}
```
