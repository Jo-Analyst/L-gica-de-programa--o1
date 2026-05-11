// Objetivo: verificar se um número é par ou ímpar.
// Conceitos: leitura (stdin), conversão (int.parse), módulo (%), if/else.

import 'dart:io';

void main() {
  // Pede um número ao usuário.
  print('Digite um número: ');

  // Lê a entrada e converte de String para int.
  int numero = int.parse(stdin.readLineSync()!);

  // % (módulo) retorna o resto da divisão.
  // Se o resto de numero / 2 for 0, então o número é par.
  if (numero % 2 == 0)
    print("O número é par");
  else
    print('O número é impar');
}
