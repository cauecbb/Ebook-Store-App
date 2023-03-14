import 'package:flutter/material.dart';

import '../../../view/pages/book_page.dart';

class BookItem extends StatelessWidget {
  final String image;
  final String title;
  final String autor;
  final double price;

  const BookItem({
    super.key,
    required this.image,
    required this.title,
    required this.autor,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookPage(
                      image: image,
                      title: title,
                      autor: autor,
                      price: price,
                    ),
                  ));
            },
            child: Image.asset(
              image,
              width: 170,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 50,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            autor,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "R\$ $price",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
