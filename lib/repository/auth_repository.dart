import 'package:library_app/data/network/BaseApiServices.dart';
import 'package:library_app/data/network/NetworkApiServices.dart';
import 'package:library_app/shared/themes/app_url.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.loginApiEndPoint, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.signUpApiEndPoint, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
