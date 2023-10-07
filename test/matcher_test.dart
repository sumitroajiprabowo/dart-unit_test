import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'expect_function_test.dart';

/// Matcher package test di Dart
/// Digunakan untuk melakukan test terhadap function yang ada di dart
/// Matcher package test di dart menggunakan package test/matcher.dart
/// Matcher digunakan untuk melakukan assertion terhadap function yang di test
/// Selebihnya bisa cek dokumentasi matcher class di https://pub.dev/documentation/matcher/latest/matcher/matcher-library.html

// example function
String sayHello(String name) => 'Hello $name!';

// example function
String sayGoodbye(String name) => 'Goodbye $name!';

// example function
int sum(int a, int b) => a + b;

void main(){
  test("test sayHello() function with matcher", (){ // test case
    expect(sayHello("Bob"), equals("Hello Bob!")); // equal matcher assertion adalah memastikan value sama dengan value yang diharapkan
    expect(sayHello("Bob"), isNot(equals("Hello Bob"))); // isNot matcher assertion adalah memastikan value tidak sama dengan value yang diharapkan
    expect(sayHello("Bob"), endsWith("!")); // endsWith matcher assertion adalah memastikan value diakhiri dengan value yang diharapkan
    expect(sayHello("Bob"), startsWith("Hello")); // startsWith matcher assertion adalah memastikan value diawali dengan value yang diharapkan
    expect(sayHello("Bob"), contains("Bob")); // contains matcher assertion adalah memastikan value mengandung value yang diharapkan
    expect(sayHello("Bob"), hasLength(10)); // hasLength matcher assertion adalah memastikan value memiliki panjang value yang diharapkan
    expect(sayHello("Bob"), isNotEmpty); // isNotEmpty matcher assertion adalah memastikan value tidak kosong
    expect(sayHello("Bob"), isNotNull); // isNotNull matcher assertion adalah memastikan value tidak null
    expect(sayHello("Bob"), isNot(isNull)); // isNot matcher assertion adalah memastikan value tidak null
    expect(sayHello("Bob"), isA<String>()); // isA matcher assertion adalah memastikan value adalah tipe data yang diharapkan
    expect(sayHello("Bob"), isNot(isA<int>())); // isNot matcher assertion adalah memastikan value bukan tipe data yang diharapkan  });
  });

  test("test sayGoodbye() function with matcher", (){ // test case
    expect(sayGoodbye("Bob"), equals("Goodbye Bob!")); // equal matcher assertion adalah memastikan value sama dengan value yang diharapkan
    expect(sayGoodbye("Bob"), isNot(equals("Goodbye Bob"))); // isNot matcher assertion adalah memastikan value tidak sama dengan value yang diharapkan
    expect(sayGoodbye("Bob"), endsWith("!")); // endsWith matcher assertion adalah memastikan value diakhiri dengan value yang diharapkan
    expect(sayGoodbye("Bob"), startsWith("Goodbye")); // startsWith matcher assertion adalah memastikan value diawali dengan value yang diharapkan
    expect(sayGoodbye("Bob"), contains("Bob")); // contains matcher assertion adalah memastikan value mengandung value yang diharapkan
    expect(sayGoodbye("Bob"), hasLength(12)); // hasLength matcher assertion adalah memastikan value memiliki panjang value yang diharapkan
    expect(sayGoodbye("Bob"), isNotEmpty); // isNotEmpty matcher assertion adalah memastikan value tidak kosong
    expect(sayGoodbye("Bob"), isNotNull); // isNotNull matcher assertion adalah memastikan value tidak null
    expect(sayGoodbye("Bob"), isNot(isNull)); // isNot matcher assertion adalah memastikan value tidak null
    expect(sayGoodbye("Bob"), isA<String>()); // isA matcher assertion adalah memastikan value adalah tipe data yang diharapkan
    expect(sayGoodbye("Bob"), isNot(isA<int>())); // isNot matcher assertion adalah memastikan value bukan tipe data yang diharapkan
  });

  test("test sum function with matcher",(){
    expect(sum(1,2), equals(3)); // equal matcher assertion adalah memastikan value sama dengan value yang diharapkan
    expect(sum(1,2), isNot(equals(4))); // isNot matcher assertion adalah memastikan value tidak sama dengan value yang diharapkan
    expect(sum(1,2), greaterThan(2)); // greaterThan matcher assertion adalah memastikan value lebih besar dari value yang diharapkan
    expect(sum(1,2), greaterThanOrEqualTo(3)); // greaterThanOrEqualTo matcher assertion adalah memastikan value lebih besar atau sama dengan value yang diharapkan
    expect(sum(1,2), lessThan(4)); // lessThan matcher assertion adalah memastikan value lebih kecil dari value yang diharapkan
    expect(sum(1,2), lessThanOrEqualTo(3)); // lessThanOrEqualTo matcher assertion adalah memastikan value lebih kecil atau sama dengan value yang diharapkan
    expect(sum(1,2), isNot(greaterThan(3))); // isNot matcher assertion adalah memastikan value tidak lebih besar dari value yang diharapkan
    expect(sum(1,2), isNot(greaterThanOrEqualTo(4))); // isNot matcher assertion adalah memastikan value tidak lebih besar atau sama dengan value yang diharapkan
    expect(sum(1,2), isNot(lessThan(2))); // isNot matcher assertion adalah memastikan value tidak lebih kecil dari value yang diharapkan
    expect(sum(1,2), isNot(lessThanOrEqualTo(1))); // isNot matcher assertion adalah memastikan value tidak lebih kecil atau sama dengan value yang diharapkan
    expect(sum(1,2), inInclusiveRange(3, 4)); // inInclusiveRange matcher assertion adalah memastikan value berada di dalam range value yang diharapkan
    expect(sum(1,2), inExclusiveRange(2, 4)); // inExclusiveRange matcher assertion adalah memastikan value berada di dalam range value yang diharapkan
    expect(sum(1,2), isNot(inInclusiveRange(4, 5))); // isNot matcher assertion adalah memastikan value tidak berada di dalam range value yang diharapkan
    expect(sum(1,2), isNot(inExclusiveRange(3, 5))); // isNot matcher assertion adalah memastikan value tidak berada di dalam range value yang diharapkan
  });
}
