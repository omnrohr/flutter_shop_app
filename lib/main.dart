import 'package:flutter/material.dart';
import './constants.dart';
import './screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop app',
      theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          // scaffoldBackgroundColor: Colors.grey,
          primarySwatch: Colors.blue,
          fontFamily: 'Gordita',
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.black54))),
      home: const HomeScreen(),
    );
  }
}
