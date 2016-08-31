![alt text]( https://github.com/pete-hotchkiss/sassdoc-theme-pheek/raw/master/header.png "heading")
# Sassdoc Pheek Theme
A stylish but agnostic SASSDoc theme with heavy focus on rendering code examples.

- Code examples styled to match atom.io One Dark Theme
- SASS filenames for easy reference
- Previews for colours both in the main body of the documentation and in the sidebar navigation

**TODO**
Still a couple of things I want to tidy up before this hits 1 dot release
- Fix the inconsistent left alignment of annotation details
- Use FontAwesome icons for _function_, _variable_ and _mixin_ labels on the @see and @usedby annotation blocks

Let me know if you find any other display quirks and I'll patch 'em. If you end up using the theme - thanks - and ping me a link. I'm [@petehotchkiss](http://twitter.com/petehotchkiss) on Twitter

![alt text](https://github.com/pete-hotchkiss/sassdoc-theme-pheek/raw/master/example.png "Code Example")

## Up and running...
Assuming you even know what Sassdoc is, and already have the bad-boy installed. Install the theme via ```npm```

```
npm i --save sassdoc-theme-pheek
```

Depending on which way your skinning your configuration cat, change the theme value to ```pheek```

### Using gulp

```javascript
gulp.task('sassdoc', function () {
  var options = {
    dest: 'docs',
    verbose: true,
    theme: 'pheek',
    display: {
      alias: true
    }
  };

  return gulp.src('path/to/you/sass/files/**/*.scss')
    .pipe($.sassdoc(options));
});

```

### Using sassdoc.config file
```json
{
  "dest": "destination/path",
  "verbose": true,
  "theme": "pheek",
  "display": {
    "alias": "true"
  },
  "groups": {
    "groupname": "display name",
  }
}

```

## Changing display items

### Logo
The theme will look automatically for a file called your_logo.svg in the __assets/images__ folder of where your docs are built to. To change this, edit the ```package.json``` file, amending the
 ```logo``` property to your prefered file name.


## Other stuff you should read
> **Note**:
  Current _SassDoc_ instance appears to have bug [464](https://github.com/SassDoc/sassdoc/issues/464) which means anything documented with a _@group_ annotation isn't correctly referenced with an #anchor point. Subsequently, should the items be referenced with a _@see_ annotation the incorrect link is injected into the page.<br><br>There is a pending pull request [PR](https://github.com/SassDoc/sassdoc/pull/465) which fixes this and exposes a ```see.group``` value to the ```see.html.swig``` template file. Once this PR is authorsied this theme will automatically pick up the feature and the linking will work correctly on your next documentation generation.
