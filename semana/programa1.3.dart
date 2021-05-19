//Calcular el promedio de un alumno
//Evaluacion 1-20%
//Evaluacion 2-30%
//Evaluacion 3-50%

void main(){
   double resultado = promedio(8.5,9.5,10);
   print("El promedio del Alumno es: $resultado");
}

double promedio(double cal_1, double cal_2, double cal_3){
    return (cal_1 * .2) + (cal_2 *.3) + (cal_3 * .5) ;
}
