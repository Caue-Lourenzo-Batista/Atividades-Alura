import 'dart:math' as math;

void main() {
  
  final figurinha1  = Figurinha("Messi", 1);
  final figurinha2  = Figurinha("Neymar", 2);
  final figurinha3  = Figurinha("Cristiano Ronaldo", 3);
  final figurinha4  = Figurinha("Felps", 4);
  final figurinha5  = Figurinha("Taco", 5);
  final figurinha6  = Figurinha("Pelé", 6);
  final figurinha7  = Figurinha("Anderson", 7);
  final figurinha8  = Figurinha("Fred", 8);
  final figurinha9  = Figurinha("Fallen", 9);
  final figurinha10 = Figurinha("Coldzera", 10);
  final figurinha11 = Figurinha("Kaká", 11);
  final figurinha12 = Figurinha("Maradona", 12);
  final figurinha13 = Figurinha("Titi", 13);
  final figurinha14 = Figurinha("João Gomes", 14);
  final figurinha15 = Figurinha("Marquinhos", 15);
  final figurinha16 = Figurinha("Leandro", 16);
  final figurinha17 = Figurinha("Juninho", 17);
  final figurinha18 = Figurinha("Gabigol", 18);
  final figurinha19 = Figurinha("Paredes", 19);
  final figurinha20 = Figurinha("Arrascaeta", 20);

      List<Figurinha> listaFigurinhas = <Figurinha>[
        figurinha1, figurinha2, figurinha3, figurinha4, figurinha5, figurinha6, figurinha7, figurinha8, figurinha9, figurinha10,
        figurinha11,figurinha12,figurinha13,figurinha14,figurinha15,figurinha16,figurinha17,figurinha18,figurinha19,figurinha20
      ];

      Album album = Album(0);

      while (album.album.length < 20){
        album.ImprimirFigurinhas(listaFigurinhas);
        if (album.album.length == 20){
          print('!!!Você completou o album!!!');
        }
      }
}





class Figurinha{

Figurinha(this.nome, this.codigo);
final String nome;
final int codigo;

}





class Album{

List<Figurinha> album = [];
PacoteFigurinha pacote = PacoteFigurinha();
int figurinhasRepitidas;

Album(this.figurinhasRepitidas);

void ImprimirFigurinhas(List listaFigurinhas){

  int i = 0;

  while (i < 4){
    final Figurinha = pacote.gerarFigurinhaAleatoria(listaFigurinhas);

    if (album.contains(Figurinha[i])){
      figurinhasRepitidas++;
    } else {
      album.add(Figurinha[i]);
    }
  
    i++;
  }

    print('------ Você Abriu +1 pacote de figurinhas! ------');
    print('');
    print('Numero de figurinhas repetidas: $figurinhasRepitidas');
    print('');
    print('------ Essas são as suas figurinhas ------');

    i = 0;
    while (i < album.length){
      album.sort((a, b) => a.codigo.compareTo(b.codigo));
      print(' ${album.elementAt(i).nome}, ${album.elementAt(i).codigo}');
      i++;
    }
    
    print('');

  }
}





class PacoteFigurinha{

 List<Figurinha> gerarFigurinhaAleatoria(List lista) {
    final random = math.Random();
    final figurinha1 = lista[random.nextInt(lista.length)];
    final figurinha2 = lista[random.nextInt(lista.length)];
    final figurinha3 = lista[random.nextInt(lista.length)];
    final figurinha4 = lista[random.nextInt(lista.length)];
    final List<Figurinha> pacoteFigurinha = [figurinha1, figurinha2, figurinha3, figurinha4];
    return pacoteFigurinha;
  }

}