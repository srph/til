---
title: npm&colon; `browser` prop in `package.json` 
---

Module bundlers such as browserify and webpack supports the `browser` prop in `package.json`; they use the `browser` prop by default, and falls back to the `main`.

This allows us to support *isomorphic* packages.

```json
{
  "name": "cookie-dough",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "browser": "browser.js",
}
```
<sup>As seen from [**change/cookie-dough** /`package.json`](https://github.com/change/cookie-dough/blob/master/package.json)</sup>.

Very cool.

**References**:
[**browser field spec for package.json** | Gist](https://gist.github.com/defunctzombie/4339901)
