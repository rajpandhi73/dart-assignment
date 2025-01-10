class Book
{
  String title;
  String author;
  int publicationYear;

  Book(this.title, this.author, this.publicationYear);

  void displayDetails()
  {
    print("Title: $title");
    print("Author: $author");
    print("Publication Year: $publicationYear");
  }

  bool isOverTenYearsOld()
  {
    int currentYear = DateTime.now().year;
    return (currentYear - publicationYear) > 10;
  }
}

void main()
{
  Book book = Book("The Monk Who Sold His Ferrari", "Robin Sharma", 1999);

  book.displayDetails();

  if (book.isOverTenYearsOld())
  {
    print("The book is over 10 years old.");
  }
  else
  {
    print("The book is less than 10 years old.");
  }
}
