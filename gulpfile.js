'use strict';

var gulp = require('gulp'),
	karma = require('karma').server,
	operation = require('./operationalyzer'),
	jsufon = require('./jsufonify'),
	bakeOpOrder = require('./bakeOpOrder'),
	argv = require('yargs').argv;

var $ = require('gulp-load-plugins')({
  pattern: ['gulp-*']
});

gulp.task('clean-dist', function() {
	return gulp.src('dist', { read: false })
		.pipe($.rimraf());
});

gulp.task('build:free', function() {
	return gulp.src('src/**/*.coffee')
		.pipe($.coffee({bare: true}).on('error', $.util.log))
		.pipe(operation())
		.pipe($.concat('font_free.json'))
		.pipe(jsufon(true))
		.pipe(gulp.dest('dist/'));
});

gulp.task('build', function() {
	return gulp.src('src/**/*.coffee')
		.pipe($.coffee({bare: true}).on('error', $.util.log))
		.pipe(operation())
		.pipe($.concat((argv.output || 'font') + '.json'))
		.pipe(jsufon(false, argv.subset))
		.pipe(bakeOpOrder())
		.pipe(gulp.dest('dist/'));
});

gulp.task('copy', ['clean-dist'], function() {
	return gulp.src('src/**/*.js')
		.pipe(gulp.dest('dist'));
});

gulp.task('lint', function() {
	return gulp.src(['src/**/*.js'])
		.pipe($.size())
		.pipe($.jshint())
		.pipe($.jshint.reporter('jshint-stylish'))
		.pipe($.jshint.reporter('fail'));
});

gulp.task('test', ['lint', 'build'], function(done) {
	karma.start({
		configFile: __dirname + '/karma.conf.js',
			singleRun: true
		}, done);
});

gulp.task('watch', function() {
	gulp.watch(['src/**/*'], ['build']);
});
