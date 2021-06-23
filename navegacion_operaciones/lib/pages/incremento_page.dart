import 'package:flutter/material.dart';

class IncrementoPage extends StatefulWidget {
  IncrementoPage({Key? key}) : super(key: key);

  @override
  _IncrementoPageState createState() => _IncrementoPageState();
}

class _IncrementoPageState extends State<IncrementoPage> {
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
          title: Text('Incremento'),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(50, 50, 10, 5),
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(50, 50, 10, 5),
                child: Text('Valor a incrementar')),
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
              child: Text("La suma es: $_numero",),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            label: Text("sumar"),
            onPressed: () {
              setState(() {
                _numero = int.parse(numeroController.text);
                _numero1 = int.parse(numeroController1.text);
                _numero = _numero + _numero1;
              });
            }));
  }
}
