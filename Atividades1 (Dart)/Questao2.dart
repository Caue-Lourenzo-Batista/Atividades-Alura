import 'dart:io';

void main() {

  List listaDeTemp = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];
  double fahrenheit = 0.0;
  double kelvin = 0.0;

  for(int i=0; i<listaDeTemp.length; i++){

    fahrenheit = ((listaDeTemp[i] * 9/5) + 32);
    kelvin = (listaDeTemp[i] + 273.15);
    print("Celsius: ${listaDeTemp[i]}, Fahrenheit: $fahrenheit, Kelvin: $kelvin");

  }
}