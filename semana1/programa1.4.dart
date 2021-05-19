//Calcular cuantos pokemones caben en rectangulo considerando que cada pokemon mide 30 cm'2
//Dado los siguientes parametros
//base por altura del rectangulo / tamaño de pokemon

void main(){
   double resultado = area(120,30);
   print("El numero aproximado es: $resultado pokemones");
}

double area(int base, int altura,){
    return (base * altura/30) ;
}
