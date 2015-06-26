---
title: Awesome way to manage documentation for different versions for libraries
---

This isn't limited to libraries, but may also apply for any open-source work (or whatever, actually).

[Atom](https://atom.io) uses Jekyll and makes use of [Collections](http://jekyllrb.com/docs/collections/) for the docs with a structure like this ([see blog post](http://blog.atom.io/2015/06/04/electron-doumentation.html)):

```
electron.atom.io
└── _docs
    ├── latest
    ├── v0.27.0
    ├── v0.26.0
    ├── so on
    └── so forth
```

To elaborate on the details, we can place the `docs` in the main branch, and make a script to compile changes to the folder named the current version (if you're using Git tags or [npm](//npmjs.com) `package.json`, we can use that), and afterwards pushes it to `gh-pages` (if you use it).

It's a pretty awesome idea, I say. Making docs for different versions has always troubled me. I've never thought of this. Now, just a little more research how some open-source rockstars tinker around this problem; React Router might be a good place to start.

**References**:
- [**Electron Documentation** - Atom Blog](http://blog.atom.io/2015/06/04/electron-doumentation.html)
