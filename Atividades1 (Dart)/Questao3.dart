void main() {

  int contadorVogais = 0;
  final contadorDePalavras;
  int contadorDeFrases = 0;
  List<String> listaDeVogais = ["a", "e", "i", "o", "u"];
  List<String> listaDeConsoantes = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"];
  String consoantes = "";

  String paragrafo = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";
  print("Paragrafo: $paragrafo");
  paragrafo.toLowerCase();

  contadorDePalavras = paragrafo.split(' ').length;
  contadorDeFrases = ".".allMatches(paragrafo).length;

  for(int i = 0; i<5; i++) {
    contadorVogais += '${listaDeVogais[i]}'.allMatches(paragrafo).length;
  }

  for(int i = 0; i<21; i++) {
    if('${listaDeConsoantes[i]}'.allMatches(paragrafo).length >= 1) {
      consoantes += '${listaDeConsoantes[i]}, ';
    }
  }

  print("Numero de palavras: $contadorDePalavras");
  print(paragrafo.length);
  print("Numero de frases: $contadorDeFrases");
  print("Numero de vogais: $contadorVogais");
  print("Consoantes encontradas: $consoantes");

}
