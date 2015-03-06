---
title: Another way to write tables in markdown
yolo: [Swag]
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

However, it seems to only work when placed on the top (as title, maybe). I have no idea what it's called, though. Maybe, ```table titles``` or ```title table```? I don't know, *heh*. I'm not sure if it works only for ```GFM``` (*Github-Flavored Markdown*), or it is included in the *Markdown* specification.

\* **Edit (3/6/2015)**: By adding brackets to a column, you can wrap it in some panel, like so:

```
---
title: Yolo pls swag
yolo: [Swag]
---
```

Which evaluates to (don't mind the green-colored column, it's just Github's `diff` indicator):

![Col wrapped in a panel](https://cloud.githubusercontent.com/assets/5093058/6520412/4e4f2574-c400-11e4-9d60-d936936c4009.png)
