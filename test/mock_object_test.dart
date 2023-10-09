import 'package:dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main() {
  var bookRepository = MockBookRepository();
  var bookService = BookService(bookRepository);

  group("Book function test", () {
    setUp(() {
      print("Test case is running");
    });

    tearDown(() {
      print("Test case is complete");
    });

    test("saveBook() function test", () {
      bookService.saveBook(1, "Dart Programming", "Bob", 2021);
      verify(bookRepository.saveBook(Book(
          1, "Dart Programming", "Bob", 2021))).called(1);
    });

    test("updateBook() function test", () {
      when(bookRepository.getBookByID(Book(1, "", "", 0)))
          .thenReturn(Book(1, "Dart Programming", "Bob", 2021));
      bookService.updateBook(1, "Dart Programming", "Bob", 2021);
      verify(bookRepository.saveBook(Book(
          1, "Dart Programming", "Bob", 2021))).called(1);
    });

    test("getBookByID() function test", () {
      when(bookRepository.getBookByID(Book(1, "", "", 0)))
          .thenReturn(Book(1, "Dart Programming", "Bob", 2021));
      bookService.getBookByID(1);
      expect(bookRepository.getBookByID(Book(1, "", "", 0)),
          Book(1, "Dart Programming", "Bob", 2021));
      verify(bookRepository.getBookByID(Book(1, "", "", 0))).called(3);
    });

    test("getBookByID() with Matcher", () {
      when(bookRepository.getBookByID(any))
          .thenReturn(Book(1, "Dart Programming", "Bob", 2021));
      bookService.getBookByID(1);
      expect(bookRepository.getBookByID(Book(1, "", "", 0)),
          Book(1, "Dart Programming", "Bob", 2021));
      verify(bookRepository.getBookByID(Book(1, "", "", 0))).called(2);
    });

    test("getBookByID() with Argument Matcher", () {
      when(bookRepository.getBookByID(argThat(
          predicate<Book>((book) => book.id == 333))))
          .thenReturn(Book(333, "Dart Programming", "Bob", 2021));
      bookService.getBookByID(1);
      expect(bookRepository.getBookByID(Book(333, "", "", 0)),
          Book(333, "Dart Programming", "Bob", 2021));
      verify(bookRepository.getBookByID(Book(333, "", "", 0))).called(1);
    });

    test("deleteBook() function test", () {
      when(bookRepository.getBookByID(Book(1, "", "", 0)))
          .thenReturn(Book(1, "Dart Programming", "Bob", 2021));
      bookService.deleteBook(1);
      verify(bookRepository.deleteBook(Book(
          1, "Dart Programming", "Bob", 2021))).called(1);
    });

    test("getAllBooks() function test", () {
      bookService.getAllBooks();
      verify(bookRepository.getAllBooks()).called(1);
    });
  });
}