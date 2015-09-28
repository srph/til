---
title: karma-runner&colon; Global `karma` installation does not read local modules
---

If you installed `karma` to your global installation, and run it for a local project, you'll most likely run into an issue; because `karma` does not read local modules (it won't read your local karma plugins).

You'll get an error similar to below:

```
WARNING! <some-module> count not be found.
```

Instead, to fix this, you should be using [`karma-cli`](http://github.com/karma-runner/karma-cli). Or better yet, use your local karma installation (from `./node_modules/.bin/karma`).

**References**:
- [**Karma can't find the npm modules** (karma-runner/karma #1488)](https://github.com/karma-runner/karma/issues/1488)
