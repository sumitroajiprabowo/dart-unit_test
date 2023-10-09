import 'package:dart_unit_test/src/book.dart';

class BookRepository {
  void saveBook(Book book) {
    print("Save book $book");
    throw UnsupportedError("Cannot save book");
  }

  void deleteBook(Book book) {
    print("Delete book $book");
    throw UnsupportedError("Cannot delete book");
  }

  void updateBook(Book book) {
    print("Update book $book");
    throw UnsupportedError("Cannot update book");
  }

  void getBook(Book book) {
    print("Get book $book");
    throw UnsupportedError("Cannot get book");
  }

  Book? getBookByID(Book id) {
    print("Get book by id $id");
    throw UnsupportedError("Cannot get book by id");
  }

  void getAllBooks() {
    print("Get all books");
    throw UnsupportedError("Cannot get all books");
  }
}