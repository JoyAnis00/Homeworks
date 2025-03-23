void main() {
  Library library = Library();

  library.addBook(Book("Dart Programming", "Author A", "12345"));
  library.addBook(Book("Flutter Development", "Author B", "67890"));
  library.addBook(Book("Data Structures", "Author C", "11121"));

  library.borrowBook("12345");
  library.returnBook("12345");

  var searchResults = library.searchByTitle("Dart");
  for (var book in searchResults) {
    print("Found: ${book.title} by ${book.author}");
  }
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, {this.isAvailable = true});
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("Book '${book.title}' added to the library.");
  }

  bool borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false;
        print("You borrowed '${book.title}'.");
        return true;
      }
    }
    print("Book with ISBN $isbn is not available.");
    return false;
  }

  void returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && !book.isAvailable) {
        book.isAvailable = true;
        print("Book '${book.title}' returned to the library.");
        return;
      }
    }
    print(
        "Invalid return attempt. Book with ISBN $isbn not found or already available.");
  }

  List<Book> searchByTitle(String title) {
    var result = books
        .where((book) => book.title.toLowerCase().contains(title.toLowerCase()))
        .toList();
    if (result.isEmpty) {
      print("No books found with title containing '$title'.");
    }
    return result;
  }
}
