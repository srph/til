---
title: Testing if a Component has Mounted
---

Let's say you have *component* `X` which shows *component* `Y` or *component* `Z` depending on a condition.

```js
// X.jsx
import React from 'react';
import Y from './Y';
import Z from './Z';

export React.createClass({
  render() {
    return (
      this.props.list
        ? <Y data={this.props.list} />
        : <Z />
    );
  }
});
```

This can be tested with [`findRenderedComponentWithType`](https://facebook.github.io/react/docs/test-utils.html#findrenderedcomponentwithtype), available through `TestUtils` (`React.addons.TestUtils`). We can test the above with this code:

```js
// __tests__/X-spec.js
import { expect } from 'chai'
import X from '../X';
import Y from '../Y';
import Z from '../Z';

describe('X component', () => {
  describe('when the list has data', () => {
    it('should show Y', () => {
      var Instance = TestUtils.renderIntoDocument(<Component list={['some', 'items', 'here']}/>);

      expect(() => {
        TestUtils.findRenderedComponentWithType(Instance, Y);
      }).not.to.throw();
    });
  });
  describe('when the list has no data');
});
```

\* <sub> In the code above, I'm using **chai** as my assertion library </sub>

In general, when the docs states that it will throw an error, I'll just test it against that. However, I'm not sure about whether it's a good practice or not.

I hope that you noticed that I did not test the other case wherein *component* `Z` should show. That's up to you now ;).

**Other Links**:
- [**Test Utilities | ReactJS**](https://facebook.github.io/react/docs/test-utils.html#findrenderedcomponentwithtype)
