import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 40);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retangulo A', 4, 3);
  final retanguloB = Retangulo('Retangulo B', 20, 30);
  final quadradoA = Quadrado('Quadrado A', 7);
  final quadradoB = Quadrado('Quadrado B', 5);
  final trinaguloEquilateroA = TrianguloEquilatero('Triangulo equilatero A', 12);
  final trianguloEquilateroB = TrianguloEquilatero('Triangulo equilatero B', 5);
  final trianguloRetanguloA = TrianguloRetangulo('Triangulo equilatero A', 8, 12, 20);
  final trianguloRetanguloB = TrianguloRetangulo('Triangulo equilatero B', 2, 5, 9);
  final pentagonoA = PentagonoRegular("Pentagono A", 20);
  final pentagonoB = PentagonoRegular("Pentagono B", 25);
  final hexagonoA = HexagonoRegular("Hexagono A", 19);
  final hexagonoB = HexagonoRegular("Hexagono B", 50);

  // Definindo listas das maiores formas
  final List valoresArea = <Forma>[];
  final List valoresPerimetro = <Forma>[];
  final resultado = CompararMaiorFormas();

  //Descobrindo as maiores Areas

  final circuloMaiorArea = comparador.formaDeMaiorArea(circuloA, circuloB);
  valoresArea.add(circuloMaiorArea);

  final retanguloMaiorArea = comparador.formaDeMaiorArea(retanguloA, retanguloB);
  valoresArea.add(retanguloMaiorArea);

  final quadradoMaiorArea = comparador.formaDeMaiorArea(quadradoA, quadradoB);
  valoresArea.add(quadradoMaiorArea);

  final trianguloEquilateroMaiorArea = comparador.formaDeMaiorArea(trinaguloEquilateroA, trianguloEquilateroB);
  valoresArea.add(trianguloEquilateroMaiorArea);

  final trianguloRetanguloMaiorArea = comparador.formaDeMaiorArea(trianguloRetanguloA, trianguloRetanguloB);
  valoresArea.add(trianguloRetanguloMaiorArea);

  final pentagonoMaiorArea = comparador.formaDeMaiorArea(pentagonoA, pentagonoB);
  valoresArea.add(pentagonoMaiorArea);

  final hexagonoMaiorArea = comparador.formaDeMaiorArea(hexagonoA, hexagonoB);
  valoresArea.add(hexagonoMaiorArea);

  //Descobrindo os maiores perimetros

  final circuloMaiorPerimetro = comparador.formaDeMaiorPerimetro(circuloA, circuloB);
  valoresPerimetro.add(circuloMaiorPerimetro);

  final retanguloMaiorPerimetro = comparador.formaDeMaiorPerimetro(retanguloA, retanguloB);
  valoresPerimetro.add(retanguloMaiorPerimetro);

  final quadradoMaiorPerimetro = comparador.formaDeMaiorPerimetro(quadradoA, quadradoB);
  valoresPerimetro.add(quadradoMaiorPerimetro);

  final trianguloEquilateroMaiorPerimetro = comparador.formaDeMaiorArea(trinaguloEquilateroA, trianguloEquilateroB);
  valoresArea.add(trianguloEquilateroMaiorPerimetro);

  final trianguloRetanguloMaiorPerimetro = comparador.formaDeMaiorArea(trianguloRetanguloA, trianguloRetanguloB);
  valoresArea.add(trianguloRetanguloMaiorPerimetro);

  final pentagonoMaiorPerimetro = comparador.formaDeMaiorArea(pentagonoA, pentagonoB);
  valoresArea.add(pentagonoMaiorPerimetro);

  final hexagonoMaiorPerimetro = comparador.formaDeMaiorArea(hexagonoA, hexagonoB);
  valoresArea.add(hexagonoMaiorPerimetro);

  resultado.maiorFormaArea(valoresArea);
  resultado.maiorFormaPerimetro(valoresPerimetro);
}

/// Representa as formas geometricas
abstract class Forma {
  Forma(this.nome, this.area, this.perimetro);

  String nome;
  double area;
  double perimetro;
}

/// Representa a forma geometrica "círculo"
class Circulo extends Forma {

  /// Construtor padrão, recebe o [raio] do círculo.
  Circulo(String nome, this.raio) : super(nome, 0.0, 0.0);

  final double raio;

  /// Retorna a area desse circulo
  get area => math.pi * math.pow(raio, 2);

  /// Retorna o perimetro desse circulo
  get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retangulo"
class Retangulo extends Forma {

  Retangulo(String nome, this.altura, this.largura) : super(nome, 0.0, 0.0);

  final double largura;
  final double altura;

  get area => altura * largura;

  get perimetro => (altura * 2) + (largura * 2);
}

/// Representa a forma geometrica "quadrado", que é um formato especial de retangulo
class Quadrado extends Retangulo {

  Quadrado(String nome, double lado) : super(nome, lado, lado);
}

class TrianguloEquilatero extends Forma {
  TrianguloEquilatero(String nome, this.base) : super(nome, 0.0, 0.0);

  final double base;

  get area => (base * (base * math.sqrt(3) / 2)) / 2;

  get perimetro => base * 3;
}

class TrianguloRetangulo extends Forma{

  TrianguloRetangulo(String nome, this.base, this.altura, this.hipotenusa) : super(nome, 0.0, 0.0);

  final double hipotenusa;
  final double base;
  final double altura;

  get area => ( base * altura )/2;

  get perimetro => hipotenusa + altura + base;
}

class PentagonoRegular extends Forma{

  PentagonoRegular(String nome, this.base) : super(nome, 0.0, 0.0);

  final double base;

  get area => (5 * math.pow(base, 2))/(4 * math.sqrt(5-2) * (math.sqrt(5)));

  get perimetro => base * 5;
}

class HexagonoRegular extends Forma{

  HexagonoRegular(String nome, this.base) : super(nome, 0.0, 0.0);

  final double base;

  get area => (3 * math.pow(base, 2) * math.sqrt(3)) / 2;

  get perimetro => base * 6;
}


/// Compara caracteristicas de formas geometricas
class ComparadorFormasGeometricas {
  Forma formaDeMaiorArea(Forma formaA, Forma formaB) {
    if (formaA.area > formaB.area) {
      return formaA;
    } else if (formaB.area > formaA.area) {
      return formaB;
    }
    return formaA;
  }

  Forma formaDeMaiorPerimetro(Forma formaA, Forma formaB) {
    if (formaA.area > formaB.area) {
      return formaA;
    } else if (formaB.area > formaA.area) {
      return formaB;
    }
    return formaA;
  }
}


/// Compara as maiores formas de cada tipo para encontrar as maiores medidas
class CompararMaiorFormas {
  int i = 0;
  int index = 0;
  double maiorArea = 0.0;
  double maiorPerimetro = 0.0;


  void maiorFormaArea(List listaArea) {
    while (i < listaArea.length) {
      if (listaArea[i].area > maiorArea) {
        maiorArea = listaArea[i].area;
        index = i;
      }
      i++;
    }
    print('A maior area é ${listaArea[index].area.toStringAsFixed(
        2)} e pertence a ${listaArea[index].nome}');

    i = 0;
    index = 0;
  }

  void maiorFormaPerimetro(List listaPerimetro) {
    while (i < listaPerimetro.length) {
      if (listaPerimetro[i].perimetro > maiorPerimetro) {
        maiorPerimetro = listaPerimetro[i].perimetro;
        index = i;
      }
      i++;
    }
    print('O maior perimetro é ${listaPerimetro[index].perimetro.toStringAsFixed(
        2)} e pertence a ${listaPerimetro[index].nome}');
  }
}