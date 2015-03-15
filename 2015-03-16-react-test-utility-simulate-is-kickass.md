---
title: React's Test Utility `Simulate` is kickass
---

Coming from [React's Documentation](https://facebook.github.io/react/docs/) on [Test Utilities](https://facebook.github.io/react/docs/test-utils.html):

> Simulate an event dispatch on a DOM node with optional eventData event data. **This is possibly the single most useful utility in ReactTestUtils.**

And is probably the most unarguable statement React has ever noted. This takes away all the frustration from testing implementations in other frameworks.

This allowed me to test `onError` events on `IMG` tags with the component:

```es6
import React from 'react';

/**
 * Self removing <img> when the `src` or image
 * does not load or is unavailable.
 *
 * Usage: (tip: it's how you use the <img> tag, basically)
 * <Img src={} alt={} ../..>
 */
var Img = React.createClass({
  // We'll set `error` to false to load and display the image,
  // only will it be true when an error occurs
  getInitialState() { 
    return { error: false }
  },

  render() {
    // Omit any passed `onError` prop so that
    // it is never overridden by mistake
    var { onError, ...other } = this.props;

    return !this.state.error ? (
      <span>
        <img {...other} onError={this._handleError} />
      </span>
    ) : null;
  },

  /**
   * Set `state` error to true to remove the
   * the dom nodes themselves
   */
  _handleError() {
    this.setState({ error: true });
  }
});

export default Img;
```

with a test suite as simple as:

```js
it('should remove itself when an the image loads with an error', function() {
  var rendered = TestUtils.renderIntoDocument(<Img />);
  var img = TestUtils.findRenderedDOMComponentWithTag(rendered, 'img');
  
  expect(rendered.state.error).toBe(false);
  
  TestUtils.Simulate.error(img);
  expect(rendered.state.error).toBe(true);
});
```

Moreover, you can pass an optional event data (to override some properties in the event data). More on [React's Documentation](https://facebook.github.io/react/docs/test-utils.html)!

**Other Links**:
- [Stack Overflow - *React + Jest - Testing `error` event on `IMG` tags](http://stackoverflow.com/questions/29058211/react-jest-testing-error-event-on-img-tags/29063395#29063395)
- [ReactJS Documentation - Test Utilities](https://facebook.github.io/react/docs/test-utils.html)
