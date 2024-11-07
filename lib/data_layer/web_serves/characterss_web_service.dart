import 'package:bloc_practice/constans/string.dart';

import 'package:dio/dio.dart';

class CharactersWebService {
  late Dio dio;
  CharactersWebService() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
    dio = Dio(options);
  }

  Future<dynamic> getAllCharacters() async {
    try {
      var response = await dio.get("character");

      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
