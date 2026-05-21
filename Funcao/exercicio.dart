// Crie uma função que receba uma String e retorne uma nova String com todas as letras mauisculas
import 'dart:io';

void main() {
  print('Digite um texto');
  String texto = stdin.readLineSync()!;
  print(converterTexto(texto));
}

String converterTexto(String texto) {
  return texto.toUpperCase();
}
