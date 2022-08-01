part of 'posts_bloc.dart';

@immutable
abstract class PostsState {}

class PostsInitial extends PostsState {}

class GetPostsState extends PostsState{

  final List<Post> post;

  GetPostsState(this.post);

}
