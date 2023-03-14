class BookModel {
  final String image;
  final String title;
  final String autor;
  final String price;

  const BookModel({
    required this.image,
    required this.title,
    required this.autor,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'title': title,
      'autor': autor,
      'price': price,
    };
  }

  factory BookModel.fromMap(Map<String, dynamic> map) {
    return BookModel(
      image: map['image'] ?? '',
      title: map['title'] ?? '',
      autor: map['autor'] ?? '',
      price: map['price'] ?? '',
    );
  }
}
