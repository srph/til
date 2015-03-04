---
title: ng-selected
---

In Angular, `<select>` elements with dynamically created `<option>`s (for instance, created with `ng-repeat`) are not automatically selected (although its `value` matches with the model (`ng-model`)); it do not work quite as expected.

An example:

```js
// script.js
$scope.numbers = [
  {name: 'One', value: '1'},
  {name: 'Two', value: '2'},
  {name: 'Three', value: '3'},
  {name: 'Four', value: '4'},
  {name: 'Five', value: '5'}
];

$scope.myModel = '5';
```

```html
<!-- index.html -->
<select ng-model="myModel">
  <option value=""> Select a value.. </option> <!-- placeholder in case `my-model` is undefined -->
  <option ng-repeat="n in numbers" value="{{ n.value }}"> {{ n.name }} </option>
</select>
```

In our example above, which `<option>` did you expect to be `selected`?

`Five`? Nope, wrong! `Select a value..`, our placeholder, was selected. Here's a [plnkr](http://plnkr.co/edit/AOYearntng4YAtYgKq3K?p=preview) to demonstrate. But why? This was quite tricky at first. I thought it was a bug, and then I found out [`ngSelected`](https://docs.angularjs.org/api/ng/directive/ngSelected). Is this by design (or a workaround)? Probably by design due to the existnce of `ngSelected`.

To fix the example above:

```js
// script.js
$scope.numbers = [
  {name: 'One', value: '1'},
  {name: 'Two', value: '2'},
  {name: 'Three', value: '3'},
  {name: 'Four', value: '4'},
  {name: 'Five', value: '5'}
];

$scope.myModel = '5';
```

```html
<!-- index.html -->
<select ng-model="myModel">
  <option value=""> Select a value.. </option> <!-- placeholder in case `my-model` is undefined -->
  <option ng-repeat="n in numbers" value="{{ n.value }}" ng-selected="n.value == myModel"> {{ n.name }} </option>
</select>
```

**Other Links**:

- [Angular Documentation - `ngSelected`](https://docs.angularjs.org/api/ng/directive/ngSelected)
- [Stack Overflow - *Dynamic `<option>`s are not being properly selected*](http://stackoverflow.com/questions/28851405/angularjs-dynamic-options-not-being-properly-selected-by-default)
- [Demo (plnkr)](http://plnkr.co/edit/AOYearntng4YAtYgKq3K?p=preview)
