---
title: ReactJS: sub-renders
---

Sub-render methods are used to isolate logical chunks of component UI. More on [*planningcenter/react-patterns*](https://github.com/planningcenter/react-patterns#sub-render).

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

Although, I find it arguable that we can make another component to isolate the UI logic. But this kind of code happens sometimes:

```
import React, { PropTypes } from 'react';

import Empty from './Empty';
import UserDeleteButton from './UserDeleteButton';

export default class UserPanel extends React.Component {
  static propTypes = {
    users: PropTypes.arrayOf(PropTypes.object).isRequired,
    addUser: PropTypes.func.isRequired,
    softDeleteUser: PropTypes.func.isRequired
  };

  constructor(props, context) {
    super(props, context);
  }

  render() {
    const { users, addUser, softDeleteUser } = this.props;

    return (
      <section className="g-col-6">
        <div className="panel">
          {this.renderList()}
        </div>
      </section>
    );
  }

  renderList() {
    const { users, softDeleteUser } = this.props;

    if ( users.length === 0 ) {
      return <Empty addUser={addUser} />
    }

    return (
      <section>
        <h1 className="special-heading" key={0}>Users</h1>
        {users.map((user, i) => {
          return (
            <section className="g-row g-bottom-space" key={1}>
              <section className="g-col-6">{user.username}</section>
              <section className="g-col-6">
                <UserDeleteButton
                  userId={user.id}
                  softDeleteUser={softDeleteUser} />
              </section>
            </section>
          );
        })}
      </section>
    );
  }
}
```

**References*:
- [*planningcenter/react-patterns*](https://github.com/planningcenter/react-patterns#sub-render)
