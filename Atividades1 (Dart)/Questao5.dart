import 'dart:io';
import "dart:math";

void main() {

  final random = new Random();
  String nome;
  String sobrenome;
  List <String> listaNomes = ["Ana", "Maria", "Francisco", "João", "Pedro", "Gabriel", "Rafaela", "Marcio", "Jose", "Carlos", "Patricia", "Helena", "Camila", "Mateus", "Gabriel", "Samuel", "Karina", "Antonio", "Daniel", "Joel", "Cristiana", "Sebastião", "Paula"];
  List <String> listaSobrenomes = ["Silva", "Souza", "Almeida", "Azevedo", "Braga", "Barros", "Campos", "Cardoso", "Costa", "Teixeira", "Santos", "Rodrigues", "Ferreira", "Alves", "Pereira", "Lima", "Gomes", "Ribeiro", "Carvalho", "Lopes", "Barbosa"];

  nome = listaNomes[random.nextInt(listaNomes.length)];
  sobrenome = listaSobrenomes[random.nextInt(listaSobrenomes.length)];

  print("Sugestão de nome: $nome $sobrenome");
}
