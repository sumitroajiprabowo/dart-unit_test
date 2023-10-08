/// Retry Test di Dart
/// Retry Test di dart digunakan untuk mengulang test case yang gagal
/// Retry Test di dart menggunakan package test/scaffolding.dart
/// Retry Test di dart menggunakan retry()
/// retry() digunakan untuk mengulang test case yang gagal
/// Untuk lebih jelasnya bisa cek dokumentasi retry() di https://pub.dev/documentation/test/latest/test/retry.html


@Retry(2) // retry all test case with retry: 2

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

// example function sum
int sum(int a, int b) => a + b;

void main(){
  test("sum() function test", (){ // test case
    expect(sum(1, 1), 2); // assertion
  });

  test("sum() function test", (){ // test case
    var result = sum(1, 1); // function call
    expect(result, 2); // assertion
  }, retry: 2); // retry test case with retry: 2
}