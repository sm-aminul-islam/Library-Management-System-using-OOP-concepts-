import 'classes/book.dart';
import 'classes/library.dart';
import 'classes/member.dart';

void main() {
  Book book1 = Book('1984', "George Orwell", "1243", true);
  Book book2 = Book('Got', "Harper Lee", "1244", true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.listBook();

  Member member = Member("Robin", "P2s4");

  library.loanBook(book1, member);
  library.listLoanBook();
}
