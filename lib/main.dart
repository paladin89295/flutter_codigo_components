import 'package:flutter/material.dart';
import 'package:flutter_codigo_components/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xffF29F05)
      ),
      home:HomePage()
    );
  }
}
