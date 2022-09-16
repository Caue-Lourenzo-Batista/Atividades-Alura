import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final random = Random();
  Fornecedor f = Fornecedor();
  int refeicao = 0;
  int _caloriasConsumidas = random.nextInt(2500);

  // Consumindo produtos fornecidos
  if (_caloriasConsumidas < 2500) {
    while(_caloriasConsumidas < 2000) {
      final fornecedor = f.aleatorio();
      _caloriasConsumidas += pessoa.refeicao(fornecedor);
      refeicao++;
    }
    pessoa.informacoes(_caloriasConsumidas, refeicao);
  } else {
    pessoa.informacoes(_caloriasConsumidas, refeicao);
  }
}

class Fornecedor {
  aleatorio() {
    final fornecedor = <Fornecedor>[
      FornecedorDeBebidas(),
      FornecedorDeBolo(),
      FornecedorDeSanduiches(),
    ];

    final random = Random();

    return fornecedor[random.nextInt(fornecedor.length)];
  }

  final _random = Random();
  final List _lista = <Produto>[];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _lista[_random.nextInt(_lista.length)];
  }
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

class FornecedorDeBebidas extends Fornecedor {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Café', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

//Criando Novos Fornecedores de sanduiches e de bolos

class FornecedorDeSanduiches extends Fornecedor {
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('Misto quente', 150),
    Produto('Sanduba de frango', 200),
    Produto('Sanduba Natural', 100),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _sanduichesDisponiveis[
        _random.nextInt(_sanduichesDisponiveis.length)];
  }
}

class FornecedorDeBolo extends Fornecedor {
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de nozes', 300),
    Produto('Bolo de frutas', 150),
    Produto('Bolo de chocolate', 200),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
}

class Pessoa {
  // Acumulador de calorias

  /// Imprime as informações desse consumidor
  void informacoes(int _caloriasConsumidas, refeicao) {
    print('Calorias consumidas: $_caloriasConsumidas \n'
        "Numero de refeicoes: $refeicao");

    if (_caloriasConsumidas < 500) {
      print("Deficit extremo de calorias");
    } else if (_caloriasConsumidas > 500 && _caloriasConsumidas < 1800) {
      print("Deficit de calorias");
    } else if (_caloriasConsumidas > 1800 && _caloriasConsumidas < 2500) {
      print("Nivel de fome satisfeito");
    } else if (_caloriasConsumidas > 2500) {
      print("Excesso de calorias");
    }
  }

  /// Consome um produto e aumenta o numero de calorias
  int refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    return produto.calorias;
  }
}