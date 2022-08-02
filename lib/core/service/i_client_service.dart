import 'package:bloc_with_api/model/post.dart';

abstract class IClientService {
  Future<List<Post>> getAllPosts();
}
