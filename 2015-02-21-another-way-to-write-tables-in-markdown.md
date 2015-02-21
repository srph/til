---
title: Another way to write tables in markdown
---

I've always wrote markdown tables by

```
| Tables        | Are           | Cool  |
|:------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |
```

which evaluates to:

| Tables        | Are           | Cool  |
|:------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

And then I found [```rstacruz/til```](https://github.com/rstacruz/til) (which this writing repository was inspired by). I learned that it is also possible to write it by:

````
---
title: yolo pls
---
```

which evaluates to:

![untitled](https://cloud.githubusercontent.com/assets/5093058/6312835/3d2787aa-b9c4-11e4-9235-5f94cb7a280d.png)


<small> * *Notice that the above content is not a parsed markdown, but an image.* </small>

However, it seems to only work when placed on the top (as title, maybe). I have no idea what it's called, though. Maybe, ```table titles``` or ```title table```? I don't know, *heh*.
