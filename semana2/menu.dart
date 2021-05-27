import 'dart:io';

void main() {
  menu();
  borrar();
}

void menu() {
  var opcion;
  print("1- Mostrar todos los datos");
  print("2- Insertar un nuevo resgistro");
  print("3- Modificar un registro");
  print("4- Borrar un registro");
  print("Elegi una opcion:");

  opcion = stdin.readLineSync();

  if (opcion == 1) {
    return mostrar();
  }
  if (opcion == 2) {
    return insertar();
  }
  if (opcion == 3) {
    return modificar();
  }
  if (opcion == 4) {
    return borrar();
  }
}

void mostrar() {
  Map<String, dynamic> persona = {
    "Nombre": "Ignacio",
    "Telefono": 7751352402,
    "Email": "test@user.com"
  };
  print(persona);
}

void insertar() {
  Map<String, dynamic> persona = {
    "Nombre": "Ignacio",
    "Telefono": 7751352402,
    "Email": "test@user.com"
  };
  var nombre;
  var tel;
  var email;
  var s;
  var n;
  print("¿Desea insertar un nuevo registro? s/n:");
  if (s == s) {
    print("Nombre:");
    nombre = stdin.readLineSync();
    print("Telefono:");
    tel = stdin.readLineSync();
    print("Email:");
    email = stdin.readLineSync();

    persona.addAll(persona);
    print(persona);
  }
}

void modificar() {
  Map<int, dynamic> persona = {1: "Ignacio", 2: 7751352402, 3: "test@user.com"};

  var op;
  var a;
  var b;
  var c;
  print("1- Nombre");
  print("2- Telefono");
  print("3- Email");
  print("¿Que elemento desea modificar?:");
  op = stdin.readLineSync();

  if (op == a) {
    print("Nombre: ");
    a = stdin.readLineSync();
    persona.update(1, (a) => a);

    print(persona);
  }
  if (op == b) {
    print("Telefono:");
    b = stdin.readLineSync();
    persona.update(2, (b) => b);
  }
  if (op == c) {
    print("Email:");
    c = stdin.readLineSync();
    persona.update(3, (c) => c);
  }
}

void borrar() {
  Map<String, dynamic> persona = {
    "Nombre": "Ignacio",
    "Telefono": 7751352402,
    "Email": "test@user.com"
  };

  var op;
  var a;
  var b;
  var c;
  print("a- Nombre");
  print("b- Telefono");
  print("c- Email");
  print("¿Que elemento desea eliminar':");
  op = stdin.readLineSync();

  if (op == a) {
    persona.remove("Nombre");
  }
  if (op == b) {
    persona.remove("Telefono");
  }
  if (op == c) {
    persona.remove("Email");

    print(persona);
  }
}
