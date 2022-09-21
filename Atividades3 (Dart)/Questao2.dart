void main() {

  Baralho baralho = Baralho();

  final carta1 = Carta(Nipes.paus, 'A');
  final carta2 = Carta(Nipes.copas, 'A');
  final carta3 = Carta(Nipes.espadas, 'A');
  final carta4 = Carta(Nipes.ouro, 'A');

  baralho.AdicionarCarta(carta1);
  baralho.AdicionarCarta(carta2);
  baralho.AdicionarCarta(carta3);
  baralho.AdicionarCarta(carta4);

  int i = 0;

  while (i < baralho.baralho.length){
       Carta carta;
       carta = baralho.baralho.elementAt(i);
       print('Posição ${i+1} / carta: ${carta.valor} ' + '${carta.nipe.name}');
       i++;
  }

  i = 0;

  while(i < baralho.baralho.length){
    print ('Ultima carta foi removida');
    baralho.RemoverCarta();

    if(baralho.baralho.isEmpty){
      print('O baralho não possui mais cartas');
    }
  }
}

class Carta {
  final String valor;
  final Nipes nipe;

  Carta(this.nipe, this.valor);
}



class Baralho{

  final Set<Carta> baralho = {};
  void AdicionarCarta(Carta carta) => baralho.add(carta);

  void RemoverCarta() => baralho.remove(baralho.last);
}

enum Nipes { paus, ouro, espadas, copas }