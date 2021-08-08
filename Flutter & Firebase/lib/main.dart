import 'package:flutter/material.dart';
import 'package:login1/login_page.dart';
import 'package:login1/read_page.dart';
import 'package:login1/registro.dart';
import 'package:login1/write_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iniciar Sesion',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'registro': (BuildContext context) => RegistroPage(),
        'leer': (BuildContext context) => ReadPage(),
        'escribir': (BuildContext context) => WritePage()
      },
    );
  }
}
