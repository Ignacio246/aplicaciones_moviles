import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( 
          title: Text('Menu'),
        ),
        body: Center(
          child: Container(child: Text("Calculadora basica"))),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(
              child: Icon(Icons.add),
              label: "Sumar",
              onTap: () {
              Navigator.pushNamed(context, 'incremento');
            }
            ),
            SpeedDialChild(
              child: Icon(Icons.remove_circle),
              label: "Restar",
              onTap: () {
              Navigator.pushNamed(context, 'restar');
            }
            ),
            SpeedDialChild(
              child: Icon(Icons.close),
              label: "Multiplicar",
              onTap: () {
              Navigator.pushNamed(context, 'multiplicar');
            }
            ),
            SpeedDialChild(
              child: Icon(Icons.hdr_off),
              label: "Dividir",
              onTap: () {
              Navigator.pushNamed(context, 'dividir');
            }
            )
          ]
        )
    );
  }
}