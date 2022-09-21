
// NÃO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// -------------------------------------------------------------
// ADICIONAR IMPLEMENTAÇÃO RESTANTE ABAIXO DESSA LINHA
// -----------------------------------------

class MeioDeComunicacao {
  void fazerLigacao(String s) {
  }
}

class Telefone implements MeioDeComunicacao {
  @override
  void fazerLigacao(String s) {
    print("[Telefone] Ligando para $s");
  }
}

class Celular extends MeioDeComunicacao {
  @override
  void fazerLigacao(String s) {
    print("[Celular] Ligando para $s");
  }
}

class Orelhao extends MeioDeComunicacao{
  @override
  void fazerLigacao(String s) {
    print("[Orelhao] Ligando para $s");
  }
}
