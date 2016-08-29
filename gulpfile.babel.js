
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



// var sass = require('gulp-sass');
gulp.task('styles', () => {
  return gulp.src(['scss/main.scss'])
    .pipe( $.print() )
    .pipe( $.plumber() )
    .pipe( $.sourcemaps.init() )
    .pipe($.sass({
      outputStyle: 'expanded',
      precision: 10,
      includePaths: ['.']
    }).on('error', $.sass.logError) )
    .pipe( $.stripCssComments() )
    .pipe(gulp.dest('./assets/css'));
    // .pipe(reload({stream: true}));
});

gulp.task('bump', function(){
  gulp.src('./package.json')
  .pipe($.bump())
  .pipe(gulp.dest('./'));
});

gulp.task('build', ['styles'], ()=> {
  return gulp.src(['assets/js/vendor/*.js', 'assets/js/*.js', '!assets/js/main.min.js'])
    .pipe( $.print() )
    .pipe( $.concat('main.min.js'))
    .pipe( gulp.dest('./assets/js'));
})
