---
title: ES6 Default Imports
---

\* *I am using [**Babel**](http://babeljs.io/) to transpile my code into vanilla ES5.*

I'm new to ES6, and besides *actually not understanding* `Generators`, `Proxies`, `Reflect API`, and `Symbols`, I was bewildered with the new *API* of `Module`s.

In ES5 or Common.js `require`, we used `exports` (*commonly known* as `module.exports`), like so:

```
// x.js
module.exports = 5;

// y.js
require('./x') // => 5
```

There is a fine line between the difference of *Wildcard import* (`import * as Yolo from './yolo'`) and *Default import* (`import Yolo from './yolo'`).

Let's say we only wanted to import a function from a file named `yolo.js`, excluding (not including) everything else it provides.

```es6
// yolo.es6
export var isYolo = //;
export var hasYolo = //;
export default function(x='yolo') {
  //
}
```

*Wildcard import* does as what it is called -- to return everything (in the form of object, ofc). Okay, that sounded kind of stupid. But first, I thought the mentioned import would not return `default` as the `default` key in the object (`{ default: 'Value' }`) (but it did). And because, second, I thought that Wildcard import would only return the `default` exported value if no other export is found (`function() { /** .... */ }` -- this is how a `function` is output by `console.log`).

Seems like it doesn't (I don't know why I thought of that, though) *yet* (*maybe*). If you're wondering about my Babel version, I'm using [`babel#^4.6.1`, `babel-core#^4.6.6`].

```es6
// wildcard-import.es6
import * as Yolo from './'yolo;
console.log(Yolo); // => { default: [Object], isYolo: [...], hasYolo: [...] };
```

Like we said, we only wanted to get the default value it returns. So, the right way to do it is to use *Default import(.

```es6
// default-import.es6
import Yolo from './yolo';
console.log(Yolo); // => "function"
```

I stumbled upon this tricky *issue* while playing with [React](https://github.com/facebook/react), [*Babel*](https://github.com/babel/babel), and [*Webpack*](https://github.com/webpack/webpack).

**Other Links**:

- [**Babel** :: *Learn ES6* - `Modules`](http://babeljs.io/docs/learn-es6/#modules)
