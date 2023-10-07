/// Expect function test di Dart
/// Digunakan untuk melakukan test terhadap function yang ada di dart
/// Expect function test di dart menggunakan package test/expect.dart
/// Expect digunakan untuk melakukan assertion terhadap function yang di test

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String sayHello(String name) => 'Hello $name!'; // function

void main(){
  test("sayHello() function test", (){ // test case
    expect(sayHello("Bob"), "Hello Bob!"); // assertion
  });

  test("sayHello function test", (){ // test case
    var greeting = sayHello("Bob"); // function call
    expect(greeting, "Hello Bob!"); // assertion
  });
}