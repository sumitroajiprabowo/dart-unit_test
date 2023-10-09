class Book {
  int id;
  String title;
  String author;
  int year;

  Book(this.id, this.title, this.author, this.year);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          author == other.author &&
          year == other.year;

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ author.hashCode ^ year.hashCode;

}