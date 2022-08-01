import 'package:dio/dio.dart';

class NetworkClient{

  final Dio dio=Dio();

  final String baseUrl='https://jsonplaceholder.typicode.com/posts';

}