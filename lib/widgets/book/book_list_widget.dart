import 'package:flutter/material.dart';

import 'book_item_widget.dart';

class BookList extends StatelessWidget {
  final Axis scrollDirection;
  const BookList({super.key, required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrollDirection,
      children: const [
        BookItem(
          autor: 'Robert C. Martin',
          image: 'assets/img/livro.jpg',
          price: 145,
          title: 'Clean Code',
        ),
        BookItem(
          autor: 'Robert C. Martin',
          image: 'assets/img/livro.jpg',
          price: 145,
          title: 'Clean Code',
        ),
        BookItem(
          autor: 'Robert C. Martin',
          image: 'assets/img/livro.jpg',
          price: 145,
          title: 'Clean Code',
        ),
        BookItem(
          autor: 'Robert C. Martin',
          image: 'assets/img/livro.jpg',
          price: 145,
          title: 'Clean Code',
        ),
        BookItem(
          autor: 'Robert C. Martin',
          image: 'assets/img/livro.jpg',
          price: 145,
          title: 'Clean Code',
        ),
      ],
    );
  }
}
