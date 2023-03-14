import 'package:flutter/material.dart';

import 'category_item_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        CategoryItem(image: 'assets/img/categoria00.png'),
        CategoryItem(image: 'assets/img/categoria00.png'),
        CategoryItem(image: 'assets/img/categoria00.png'),
        CategoryItem(image: 'assets/img/categoria00.png'),
        CategoryItem(image: 'assets/img/categoria00.png'),
      ],
    );
  }
}
