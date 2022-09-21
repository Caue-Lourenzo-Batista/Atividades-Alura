void main() {
  
  ListaDeCompras listaDeCompras = ListaDeCompras();

  final produto1 = Produtos('Arroz', 2, Status.comprado);
  final produto2 = Produtos('Feijão', 3, Status.semEstoque);
  final produto3 = Produtos('Coca-Cola', 1, Status.desejado);

  listaDeCompras.adicionarProduto(produto1);
  listaDeCompras.adicionarProduto(produto2);
  listaDeCompras.adicionarProduto(produto3);

  listaDeCompras.separarProdutos();

  int i = 0;
  print('Produtos comprados');
  while(i < listaDeCompras.listaComprados.length){
    final produto = listaDeCompras.listaComprados[i];
    print('Nome: ${produto.nome}, qnt: ${produto.quantidade}');
    i++;
  }


  i = 0;
  print('Produtos sem estoque');
  while(i < listaDeCompras.listaSemEstoque.length){
    final produto = listaDeCompras.listaSemEstoque[i];
    print('Nome: ${produto.nome}, qnt: ${produto.quantidade}');
    i++;
  }

  i = 0;
  print('Produtos Desejados');
  while(i < listaDeCompras.listaDesejados.length){
    final produto = listaDeCompras.listaDesejados[i];
    print('Nome: ${produto.nome}, qnt: ${produto.quantidade}');
    i++;
  }
}

class Produtos{

  Produtos(this.nome, this.quantidade, this.status);
  final String nome;
  final int quantidade;
  final Status status;

}

class ListaDeCompras{

  final List<Produtos> lista = [];
    final List<Produtos> listaSemEstoque = [];
      final List<Produtos> listaComprados = [];
        final List<Produtos> listaDesejados = [];

  void adicionarProduto(Produtos produto) => lista.add(produto);
  
  void separarProdutos(){
    for(int i=0; i < lista.length; i++){

      switch (lista[i].status){

        case Status.semEstoque:
          listaSemEstoque.add(lista[i]);
            break;

        case Status.comprado:
          listaComprados.add(lista[i]);
            break;

        case Status.desejado:
          listaDesejados.add(lista[i]);
            break;
      }
    }
  }
}

enum Status{
  semEstoque,
  comprado,
  desejado
}