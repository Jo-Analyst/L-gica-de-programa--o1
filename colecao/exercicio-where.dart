import 'dart:io';

void main() {
  List<String> modelosCarros = [
    'Pálio',
    'Toro',
    'T-Cross',
    'Civic',
    'City',
    'Corola',
    'Tesla',
    'Ram',
  ];

  print('Digite alguma letra:');
  String palavra = stdin.readLineSync()!;

  var modelofiltrado = modelosCarros
      .where((modelo) => modelo.toLowerCase().contains(palavra))
      .toList();

  print(modelofiltrado);
}
