import 'book.dart';
import 'loan.dart';

class Library {
  List<Book> books = [];
  List<Loan> loan = [];
  void addBook(Book book) {
    books.add(book);
  }

  void listBook() {
    print("-----List All Books in Library----");
    for (var book in books) {
      print(
          'Title:${book.title},Author : ${book.author}, ISBN : ${book.isbn}, Available : ${book.isAvailable}');
    }
  }
}
