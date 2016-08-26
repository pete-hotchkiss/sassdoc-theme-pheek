# SassDoc Pheek Theme

WIP so expect stuff to change, but approaching something I'd say is useable in the wild.

Still to do:

- Render something better with the group headings. Current implementation is way overbearing.
- Clean up the ```<code>``` instances as there's still the odd color/formatting weirdness occurring.
- @todo annotations deserve something nicer.


> **Notes**:
  Current _SassDoc_ instance appears to have bug ( link to issue number ) which means anything documented with a _@group_ annotation isn't correctly referenced with an #anchor point. Subsequently, should the items be referenced with a _@see_ annotation the incorrect link is injected into the page.<br><br>There is a pending pull request (??) which fixes this and exposes a ```see.group``` value to the ```see.html.swig``` template file.
