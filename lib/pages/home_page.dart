import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        color: const Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            search(),
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: const BorderRadius.all(
        Radius.circular(128),
      ),
    ),
    child: Row(
      children: <Widget>[
        const Icon(Icons.search),
        Container(
          width: 300,
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: "Pesquisar...",
              labelStyle: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.brown,
            ),
          ),
        ),
      ],
    ),
  );
}
