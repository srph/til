---
title: ReactJS: A good way to avoid non-dry PropTypes.shape on deeply nested components
---

Let's take these components as an example:

```es6
class GrandParent extends Component {
  render() {
    return <Parent someShape={/* something */} />
  }
}

class Parent extends Component {
  render() {
    return <Child someShape={this.props.shape} />
  }
}

class Child extends Component {
  render() {
    return null;
  }
}
```

If we were to validate `someShape` as `shape`, we would have this:

```es6
class Parent extends Component {
  static propTypes = {
    someShape: PropTypes.shape({ /* */ })
  };
  
  render() {
    return <Child someShape={this.props.shape} />
  }
}

class Child extends Component {
  static propTypes = {
    someShape: PropTypes.shape({ /* */ })
  };
  
  render() {
    return null;
  }
}
```

That wasn't so hard, was it? But it did take us some time to type that out. We could simply do copy-pasta, but copy-pasting stuff may also mean that we're merely making a work-around for long code; and this is also fragile. One change also means that we have to change other components which we copy-pasted the *propType* to.

To sort this out, I've thought using the `shape` *PropType* only to the deepest object in the component hierarchy; and `object` *PropType* for parent components. Of course, things also may vary, depending on the circumstances.
