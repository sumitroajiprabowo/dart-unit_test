/// Tear Down All Function Test di Dart
/// Tear down all function test di dart digunakan untuk melakukan sesuatu setelah semua test case dijalankan
/// Tear down all function test di dart menggunakan package test/scaffolding.dart
/// tearDownAll() digunakan untuk melakukan sesuatu setelah semua test case dijalankan
/// tearDownAll() bersifat opsional dan bisa digunakan untuk beberapa test case
/// tearDownAll() bisa digunakan untuk beberapa group() yang berbeda
/// Untuk lebih jelasnya bisa cek dokumentasi group() di https://pub.dev/documentation/test/latest/test/group.html


import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String sayHello(String name) => 'Hello $name!'; // function

// example function dayOfWeek
String dayOfWeek(int day) {
  switch (day) {
    case 1:
      return "Monday";
    case 2:
      return "Tuesday";
    case 3:
      return "Wednesday";
    default:
      return "Unknown";
  }
}

// example function sum
int sum(int a, int b) => a + b;

void main(){
  setUpAll((){
    print("All test case is running");
  });

  tearDownAll((){
    print("All test case is complete");
  });

  group("sayHello() function test", (){ // group test case
    setUp((){
      print("Test case '${"sayHello() function test"}' is running");
    });

    tearDown((){
      print("Test case '${"sayHello() function test"}' is complete");
    });

    test("sayHello() function test", (){ // test case
      expect(sayHello("Bob"), "Hello Bob!"); // assertion
    });

    test("sayHello function test", (){ // test case
      var greeting = sayHello("Bob"); // function call
      expect(greeting, "Hello Bob!"); // assertion
    });
  });
}