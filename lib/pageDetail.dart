import 'package:flutter/material.dart';
import 'package:navigation/truc.dart';

// TODO Un ecran minimal avec un tres peu de code
class PageDetail extends StatelessWidget {

  const PageDetail({super.key, required this.trucs});

  final Truc trucs;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Ecran B'),
        ),
        body:   Center (
          child: Text(
            trucs.name,
          ),

        )
    );
  }
}