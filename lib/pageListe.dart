import 'package:flutter/material.dart';
import 'package:navigation/pageA.dart';

// TODO Un ecran minimal avec un tres peu de code
class PageListe extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Ecran Liste'),
        ),
        body: Center (
          child: Text(
            "Liste"
          ),

        )
    );
  }
}