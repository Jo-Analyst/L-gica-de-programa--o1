// Objetivo: calcular o valor do frete com base na sigla do estado (switch).
// Conceitos: leitura (stdin), normalização (toUpperCase), switch/case/default.

import 'dart:io';

void main() {
  // Pede a sigla do estado ao usuário (ex.: SP, RJ, MG, ES...).
  print('Digite a sigla do estado: ');

  // Lê a sigla digitada como texto.
  String estado = stdin.readLineSync()!;

  // Converte para maiúsculo para aceitar "sp", "Sp", "SP", etc.
  switch (estado.toUpperCase()) {
    case 'SP':
      // Regra: SP custa R$ 10,00
      print('O frete custa R\$ 10,00');
    case 'RJ' || 'MG':
      // Regra: RJ ou MG custa R$ 15,00 (intenção do exercício).
      print('O frete custa R\$ 15,00');
    case 'ES':
      // Regra: ES custa R$ 20,00
      print('O frete custa R\$ 20,00');
    default:
      // Regra: qualquer outro estado custa R$ 50,00
      print('O frete custa R\$ 50,00');
      
  }
}
