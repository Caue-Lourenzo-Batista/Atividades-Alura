void main() {
  //  final controleDePessoas = ControleDePessoas();

   // Cadastrando pessoas no sistema
   Map<String, Mes> listaPessoas = {
      'Jose'    : Mes.abril,
      'Arthur'  : Mes.agosto,
      'João'    : Mes.abril,
      'Jesse'   : Mes.dezembro,
      'Roberta' : Mes.fevereiro,
      'Carla'   : Mes.fevereiro,
      'Thania'  : Mes.agosto,
      'Rafaela' : Mes.marco,
      'Yuri'    : Mes.junho,
      'Jonas'   : Mes.setembro,
      'Elias'   : Mes.outubro,
      'Abel'    : Mes.maio,
      'Danilo'  : Mes.abril,
      'Jonathan': Mes.abril,
      'Joseph'  : Mes.setembro,
      'Abdul'   : Mes.janeiro,
      'Jean'    : Mes.abril
   };
   
   // Passar por todos os meses com pessoas, e imprimir os nomes das pessoas
    ControleDePessoas controleDePessoas = ControleDePessoas();
    controleDePessoas.imprimirPessoas(listaPessoas);
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

class ControleDePessoas {

  void imprimirPessoas(Map listaPessoas){
    int index = 0;

    for(int i = 0; i<12; i++){
      Mes mes = Mes.values.elementAt(i);
      print(mes.name);

      while(index < listaPessoas.length){
        if(listaPessoas.entries.elementAt(index).value.index == i){
        print('> ${listaPessoas.entries.elementAt(index).key}');
      }
      index++;
      }
      print('');
      index = 0;
    }
  }
}