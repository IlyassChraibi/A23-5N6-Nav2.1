import 'package:flutter/material.dart';
import 'package:navigation/pageA.dart';
import 'package:navigation/pageB.dart';
import 'package:navigation/pageDetail.dart';
import 'package:navigation/pageListe.dart';
import 'package:navigation/truc.dart';

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
      '/ecranb': (context) => PageB(name: ''),
      '/ecranliste': (context) => PageListe(),
      '/ecrandetail': (context) => PageDetail(trucs: Truc(id: 0, name: ''),
    ),
    };
  }
}

