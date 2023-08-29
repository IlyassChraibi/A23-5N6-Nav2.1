import 'package:flutter/material.dart';
import 'package:navigation/pageB.dart';
import 'package:navigation/pageListe.dart';

// TODO Un ecran minimal avec un tres peu de code
class PageA extends StatefulWidget {

  @override
  _EcranAState createState() => _EcranAState();
}

class _EcranAState extends State<PageA> {

  final TextEditingController _name  =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecran A'),
      ),
      body:  Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
             TextField(
              controller : _name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Enter Your Name",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
             onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => PageB(name: _name.text)
                 ),
               );

             },
              child: const Text('Bouton vers B'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageListe()
                  ),
                );

              },
              child: const Text('Bouton vers Liste'),
            ),
          ],
        ),

      )
    );
  }
}