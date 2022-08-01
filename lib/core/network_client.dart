import 'package:dio/dio.dart';

class NetworkService{

  final Dio dio=Dio();

  final String baseUrl='https://jsonplaceholder.typicode.com/posts';

}