import 'package:flutter/material.dart';

import 'package:flutter_application_2/pages/incremento_page.dart';
import 'package:flutter_application_2/pages/restar.dart';
import 'package:flutter_application_2/pages/multi.dart';
import 'package:flutter_application_2/pages/dividir.dart';
import 'package:flutter_application_2/pages/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'menu',
      routes: <String, WidgetBuilder>{
        'menu': (BuildContext context) => MenuPage(),
        'incremento': (BuildContext context) => IncrementoPage(),
        'restar': (BuildContext context) => RestarPage(),
        'multiplicar': (BuildContext context) => MultiPage(),
        'dividir': (BuildContext context) => DividirPage(),
      },
    );
  }
}
