import 'package:flutter/material.dart';

class MultiPage extends StatefulWidget {
  MultiPage({Key? key}) : super(key: key);

  @override
  _MultiPageState createState() => _MultiPageState();
}

class _MultiPageState extends State<MultiPage> {
  final numeroController = TextEditingController();
  final numeroController1 = TextEditingController();
  int _numero = 0;
  int _numero1 = 0;

  @override
  void dispose() {
    numeroController.dispose();
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Multiplicar'),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(50, 50, 10, 5),
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(50, 50, 10, 5),
                child: Text('Valor a Multiplicar')),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 50, 10, 5),
              child: TextField(
                controller: numeroController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Numero 1'),
                    onChanged: (text) {
                  print("$text");
                },
              ), 
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 50, 10, 5),
              child: TextField(
                controller: numeroController1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Numero 2'),
                    onChanged: (text) {
                  print("$text");
                },
              ), 
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 50, 10, 5),
              child: Text("La multiplicacion es: $_numero",),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            label: Text("Multiplicar"),
            onPressed: () {
              setState(() {
                _numero = int.parse(numeroController.text);
                _numero1 = int.parse(numeroController1.text);
                _numero = _numero * _numero1;
              });
            }));
  }
}