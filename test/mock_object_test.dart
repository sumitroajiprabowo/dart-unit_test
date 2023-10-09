import 'package:dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/scaffolding.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main() {
  var bookRepository = MockBookRepository();
  var bookService = BookService(bookRepository);

  group("saveBook() function test", () {
    setUp(() {
      print("Test case '${"saveBook() function test"}' is running");
    });

    tearDown(() {
      print("Test case '${"saveBook() function test"}' is complete");
    });

    test("saveBook() function test", () {
      bookService.saveBook(1, "Dart Programming", "Bob", 2021);
      verify(bookRepository.saveBook(Book(1, "Dart Programming", "Bob", 2021)));
    });

  });
}