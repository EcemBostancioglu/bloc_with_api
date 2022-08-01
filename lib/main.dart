import 'package:bloc_with_api/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder:(context,child)
        =>MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeView(),
        ));
  }
}

