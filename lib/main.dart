import 'package:flutter/material.dart';
import 'package:navigation/pageA.dart';
import 'package:navigation/pageB.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: PageA(),
      routes: routes(),
    );
  }
  Map<String, WidgetBuilder> routes() {
    return {
      '/ecrana': (context) => PageA(),
      '/ecranb': (context) => PageB(name: '',),
    };
  }
}
