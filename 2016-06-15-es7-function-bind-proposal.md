---
title: ES7 Function Bind Proposal
---

The current proposal is pretty neat, implemented by BabelJS.

```es6
class RegistrationForm extends React.Component {
  render() {
    return (
      <form>
        { /* .. */ }
        <RegistrationFormButton onSubmitHandle={this._handleSubmit.bind(this)} />
      </form>
    );
  }
}
```

The above is an impractical example of function binding in ES6. How neater can this get with the ES7 Function Bind proposal?

```es6
class RegistrationForm extends React.Component {
  render() {
    return (
      <form>
        { /* .. */ }
        <RegistrationFormButton onSubmitHandle={::this._handleSubmit} />
      </form>
    );
  }
}
```

**Other Links**:
- [`zenparsing/es-function-bind`](https://github.com/zenparsing/es-function-bind)
- [Function Bind - BabelJS Blog](http://babeljs.io/blog/2015/05/14/function-bind/)
