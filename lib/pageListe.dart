import 'package:flutter/material.dart';
import 'package:navigation/pageDetail.dart';
import 'package:navigation/truc.dart';

class PageListe extends StatelessWidget {
  final List<Truc> trucs = [
    Truc(id: 1, name: 'Truc 1'),
    Truc(id: 2, name: 'Truc 2'),
    Truc(id: 3, name: 'Truc 3'),
    Truc(id: 4, name: 'Truc 4'),
    Truc(id: 5, name: 'Truc 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecran Liste'),
      ),
      body: ListView.builder(
        itemCount: trucs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(trucs[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageDetail(trucs: trucs[index],),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
