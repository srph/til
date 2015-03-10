---
title: Date in Firefox does not support dashes (-)
---

For no reason that I know of, Firefox does not support dashes (`-`) with their `Date.parse` or `Date` implementation; it results to `NaN`.

```js
Date.parse('11-23-1996'); // NaN
Date.parse('11/23/1996') // <insert timestamp here>

new Date('11-23-1996'); // NaN
new Date('11/23/1996') // <insert timestamp here>
```

In this case, it's a good idea to replace the dashes (`-`) with slashes (`/`) before passing to the `Date` constructor (`new Date(..)`) or `Date.parse` by using a regex pattern like `/\-/g`.

```js
var date = '11-23-1996';

Date.parse( date.replace(/\-/g, '/') );
new Date( date.replace(/\-/g, '/') );
```

**Other Links**:
- [Stack Overflow - *Date.parse results in NaN*](http://stackoverflow.com/questions/11516332/date-parse-results-in-nan)
- [Mozilla Developer Network - *Javascript/Date*](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)
