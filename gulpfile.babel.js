
import gulp from 'gulp';
// var jade = require('gulp-jade');
import gulpLoadPlugins from 'gulp-load-plugins';
// import browserSync from 'browser-sync';
import {stream as wiredep} from 'wiredep';

// const reload = browserSync.reload;
const $ = gulpLoadPlugins(
      { pattern: '*' }
      );

var ace = false;


/*
  TODO - wrap this up so SASS compiles also
Task: styles
Initiated as a pre-task to the minify-css task, this takes all the .scss SASS files and creates the sites css file, applying appropriate browserpre-fixes as needed. Assumes that sourcemaps are required, unless the --production flag is passed.
*/
// var sass = require('gulp-sass');
gulp.task('styles', () => {
  return gulp.src(['scss/main.scss'])
    .pipe( $.print() )
    .pipe( $.plumber() )
    .pipe( $.sourcemaps.init() )
    // .pipe($.sass.sync({
    //   outputStyle: 'expanded',
    //   precision: 10,
    //   includePaths: ['.']
    // }).on('error', $.sass.logError) )
    .pipe($.sass({
      outputStyle: 'expanded',
      precision: 10,
      includePaths: ['.']
    }).on('error', $.sass.logError) )
    .pipe( $.stripCssComments() )
    .pipe(gulp.dest('./assets/css'));
    // .pipe(reload({stream: true}));
});

gulp.task('build', ()=> {
  return gulp.src(['assets/js/vendor/*.js', 'assets/js/*.js', '!assets/js/main.min.js'])
    .pipe( $.print() )
    .pipe( $.concat('main.min.js'))
    .pipe( gulp.dest('./assets/js'));
})
