// public with sharing class HelloWorld {
//     public void sayHi() {
//         System.debug('Hello World');
//     }
// }

public with sharing class BookController {
  private Boolen isAvailable;

  public BookController() {
    isAvailable = true;
  }

  public Book__c addBook(String name, Decimal price) {
    Book__c book = new Book__c();
    book.name = name;
    book.Price__c = price;
    return book;
  }

  public static void applyDiscount(Decimal discount) {
    Lisy<Book__c> books = [
      SELECT Name, Price__c
      FROM Book__c
      WHERE Price__c > 50
    ];
    if (books != null && books.size() > 0) {
      for (Book__c b : books) {
        b.Price__c = b.Price__c - (b.Price__c * discount);
      }
    }
    update (books);
  }
}
