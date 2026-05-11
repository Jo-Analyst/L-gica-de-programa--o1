// Objetivo: decidir se uma pessoa pode se alistar (regras de idade e altura).
// Conceitos: leitura (stdin), parse (int/double), operadores (>=, &&), if/else.

import 'dart:io';

void main() {
  // Pede a idade e lê do teclado.
  print('Digite a idade: ');
  // Converte o texto digitado para int.
  int idade = int.parse(stdin.readLineSync()!);

  // Pede a altura e lê do teclado.
  print('digite a altura: ');
  // Converte o texto digitado para double.
  double altura = double.parse(stdin.readLineSync()!);

  // Verifica duas condições ao mesmo tempo: idade mínima e altura mínima.
  if (idade >= 18 && altura >= 1.7) 
  print('Você pode se alistar');
  else
  print('Você não pode se alistar');
}
