---
title: <label> tag in accessibility
---

I just found out that the `<label>` is a good assistive technology for forms.

```html
<label for="clicked"><input type="checkbox" name="clicked">Clicked?</label>
```

In the example above, clicking anywhere on the label (either the checkbox or the text) will select the checkbox. This makes selecting the tiny checkbox less painful.

This also works for other input types as well.

**Other Links**:
- [**Label elements in forms for use by assistive technology**](http://www.ucop.edu/electronic-accessibility/web-developers/advanced-tips/label-elements-in-forms-for-use-by-assistive-technology.html)
