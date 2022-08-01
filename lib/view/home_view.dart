import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: (context,index) {
              return const ListTile(
                leading: Icon(Icons.person_rounded),
                title: Text('Title'),
                subtitle:Text('Body') ,
              );
            },
            itemCount:8),
    ),
    );
    }
  }

