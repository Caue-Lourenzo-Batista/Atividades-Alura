import 'dart:io';
import 'dart:math';

import 'package:testes/testes.dart' as testes;

void main() {

  List listaDeRaios = [5, 8, 12, 7.3, 18, 2, 25];
  double area = 0.0;
  double perimetro = 0.0;

  for(int i=0; i<listaDeRaios.length; i++){

    area = (pow(listaDeRaios[i], 2) * pi);
    perimetro = (2 * pi * listaDeRaios[i]);
    print("Raio: ${listaDeRaios[i]}, Area: $area, Perimetro: $perimetro");

  }
}
