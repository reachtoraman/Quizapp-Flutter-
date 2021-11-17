import 'package:flutter/material.dart';
import 'package:quiza_app_flutter/Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: HomePage(),
      theme: ThemeData(primaryColor: Color(0XFF181F26),
      accentColor: Color(0XFF5F6369),
      buttonColor:Color(0XFF5F6369) )
      
    );
  }
}