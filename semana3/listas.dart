import 'dart:io';

void main() {
  datos();
  final objeto = new Sensores();
}

void datos() {
  List<dynamic> datos = ['Id_sensor', 'Valor', 'Fecha_registro'];
  print(datos);
}

class Sensores {
  Sensores() {
    while (true) {
      var id;
      var valor;
      var fecha;

      print('Dame un Id:');
      id = stdin.readLineSync();
      print('Dame un valor:');
      valor = stdin.readLineSync();
      print('Fecha(DD/MM/A):');
      fecha = stdin.readLineSync();

      print('Los datos almacenados son [$id, $valor, $fecha]');

      print('¿Quieres almacenar otro dato? S/N:');
      var s = stdin.readLineSync();
      var n = stdin.readLineSync();

      if (s == s) {
        print('Dame un Id:');
        id = stdin.readLineSync();
        print('Dame un valor:');
        valor = stdin.readLineSync();
        print('Fecha(DD/MM/A):');
        fecha = stdin.readLineSync();

        print('Los datos almacenados son [$id, $valor, $fecha]');

        if (n == n) {}
        break;
      }
    }
  }
}
