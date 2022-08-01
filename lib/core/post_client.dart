import 'package:bloc_with_api/core/network_client.dart';
import 'package:bloc_with_api/model/post.dart';
import 'package:dio/dio.dart';

class PostClient extends DioClient{

 DioClient dioClient=DioClient();

 Future<List<Post>> getPosts() async{
  List<Post> posts=[];

  try{
   final Response response=await dio.get(dioClient.baseUrl);
   var parsedList=response.data;
   posts=parsedList.map<Post>((e)
   => Post.fromJson(e)).toList();

  }on DioError catch(e){
   print(e);
  }
   return posts;
 }


}