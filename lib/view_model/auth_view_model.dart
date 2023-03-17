import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:library_app/repository/auth_repository.dart';
import 'package:library_app/shared/utils/routes/routes_name.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.loginApi(data).then((value) {
      Navigator.pushNamed(context, RoutesName.tabsPage);
      setLoading(false);
      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      setLoading(false);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.signUpApi(data).then((value) {
      Navigator.pushNamed(context, RoutesName.tabsPage);
      setLoading(false);
      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      setLoading(false);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
