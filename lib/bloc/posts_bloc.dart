import 'package:bloc/bloc.dart';
import 'package:bloc_with_api/core/post_client.dart';
import 'package:bloc_with_api/model/post.dart';
import 'package:meta/meta.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {

  List<Post> posts=[];
  PostClient postClient=PostClient();

  PostsBloc() : super(PostsInitial()) {
    on<PostsEvent>((event, emit) {
    });

    on<GetPostsEvent>((event,emit) async{
      posts=await postClient.getPosts();
      emit(GetPostsState(posts));
    });

  }
}
