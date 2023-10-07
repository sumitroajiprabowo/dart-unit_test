/// Group Function Test di Dart
/// Group function test di dart digunakan untuk mengelompokkan beberapa test case yang memiliki kesamaan
/// Group function test di dart menggunakan package test/scaffolding.dart
/// Group function test di dart menggunakan group()
/// group() digunakan untuk mengelompokkan beberapa test case yang memiliki kesamaan
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
    test("sayHello() function test", (){ // test case
      expect(sayHello("Bob"), "Hello Bob!"); // assertion
    });

    test("sayHello function test", (){ // test case
      var greeting = sayHello("Bob"); // function call
      expect(greeting, "Hello Bob!"); // assertion
    });
  });

  group("dayOfWeek() function test", (){ // group test case

    test("dayOfWeek() function test", (){ // test case
      expect(dayOfWeek(1), "Monday"); // assertion
    });

    test("dayOfWeek function test", (){ // test case
      var day = dayOfWeek(1); // function call
      expect(day, "Monday"); // assertion
    });
  });
}