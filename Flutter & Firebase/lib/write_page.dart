import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WritePage extends StatefulWidget {
  @override
  _WritePageState createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();

  String nombre;
  String email;

  @override
  void dispose() {
    _nombreController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Escribir Datos')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 30,),Text('Nombre'),
          SizedBox(
            height: 10,),
            TextField(
            controller: _nombreController,),
          Text('Email'),
          SizedBox(height: 10,),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                _obtenerDatos();
                _msg();
              },
              child: Text('Insertar'))
        ],
      ),
    );
  }

  void _msg() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Guardado Correctamente'),
          content: Text('Guardado en Agenda'),
        );
      },
    );
  }

  void _obtenerDatos() {
    setState(() {
      nombre = _nombreController.text;
      email = _emailController.text;
      _publicarDatos(nombre, email);
    });
  }

  void _publicarDatos(String nombre, String email) async {
    try {
      var url = Uri.parse(
          'https://autentificacion-ae44d-default-rtdb.firebaseio.com/agenda.json');

      var data = {'nombre': nombre, 'email': email};
      final response = await http.post(url, body: json.encode(data));
      if (response.statusCode == 200) {
        print('Guardado con Exito');
      }
    } catch (e) {}
  }
}
