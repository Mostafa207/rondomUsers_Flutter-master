import 'package:dio/dio.dart';
import 'package:random_user_using_api/models/user_model.dart';

class ApiService {
  static var dio = Dio();

  static Future<UserModel> getAll() async {
    var response = await dio.get('https://randomuser.me/api/?results=5');
    return UserModel.getData(response.data);
  }
}
