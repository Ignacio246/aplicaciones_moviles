import 'dart.io';

main() {
    int a,b;
    
    stdout.write('Ingrese el Primer númerorn');
    a = int.parse(stdin.readLineSync());
    
    stdout.write('Ingrese el Segundo Númerorn');
    b = int.parse(stdin.readLineSync());
    
    print('X = ${a+b}');
    print('X = ${a-b}');
    print('X = ${a*b}');
    print('X = ${a/b}');
}