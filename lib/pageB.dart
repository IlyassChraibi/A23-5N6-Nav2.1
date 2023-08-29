import 'package:flutter/material.dart';
import 'package:navigation/pageA.dart';

// TODO Un ecran minimal avec un tres peu de code
class PageB extends StatelessWidget {
  final String name;

  const PageB({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ecran B'),
        ),
        body:   Center (
          child: Text(
           name,
          ),

        )
    );
  }
}