import 'package:flutter/material.dart';
import 'package:library_app/view/pages/cart_page.dart';
import 'package:library_app/view/pages/home_page.dart';
import 'package:library_app/view/pages/login_page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3, // número de abas
      child: Scaffold(
        body: TabBarView(
          children: [
            HomePage(),
            CartPage(),
            LoginPage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.shopping_cart),
            ),
            Tab(
              icon: Icon(Icons.perm_identity),
            ),
          ],
          labelColor: Colors.brown,
          unselectedLabelColor: Colors.black38,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.brown,
        ),
      ),
    );
  }
}
