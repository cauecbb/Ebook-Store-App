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
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "TOTAL",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$4250",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: TextButton(
                    child: const Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
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
            "assets/img/livro.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Título do produto",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const Text(
                "\$200",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        child: const Text("+"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: const Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        child: const Text("-"),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
