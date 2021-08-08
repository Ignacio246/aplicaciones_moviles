//Importar librerias
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

//Declarar la clase para el Login
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
//Extender variables
  String email;
  String password;

  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

//Diseño para el formato del Login
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesion'),
      ),
      body: ListView(
        key: _formKey,
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Email"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Contraseña"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              controller: _passwordcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            ),
          ),
          ElevatedButton(
            onPressed: _obtenerDatos,  //Aqui manda los datos y los valida
            child: Text('Inicar Sesion'),
          ),
          SizedBox(
            width: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
                child: Container(
                  child: Text('Registrarse'),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'registro');
                }),
          ),
        ],
      ),
    );
  }

//Validar datos
  String validarContrasena(String value) {
    print("valorrr $value passsword ${_passwordcontroller.text}");
    if (value != _passwordcontroller.text) {
      return "Las contraseñas no coinciden";
    }
    return null;
  }

  String validarEmail(String value) {
    String pattern = '';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo invalido";
    } else {
      return null;
    }
  }
//Guarda los datos en Firebase
  save() {
    if (keyForm.currentState.validate()) {
      _obtenerDatos();
      print("Correo ${_emailcontroller.text}");
      keyForm.currentState.reset();
    }
  }

  void _obtenerDatos() {
    setState(() {
      email = _emailcontroller.text;
      password = _passwordcontroller.text;
      authUser(email, password);
      print(email);
      print(password);
    });
  }
//Manda mensaje de aleta si el usuario no esta en la BD
  void _msg() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: Text('Mensaje de Alerta'),
            content: Text("Lo siento  tu contraseña es incorrecta"));
      },
    );
  }
//Metodo para Iniciar sesion desde Firebase "Uso de API REST"
  void authUser(String email, String password) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDKKToh-mRCa8i1zwq39NXdZOnamD1L0w8');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        Navigator.popAndPushNamed(context, 'leer');
      }
      if (response.statusCode == 400) {
        _msg();
      }
    } catch (error) {
      print(error.toString());
    }
  }
}
