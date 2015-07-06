---
title: React Router: 1.0.0 <NotFoundRoute />
---

The 1.0.0 update the removal of the `NotFoundRoute` component.

We can use `path="*"` for the 404 route.

```js
<Route component={Application}>
   <Route path="/" component={Index} />
   <Route path="*" component={NotFound} />
</Route>
```

I have no idea why this isn't in the docs.
