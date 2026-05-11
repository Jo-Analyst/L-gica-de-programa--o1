// Objetivo: repetir uma pergunta enquanto a resposta for "sim".
// Conceitos: while, leitura (stdin), variável de controle.

import 'dart:io';

void main() {
  // Contador usado no exemplo comentado abaixo.
  
  /* int indice = 0;
   while (indice <= 10) {
    print('Número $indice');
    indice++;
  } */

  // Variável que controla se o laço vai continuar.
  String decisao = 'sim';

  // while: repete enquanto a condição for verdadeira.
  while (decisao == 'sim') {
    // Pergunta ao usuário se quer repetir o bloco.
    print('Deseja repetir o bloco de repetição?');

    // Lê a resposta e atualiza "decisao".
    decisao = stdin.readLineSync()!;
  }
}
