import 'package:flutter/material.dart';
import 'package:library_app/shared/utils/routes/routes.dart';
import 'package:library_app/shared/utils/routes/routes_name.dart';
import 'package:library_app/view/pages/tabs_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ebook Store',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: "Kadwa",
      ),
      home: const DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
      initialRoute: RoutesName.loginUser,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
