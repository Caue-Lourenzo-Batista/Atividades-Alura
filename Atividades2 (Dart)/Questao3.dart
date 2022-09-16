import 'dart:math';
import 'dart:io';

import 'package:intl/intl.dart';

void main(){
  var formatt = DateFormat('HH:mm:ss');
  final musica = Musica('Indios', 'Renato Russo', 'MundoNovo', formatt.parse('00:03:38'));
  final musica1 = Musica('Bloqueado', 'Gustavo Lima', 'Boteco2', formatt.parse('00:02:55'));
  final musica2 = Musica('Iron man', 'Black Sabbath', 'Rock no mundo', formatt.parse('00:05:30'));
  List<Musica> listaMusicas = [musica, musica1, musica2];
  int i = 0;
  String? subEndereco = null;
  String? endereco = null;

  DateTime tempo = formatt.parse('00:00:00');

  print('-----Lista de Musicas Cadastradas------');
  while (i < listaMusicas.length){
    print(listaMusicas[i].titulo);
    tempo = tempo.add(Duration(minutes: listaMusicas[i].duracao.minute, seconds: listaMusicas[i].duracao.second));
    i++;
  }

  print('\n');
  print('Numero de músicas cadastradas: ${listaMusicas.length}');
  print('\n');
  print('Tempo de reprodução da biblioteca: ${formatt.format(tempo)}');
  print('\n');

  subEndereco = 'Titulo';
  endereco = 'Bloqueado';
  procurarMusicas(listaMusicas, subEndereco, endereco);

  subEndereco = 'Album';
  endereco = 'MundoNovo';
  procurarMusicas(listaMusicas, subEndereco, endereco);

  subEndereco = 'Artista';
  endereco = 'Black Sabbath';
  procurarMusicas(listaMusicas, subEndereco, endereco);
}

class Musica{

  Musica(this.titulo, this.artista, this.album, this.duracao);

  final String titulo;
  final String artista;
  final String album;
  final DateTime duracao;
}

void procurarMusicas(List<Musica> listaMusicas, String? subEndereco, String? endereco){
  int i = 0;

  if (subEndereco == 'Titulo'){

    print('--------- Musicas encontradas pelo titulo --------');

    while (i < listaMusicas.length){
      if (listaMusicas[i].titulo == endereco){
        print(listaMusicas[i].titulo);
      }
      i++;
    }
  } else
    if (subEndereco == 'Artista'){

      print('--------- Musicas encontradas pelo artista --------');

      while (i < listaMusicas.length){
        if (listaMusicas[i].artista == endereco){
          print(listaMusicas[i].titulo);
        }
        i++;
      }
    } else
    if (subEndereco == 'Album'){

      print('--------- Musicas encontradas pelo album --------');

      while (i < listaMusicas.length){
        if (listaMusicas[i].album == endereco){
          print(listaMusicas[i].titulo);
        }
        i++;
      }
    }

  if (endereco == null || subEndereco == null){
    print('Não encontrei nada');
  }
}