import 'package:intl/intl.dart';

void main() {
  final DateTime dataAtual = DateTime.utc(2022, 09, 05);
  var novaData = dataAtual;

  // for (int i = 0; i < 18; i++) {
  //   novaData = novaData.add(const Duration(days: 1));
  //
  //   if (novaData.weekday == DateTime.saturday ||
  //       novaData.weekday == DateTime.sunday) {
  //     novaData = novaData.add(const Duration(days: 2));
  //   }
  // }

  int i = 0;
  while(i < 18){
    novaData = novaData.add(const Duration(days: 1));

    if (novaData.weekday == DateTime.saturday ||
        novaData.weekday == DateTime.sunday) {
      continue;
    }

    i++;
  }

  final DateFormat formatter = DateFormat('dd-MM-yyyy');

  final String dataAtualFormatada = formatter.format(dataAtual);
  final String novaDataFormatada = formatter.format(novaData);

  print("Data atual: $dataAtualFormatada");
  print("Nova data: $novaDataFormatada");
}