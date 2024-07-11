import 'book.dart';
import 'loan.dart';
import 'member.dart';

class Library {
  List<Book> books = [];
  List<Loan> loan = [];
  void addBook(Book book) {
    books.add(book);
  }

  void loanBook(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      loan.add(Loan(book, member, DateTime.now()));
    } else {
      print('${book.title} is not available');
    }
  }

  void listBook() {
    print("-----List All Books in Library----");
    for (var book in books) {
      print(
          'Title:${book.title},Author : ${book.author}, ISBN : ${book.isbn}, Available : ${book.isAvailable}');
    }
  }

  void listLoanBook() {
    print("-----List All LoanBooks in Library----");
    for (var loans in loan) {
      print(
          'Title:${loans.book.title},Author : ${loans.book.author}, ISBN : ${loans.book.isbn}, Available : ${loans.book.isAvailable}');
    }
  }
}
