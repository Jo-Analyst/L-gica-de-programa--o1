// Objetivo: classificar a pessoa por faixa etária (criança/adolescente/adulto).
// Conceitos: leitura (stdin), int.parse, if / else if / else.

import 'dart:io';

void main() {
  // Pede a idade do usuário.
  print('Digite a sua idade: ');

  // Lê a idade (String) e converte para int.
  int idade = int.parse(stdin.readLineSync()!);

  // Estrutura if/else if/else para classificar por faixa de idade.
  if (idade >= 18)
    print("Você é adulto");
  else if (idade >= 12) 
    print("Você é adolescente");
  else 
  print("Você é criança");
}
