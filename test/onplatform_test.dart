/// Platform Specific Configuration test di Dart
/// Platform Specific Configuration test di dart digunakan untuk melakukan konfigurasi test case berdasarkan platform yang digunakan
/// Saat menggunakan @Skip secara otomatis tidak akan dijalankan di semua platform
/// Untuk mengatur platform yang bisa menjalan unit testnya kita menggunakan OnPlatform()
/// OnPlatform() digunakan untuk menentukan platform yang digunakan untuk menjalankan test case
/// Untuk lebih jelasnya bisa cek dokumentasi OnPlatform() di https://pub.dev/documentation/test/latest/test/OnPlatform-class.html

// example platform specific configuration test
@OnPlatform({
  "windows": Skip("Skip this test because it's not supported on Windows"),
  // "mac-os": Skip("Skip this test because it's not supported on Mac OS"),
  "linux": Skip("Skip this test because it's not supported on Linux"),
  "android": Skip("Skip this test because it's not supported on Android"),
  "ios": Skip("Skip this test because it's not supported on iOS"),
  "browser": Skip("Skip this test because it's not supported on Browser"),
})

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