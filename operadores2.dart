// Objetivo: ler um nome no terminal e exibir uma saudação.
// Conceitos: import `dart:io`, stdin, String, print e interpolação ($).

import 'dart:io';

void main() {
  // Pede para o usuário digitar um texto (nome).
  print('Digite o seu nome: ');

  // Lê uma linha do teclado e guarda na variável "nome".
  String nome = stdin.readLineSync()!;

  // Imprime uma mensagem de boas-vindas usando o nome digitado.
  print('Olá, $nome! Seja bem-vindo(a) ao nosso sistema!');
}
