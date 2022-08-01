import 'package:bloc_with_api/bloc/posts_bloc.dart';
import 'package:bloc_with_api/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);


  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  void initState() {
    BlocProvider.of<PostsBloc>(context).add(GetPostsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextConstants.posts),
      ),
      body: ListView.builder(
        itemCount:8,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: Icon(Icons.chevron_right),
            title: Text('Title'),
            subtitle: Text('Body'),
          );
        },)
    );
  }
}

