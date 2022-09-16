void main() {
  
  List<int> listaNumeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  listaNumeros.sort();

  for (int i = 0; i < listaNumeros.length; i++){
    var binario = listaNumeros[i];
    var octal = listaNumeros[i];
    var hexadecimal = listaNumeros[i];
    print("Decimal: ${listaNumeros[i]} " + " Binario: " + binario.toRadixString(2) + " Octal: " + octal.toRadixString(8) + " hexadecimal: " + hexadecimal.toRadixString(16));
  }
}