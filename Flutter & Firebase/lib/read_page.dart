import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login1/write_page.dart';

class ReadPage extends StatefulWidget {
  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  @override
  void initState() {
    super.initState();
    readData();
  }

  List<String> items = [];
  bool reading = true;

  Future<void> readData() async {
    try {
      var url = Uri.parse(
          "https://autentificacion-ae44d-default-rtdb.firebaseio.com/agenda.json");
      var response = await http.get(url);
      var data = json.decode(response.body);
      items.clear();
      data.forEach((key, value) {
        items.add(value["nombre"]);
        items.add(value["email"]);
      });
      setState(() {
        reading = false;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leer Datos'),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              child: Text(items[index]),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
          label: Text('Escribir Datos'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => WritePage()));
          }),
    );
  }
}
