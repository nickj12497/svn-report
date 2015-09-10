# Dependencies
gulp = require('gulp')
sass = require('gulp-sass')
jade = require('gulp-jade')
gutil = require('gulp-util')

# Jade
gulp.task 'jade', (done) ->
  gulp.src './src/**/*.jade', base: 'src'
    .pipe jade {}
    .pipe gulp.dest './dist'

# Sass
gulp.task 'sass', (done) ->
  gulp.src './src/**/*.sass', base: 'src'
    .pipe sass {}
    .pipe gulp.dest './dist'

# Watcher
gulp.task 'watch', ['build'], (done) ->
  gulp.watch './src/**/*.jade', ['jade']
  gulp.watch './src/**/*.sass', ['sass']