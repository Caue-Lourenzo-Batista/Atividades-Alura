import 'dart:math' as math;

void main() {

  GerarNomes gerador = GerarNomes();
  Fila fila = Fila();

  for(int i = 0; i < 10; i++){
    final String nomePessoa = gerador.gerarPessoaAleatoria();
    fila.entrarFila(nomePessoa);
    print('$nomePessoa entrou na fila');
  }

  print('\n');

  for(int i = 0; i < fila.listaPessoas.length; ){
    final String nomePessoa = fila.listaPessoas.first;
    print ('$nomePessoa foi atendido');
    fila.sairFila();

    if(fila.listaPessoas.isEmpty){
      print('\n');
      print('A fila não possui mais pessoas');
    }
  }
}

class Fila{

  final Set<String> listaPessoas = {};

  void entrarFila(String pessoa) => listaPessoas.add(pessoa);
  void sairFila() => listaPessoas.remove(listaPessoas.first);
}

class GerarNomes {

  String gerarPessoaAleatoria() {

    const nomes = [
      'Ana',
      'Maria',
      'Francisco',
      'João',
      'Pedro',
      'Gabriel',
      'Rafaela',
      'Marcio',
      'Jose',
      'Carlos',
      'Patricia',
      'Helena',
      'Camila',
      'Mateus',
      'Gabriel',
      'Samuel',
      'Karina',
      'Antonio',
      'Daniel',
      'Joel',
      'Cristiana',
      'Sebastião',
      'Paula'
    ];

    const sobrenomes = [
      'Silva',
      'Souza',
      'Almeida',
      'Azevedo',
      'Braga',
      'Barros',
      'Campos',
      'Cardoso',
      'Costa',
      'Teixeira',
      'Santos',
      'Rodrigues',
      'Ferreira',
      'Alves',
      'Pereira',
      'Lima',
      'Gomes',
      'Ribeiro',
      'Carvalho',
      'Lopes',
      'Barbosa'
    ];

    final random = math.Random();
    final nomeGerado = nomes[random.nextInt(nomes.length)];
    final sobrenomeGerado = sobrenomes[random.nextInt(sobrenomes.length)];
    final nomeCompletoGerado = '$nomeGerado $sobrenomeGerado';
    return nomeCompletoGerado;
  }
}
