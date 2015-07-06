---
title: React Router: 1.0.0 <NotFoundRoute />
---

The 1.0.0 update includes the removal of the `NotFoundRoute` component.

We can use `path="*"` for the 404`` route.

```js
<Route component={Application}>
   <Route path="/" component={Index} />
   <Route path="*" component={NotFound} />
</Route>
```

I have no idea why this isn't in the docs.

**References:**
- [**Is DefaultRoute deprecated for 1.0.0** - React Router Issues](https://github.com/rackt/react-router/issues/1414#issuecomment-116041102)
