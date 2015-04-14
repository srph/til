---
title: Colorful World with console.log
---

JavaScript's `console.log` supports *substitution string* `%c` which can be used to print output with a different color. For example,

```
console.log('%c√ Success!', 'color: green', 'should be true');
```

results to:

![screen shot 2015-04-14 at 7 21 26 am](https://cloud.githubusercontent.com/assets/5093058/7127452/0c928b7c-e277-11e4-83c9-651c598ddb4f.png)

**Edit (hours later)**:

Looks like there's more to it, as seen [here](https://plus.google.com/+AddyOsmani/posts/TanDFKEN9Kn). It seems that Chrome and Firebug allows styling with `%c` since long ago.

![screen shot 2015-04-14 at 9 49 42 am](https://cloud.githubusercontent.com/assets/5093058/7128932/e97baa32-e28b-11e4-935e-0949f4e7fd1d.png)

> Taken from Facebook's Homepage

**Other Links**:
- [**MDN** - `Console.log`](https://developer.mozilla.org/en-US/docs/Web/API/Console/log)
- [**ryanflorence/react-training** - `tests.js`](https://github.com/ryanflorence/react-training/blob/gh-pages/code/ContentToggler/tests.js)
