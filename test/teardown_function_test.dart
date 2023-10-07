/// Teardown function test di Dart
/// Teardown function test di dart digunakan untuk melakukan sesuatu setelah test case dijalankan
/// Teardown function test di dart menggunakan package test/scaffolding.dart
/// tearDown() digunakan untuk melakukan sesuatu setelah test case dijalankan
/// setUp() dan tearDown() bersifat opsional dan bisa digunakan untuk beberapa test case
/// setUp() bisa digunakan untuk beberapa group() yang berbeda
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

void main(){
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

  group("dayOfWeek() function test", (){ // group test case
    setUp((){
      print("Test case '${"dayOfWeek() function test"}' is running");
    });

    tearDown((){
      print("Test case '${"dayOfWeek() function test"}' is complete");
    });

    test("dayOfWeek() function test", (){ // test case
      expect(dayOfWeek(1), "Monday"); // assertion
    });

    test("dayOfWeek function test", (){ // test case
      var day = dayOfWeek(1); // function call
      expect(day, "Monday"); // assertion
    });
  });
}