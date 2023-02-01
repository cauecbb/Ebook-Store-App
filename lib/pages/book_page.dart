import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.brown[50],
        child: const Center(
          child: Text("Detalhes do Livro"),
        ),
      ),
    );
  }
}
