import 'package:flutter/material.dart';
import 'package:library_app/pages/book_page.dart';

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
            SizedBox(
              height: 90,
              child: categoryList(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "Mais lidos",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text("Ver tudo"),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 350,
              child: bookList(context),
            )
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    padding: const EdgeInsets.only(left: 20),
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

Widget categoryList() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
    ],
  );
}

Widget categoryItem() {
  return Container(
    width: 70,
    height: 70,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: Image.asset(
      "assets/categoria00.png",
    ),
  );
}

Widget bookList(BuildContext context) {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      bookItem(context),
      bookItem(context),
      bookItem(context),
      bookItem(context),
      bookItem(context),
      bookItem(context),
    ],
  );
}

Widget bookItem(BuildContext context) {
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
                  builder: (context) => const BookPage(),
                ));
          },
          child: Image.asset(
            "assets/livro.jpg",
            width: 170,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 60,
          child: Text(
            "Titulo do Livro",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Autor",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "R\$ 200",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )
      ],
    ),
  );
}
