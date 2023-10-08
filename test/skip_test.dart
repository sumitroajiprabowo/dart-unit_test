/// Skip Test di Dart
/// Skip Test di dart digunakan untuk menonaktifkan test case tertentu
/// Skip Test di dart menggunakan package test/scaffolding.dart
/// Skip Test di dart menggunakan skip()
/// skip() digunakan untuk menonaktifkan test case tertentu
/// Untuk lebih jelasnya bisa cek dokumentasi skip() di https://pub.dev/documentation/test/latest/test/skip.html


// @Skip("Skip this test because it's not implemented yet") // skip test case all test

// example skip test

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
  }, skip: true); // skip test case with skip: true or skip: "reason"
}