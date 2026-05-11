// Objetivo: imprimir a tabuada (1 a 10) de um número informado.
// Conceitos: leitura (stdin), int.parse, laço for, multiplicação.

import 'dart:io';

void main() {
  // Pede um número para gerar a tabuada.
  print("Digite o número para a tabuada: ");

  // Lê o texto digitado e converte para inteiro.
  int numero = int.parse(stdin.readLineSync()!);

  // Contador do laço (1 até 10).
  int i = 1;

  // Laço que imprime as multiplicações de 1 a 10.
  for (i; i <= 10; i++) {
    // Calcula a multiplicação atual.
    int result = numero * i;

    // Mostra a conta no formato "numero x i = resultado".
    print('$numero x  $i = $result');
  }
}
