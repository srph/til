---
title: ExpressJS: serve-static serves from the given root directory
---

I just wasted 3 golden hours for not reading.

> Create a new middleware function to serve files from within a given root directory

---

Given that we have this directory strucure:

```
|-- folder/
  |-- index.js
|-- dist/
  |-- script.js
```

```js
// folder/index.js
app.use(require('serve-static')(path.join(__dirname, '../dist')));
```

To access `script.js`, we simply have to type in `localhost:<port>/script.js`.

---

**Other Links**:
- [expressjs/**serve-static**](https://github.com/expressjs/serve-static)
