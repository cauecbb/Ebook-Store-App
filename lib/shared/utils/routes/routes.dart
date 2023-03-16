import 'package:flutter/material.dart';
import 'package:library_app/shared/utils/routes/routes_name.dart';
import 'package:library_app/view/pages/cart_page.dart';
import 'package:library_app/view/pages/home_page.dart';
import 'package:library_app/view/pages/login_page.dart';
import 'package:library_app/view/pages/signup_page.dart';
import 'package:library_app/view/pages/tabs_page.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.tabsPage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const TabsPage());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomePage());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage());
      case RoutesName.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignupPage());
      // case RouteName.book:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const BookPage());
      case RoutesName.cart:
        return MaterialPageRoute(
            builder: (BuildContext context) => const CartPage());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });
    }
  }
}
