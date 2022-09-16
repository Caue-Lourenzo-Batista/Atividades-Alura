import 'dart:math';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';
  
void main() {
  
 List<int> listaInteiros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  int contador = 0;
  int i = 0;
  
  for (i = 0; i<listaInteiros.length; i++){
    contador += listaInteiros[i];
  }
  print("For: $contador");

  contador = 0;
  i = 0;

  while (i < listaInteiros.length){
    contador += listaInteiros[i];
    i++;
  }
  print("While: $contador");

  contador = 0;

  contador = listaInteiros.sum;
  print("List: $contador");
  
  contador = 0;
  contador = soma(listaInteiros);

  print("Recursão: $contador");

}

int soma(List lista){
  
  if(lista.length == 1){
    return lista[0];
  }
  else{
    return lista[0] + soma(lista.sublist(1, lista.length));
  }
}