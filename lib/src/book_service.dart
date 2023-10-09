import 'package:dart_unit_test/src/book.dart';
import 'package:dart_unit_test/src/book_repository.dart';

class BookService {
  final BookRepository _bookRepository;

  BookService(this._bookRepository);

  void saveBook(int id, String title, String author, int year) {
    if(id == 0 || title == "" || author == "" || year <= 0){
      throw Exception("Invalid data");
    }

    _bookRepository.saveBook(Book(id, title, author, year));
  }

  void updateBook(int id, String title, String author, int year) {
    if(id == 0 || title == "" || author == "" || year <= 0){
      throw Exception("Invalid data");
    }

    var book = _bookRepository.getBookByID(Book(id, "", "", 0));
    if(book == null){
      throw Exception("Book not found");
    } else {
      book.title = title;
      book.author = author;
      book.year = year;
      _bookRepository.saveBook(book);
    }
  }

  void getBookByID(int id) {
    var book = _bookRepository.getBookByID(Book(id, "", "", 0));
    if(book == null){
      throw Exception("Book not found");
    } else {
      _bookRepository.getBookByID(book);
    }
  }

  void deleteBook(int id) {
    var book = _bookRepository.getBookByID(Book(id, "", "", 0));
    if(book == null){
      throw Exception("Book not found");
    } else {
      _bookRepository.deleteBook(book);
    }
  }

  void getAllBooks() {
    _bookRepository.getAllBooks();
  }
}