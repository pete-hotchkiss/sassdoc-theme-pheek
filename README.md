# SassDoc Pheek Theme

** WIP so expect stuff to change, but approaching something I'd say is useable in the wild. **

Stylish but agnostic SASSDoc theme built on top of the default theme. Key additional features

* Code examples use custom styling of prism to replicate the code development environment of the Atom.io editor.
* Layout adjusted to search box appears at top of sidebar
* Variables labelled as type colour are previewed both in the body of the documentation and with small disc in lefthand menu


To se the logo which appears top left corner - change the value of the ```code``` property in your ```package.json``` file.

Still to do:

- Render something better with the group headings. Current implementation is way overbearing.
- Clean up the ```<code>``` instances as there's still the odd color/formatting weirdness occurring.
- @todo annotations deserve something nicer.


> **Notes**:
  Current _SassDoc_ instance appears to have bug [464](https://github.com/SassDoc/sassdoc/issues/464) which means anything documented with a _@group_ annotation isn't correctly referenced with an #anchor point. Subsequently, should the items be referenced with a _@see_ annotation the incorrect link is injected into the page.<br><br>There is a pending pull request [PR](https://github.com/SassDoc/sassdoc/pull/465) which fixes this and exposes a ```see.group``` value to the ```see.html.swig``` template file.
