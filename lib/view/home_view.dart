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
        body: BlocBuilder<PostsBloc, PostsState>(
          builder: (context, state) {
            if(state is GetPostsState){
              return ListView.builder(
                itemCount:state.post.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.chevron_right),
                    title: Text('${state.post[index].title}'),
                    subtitle: Text('${state.post[index].body}'),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )
    );
  }
}

