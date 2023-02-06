import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: bookList(),
            ),
          ),
          Container(
            height: 80,
            color: Colors.yellow,
            child: const Text("C2"),
          )
        ],
      ),
    );
  }
}

Widget bookList() {
  return ListView(
    children: <Widget>[
      bookItem(),
      bookItem(),
      bookItem(),
      bookItem(),
      bookItem(),
      bookItem(),
    ],
  );
}

Widget bookItem() {
  return Container(
    height: 120,
    margin: const EdgeInsets.all(5),
    child: Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          child: Image.asset(
            "assets/livro.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    ),
  );
}
