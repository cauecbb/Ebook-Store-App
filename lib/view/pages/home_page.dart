import 'package:flutter/material.dart';
import 'package:library_app/shared/utils/utils.dart';

import '../widgets/book/book_list_widget.dart';
import '../widgets/category/category_list_widget.dart';
import '../widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFFEE),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            const Search(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Categorias",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 90,
              child: CategoryList(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "Mais lidos",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Utils.flushBarErrorMessage("Not Found", context);
                  },
                  child: const Text("Ver tudo"),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 350,
              child: BookList(
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
