import 'package:bloc_with_api/constants/text_constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
 const HomeView({Key? key}) : super(key: key);


  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(TextConstants.posts),
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context,index) {
          return const ListTile(
            leading: Icon(Icons.person_rounded),
            title: Text('Title'),
            subtitle:Text('Body'),
          );
        },),
    );
    }
}

