---
title: npm Local Packages
---

**npm** introduced [`Local Paths`](https://docs.npmjs.com/files/package.json#local-paths) as of `v2.0.0`. This solves a few of my problems:

- A file deeply nested no longer has to pave its way *1000* directories up just to `require` a dependency. (For example, configurations)
- We can work on *packages* without having to release them. It's also easier to migrate when a package gets published in the registry.

Another is that it's very easy to do.

First, You'll have to setup (to be installed as package) a `package.json` for the local path to be added.
And lastly, add it as a project dependency to your main `package.json`. To do so, you have two choices:

- `npm install`:

```bash
$ npm install ./foo/bar
```

- Manually add it to the list of dependencies

```json
{
  "name": "baz",
  "dependencies": {
    "bar": "file:./foo/bar"
  }
}
```

**Other Links**:
- [**npm** documentation](https://docs.npmjs.com/files/package.json#local-paths)
