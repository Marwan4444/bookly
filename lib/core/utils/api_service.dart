import 'package:dio/dio.dart';

class ApiService {
  static const String baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio dio;

  ApiService(this.dio);

  Future<Response> get(String endpoint) async {
    var response = await dio.get("baseUrl$endpoint");
    return response.data;
  }
}