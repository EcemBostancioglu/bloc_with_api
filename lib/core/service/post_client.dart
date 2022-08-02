import 'package:bloc_with_api/core/network_client.dart';
import 'package:bloc_with_api/core/service/i_client_service.dart';
import 'package:bloc_with_api/model/post.dart';
import 'package:dio/dio.dart';

class PostClient extends DioClient implements IClientService {
  @override
  Future<List<Post>> getAllPosts() async {
    List<Post> posts = [];

    try {
      final Response response = await dio.get(baseUrl);
      var parsedList = response.data;
      posts = parsedList.map<Post>((e) => Post.fromJson(e)).toList();
    } on DioError catch (e) {
      print(e);
    }
    return posts;
  }
}
