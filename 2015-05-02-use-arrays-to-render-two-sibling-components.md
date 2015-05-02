---
title: Use arrays to render two components
---

At first, it was weird that it's not possible return two sibling components. For instance:

```jsx
class MyComponent extends React.Component {
  render() {
    return (
      <SomeOtherComponent />
      <AnotherComponent />
    );
  }
}
```

To make the example above work, we can wrap it in a friendly element like `span`:

```jsx
class MyComponent extends React.Component {
  render() {
    return (
      <span>
        <SomeOtherComponent />
        <AnotherComponent />
      </span>
    );
  }
}
```

More elaboration on this can be seen on [React #2127](https://github.com/facebook/react/issues/2127#issuecomment-97664589).

A workaround would be returning an array, and adding a `key` prop for *composite* components.

```jsx
class MyComponent extends React.Component {
  render() {
    return [
      <SomeOtherComponent key={0} />
      <AnotherComponent key={1} />
    ];
  }
}
```
