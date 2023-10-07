/// Setup All Function Test di Dart
/// Setup all function test di dart digunakan untuk melakukan sesuatu sebelum semua test case dijalankan
/// Setup all function test di dart menggunakan package test/scaffolding.dart
/// setUpAll() digunakan untuk melakukan sesuatu sebelum semua test case dijalankan
/// setUpAll() bersifat opsional dan bisa digunakan untuk beberapa test case
/// setUpAll() bisa digunakan untuk beberapa group() yang berbeda
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

  group("sayHello() function test", (){ // group test case
    setUp((){
      print("Test case '${"sayHello() function test"}' is running");
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

    test("dayOfWeek() function test", (){ // test case
      expect(dayOfWeek(1), "Monday"); // assertion
    });

    test("dayOfWeek function test", (){ // test case
      var day = dayOfWeek(1); // function call
      expect(day, "Monday"); // assertion
    });
  });

  group("sum() function test", (){ // group test case
    setUp((){
      print("Test case '${"sum() function test"}' is running");
    });

    test("sum() function test", (){ // test case
      expect(sum(1,2), equals(3)); // assertion
    });

    test("sum function test", (){ // test case
      var result = sum(1,2); // function call
      expect(result, equals(3)); // assertion
    });
  });
}