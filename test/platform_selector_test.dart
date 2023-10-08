/// Platform selector test di Dart
/// Platform selector test di dart digunakan untuk melakukan test terhadap platform yang digunakan
/// Platform selector test menggunakan annotation @TestOn()
/// @TestOn() digunakan untuk menentukan platform yang digunakan untuk menjalankan test case
/// Untuk lebih jelasnya bisa cek dokumentasi @TestOn() di https://pub.dev/documentation/test/latest/test/TestOn-class.html
/// Platform selector mendukung operator && dan || untuk menentukan platform yang digunakan
/// Platform yang bisa digunakan untuk: VM, Chrome, Node.JS, Content Shell, PhantomJS, Firefox, Safari, dan IE, Android, iOS, Windows, dan MacOS
/// Selain itu bisa juga menggunakan nama platform yang tidak terdaftar
/// Untuk lebih jelasnya bisa cek dokumentasi platform selector di https://pub.dev/documentation/test/latest/test/TestOn-class.html


// example platform selector test
@TestOn("windows || mac-os") // global platform selector test for all test case

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String sayHello(String name) => 'Hello $name!'; // function

void main(){
  group("sayHello() function test", (){ // group test case
    test("sayHello() function test", (){ // test case
      expect(sayHello("Bob"), "Hello Bob!"); // assertion
    });

    test("sayHello function test", (){ // test case
      var greeting = sayHello("Bob"); // function call
      expect(greeting, "Hello Bob!"); // assertion
    }, testOn: "windows"); // test only on windows platform
  });
}