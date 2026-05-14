// Objetivo: gerar tabuadas de 1 até um limite e perguntar se deseja repetir.
// Conceitos: leitura (stdin), int.parse, for aninhado, do-while, toLowerCase.

import 'dart:io';

void main() {
  // Variável para controlar se o programa repete (resposta do usuário).
  String decisao;

  // Cabeçalho visual no console.
  print('\n' + '=' * 30);
  print("Gerador de tabuada");
  print('=' * 30);

  // Pergunta o limite: até qual número (1..valor) o programa deve gerar as tabuadas.
  print('\n Até qual número você que ver a tabuada?');

  // Lê a entrada e converte para int.
  int valor = int.parse(stdin.readLineSync()!);

  // do-while: executa pelo menos uma vez e repete se o usuário responder "sim".
  do {
    // Laço externo: escolhe qual tabuada (1, 2, 3... até "valor").
    for (int j = 1; j <= valor; j++) {
      print('\n Tabuada do $j \n');

      // Laço interno: para cada "j", calcula de 1xj até 10xj.
      for (int i = 1; i <= 10; i++) {
        // Resultado da multiplicação atual.
        int result = i * j;
        print('$i x $j = $result');
      }
    }

    // Pergunta se o usuário quer repetir tudo novamente.
    print('Deseja continuar a tabuada?');
    decisao = stdin.readLineSync()!;

    // Normaliza para minúsculo para aceitar "SIM", "Sim", etc.
  } while (decisao.toLowerCase() == 'sim');
}
