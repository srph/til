---
title: ReactJS: sub-renders
---

*Sub*-`render` methods are used to isolate logical chunks of component UI. More on [*planningcenter/react-patterns*](https://github.com/planningcenter/react-patterns#sub-render).

```es6
class YesOrNo extends Component {
  render() {
    const { value } = this.props; /* insert random */;
    return (
      <section>
        <h1> Yes / No: </h1>
        { random ? 'Yes' : 'No' }
      </section>
    );
  }
}
```

The example above is pretty self-explanatory. Testing the example shou should be easy. But, take it into consideration that in real-world projects, there are more complex statements compared to this one.

To isolate this and write more elegant code, we can place the logic in a method.

```es6
class YesOrNo extends Component {
  render() {
    const { value } = this.props; /* insert random */;
    return (
      <section>
        <h1> Yes / No: </h1>
        {this.renderValue()}
      </section>
    );
  }
  
  renderYesNo() {
    if ( this.props.value ) {
      return <Yes />;
    }
    
    return <No />;
  }
}
```

This also makes the code easier to read.

Although, I find it arguable that we can make another component to isolate the UI logic.

**References**:
- [*planningcenter/react-patterns*](https://github.com/planningcenter/react-patterns#sub-render)
