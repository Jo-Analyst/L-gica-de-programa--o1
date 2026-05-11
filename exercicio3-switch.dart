// Objetivo: traduzir nomes de cores do português para o inglês usando switch.
// Conceitos: leitura (stdin), normalização (toLowerCase), switch/case.

import 'dart:io';

void main() {
  // Pede para o usuário digitar uma cor em português.
  print('Digite uma cor: ');

  // Lê a cor digitada.
  String cor = stdin.readLineSync()!;

  // Normaliza para minúsculo para facilitar a comparação no switch.
  switch (cor.toLowerCase()) {
    case 'vermelho':
      print('red');
    case 'verde':
      print('green');
    case 'azul':
      print('blue');
    case 'amarelo':
      print('yellow');
    case 'branco':
      print('White');
    case 'preto':
      print('black');
    case 'Laranja':
      print('orange');
    case 'Marron':
      print('brown');
    case 'roxo':
      print('purple');
  }
}
