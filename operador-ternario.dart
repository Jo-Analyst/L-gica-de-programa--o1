// Objetivo: usar o operador ternário para escolher uma mensagem.
// Conceitos: leitura (stdin), int.parse, operador ternário (?:).

import 'dart:io';

void main() {
  // Pede a idade e lê do teclado.
  print("Digite a sua idade: ");

  // Converte o texto digitado para int.
  int idade = int.parse(stdin.readLineSync()!);

  // Operador ternário:
  // condicao ? valor_se_verdadeiro : valor_se_falso
  String mensagem =
      idade >= 18 ? 'Você é maior de idade' : "Você é menor de idade";

  // Exibe a mensagem escolhida.
  print(mensagem);

  /* if (idade >= 18)
    mensagem = "Você é maior de idade";
  else
    mensagem = "Você é menor de idade";
    */
}
