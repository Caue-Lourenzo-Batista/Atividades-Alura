void main() {
  final controleDePessoas = ControleDePessoas();

  // Cadastrando pessoas no sistema
  controleDePessoas
    ..cadastrarPessoa(Pessoa('Jose', Mes.abril))
    ..cadastrarPessoa(Pessoa('Arthur', Mes.agosto))
    ..cadastrarPessoa(Pessoa('João', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jesse', Mes.dezembro))
    ..cadastrarPessoa(Pessoa('Roberta', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Carla', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Thania', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Rafaela', Mes.marco))
    ..cadastrarPessoa(Pessoa('Yuri', Mes.junho))
    ..cadastrarPessoa(Pessoa('Jonas', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Elias', Mes.outubro))
    ..cadastrarPessoa(Pessoa('Abel', Mes.maio))
    ..cadastrarPessoa(Pessoa('Danilo', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jonathan', Mes.abril))
    ..cadastrarPessoa(Pessoa('Joseph', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Abdul', Mes.janeiro))
    ..cadastrarPessoa(Pessoa('Jean', Mes.abril));

  // Passar por todos os meses com pessoas, e imprimir os nomes das pessoas
  for (final mes in controleDePessoas.mesesComPessoas) {
    print('\n${mes.name}');

    for (final pessoa in controleDePessoas.pessoasPorMes(mes)) {
      print(' > ${pessoa.nome}');
    }
  }

  var sla = controleDePessoas.mesesComPessoas;
  print(sla);
}

enum Mes {
  janeiro,
  fevereiro,
  marco,
  abril,
  maio,
  junho,
  julho,
  agosto,
  setembro,
  outubro,
  novembro,
  dezembro,
}

class Pessoa {
  Pessoa(this.nome, this.mesDeNascimento);

  final String nome;
  final Mes mesDeNascimento;
}

class ControleDePessoas {

  final pessoas = <Mes, List<Pessoa>>{};

  /// Cadastra uma pessoa no sistema
  void cadastrarPessoa(Pessoa pessoa) {
    final key = pessoa.mesDeNascimento;

    if (pessoas.containsKey(key)) {
      pessoas[key]!.add(pessoa);
    } else {
      pessoas[key] = [pessoa];
      pessoas.addAll({key: [pessoa]});
    }
  }

  /// Retorna a lista de meses com pessoas cadastradas
  List<Mes> get mesesComPessoas {

    return pessoas.keys.toList()..sort((a, b) => a.index.compareTo(b.index));
  }

  /// Retorna a lista de pessoas que nasceram no [mes] especificado
  List<Pessoa> pessoasPorMes(Mes mes) {
    final pessoa = <Pessoa>[];
    
    return pessoas[mes]!;
  }
}