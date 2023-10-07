/// Platform selector test di Dart
/// Platform selector test di dart digunakan untuk melakukan test terhadap platform yang digunakan
/// Platform selector test menggunakan annotation @TestOn()
/// @TestOn() digunakan untuk menentukan platform yang digunakan untuk menjalankan test case
/// Untuk lebih jelasnya bisa cek dokumentasi @TestOn() di https://pub.dev/documentation/test/latest/test/TestOn-class.html
/// Platform selector mendukung operator && dan || untuk menentukan platform yang digunakan
/// Platform yang bisa digunakan untuk @TestOn() adalah: VM, Chrome, Node.JS, Content Shell, PhantomJS, Firefox, Safari, dan IE

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

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