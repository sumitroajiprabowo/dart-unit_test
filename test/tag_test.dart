/// Tag di Dart
/// Tag di dart digunakan untuk mengelompokkan beberapa test case yang memiliki kesamaan
/// Untuk menggunakan tag, kita bisa menggunakan @Tags() atau tags() atau bisa menggunakan named parameter tags
/// Tag di dart menggunakan package test/scaffolding.dart
/// Untuk lebih jelasnya bisa cek dokumentasi tags() di https://pub.dev/documentation/test/latest/test/tags.html
///
@Tags(['browser'])

import 'package:test/test.dart';

/*
   dart test --tags "browser" // run test case with tag browser
   dart test --tags "chrome" // run test case with tag chrome
   dart test --tags "chrome || firefox" // run test case with tag chrome or firefox
   dart test --tags "chrome && firefox" // run test case with tag chrome and firefox
 */

void main() {
  test('successfully launches Chrome', () {
    // ...
  }, tags: 'chrome');

  test('launches two browsers at once', () {
    // ...
  }, tags: ['chrome', 'firefox']);

  test('successfully launches firefox', () {
    // ...
  }, tags: 'firefox');
}