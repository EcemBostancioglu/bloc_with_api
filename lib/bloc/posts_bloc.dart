import 'package:bloc/bloc.dart';
import 'package:bloc_with_api/model/post.dart';
import 'package:flutter/material.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<PostsEvent>((event, emit) {
    });


  }
}
