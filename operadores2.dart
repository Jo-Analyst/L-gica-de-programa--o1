import 'dart:io';

void main() {
  print('Digite o seu nome: ');
  String nome = stdin.readLineSync()!;
  print('Olá, $nome! Seja bem-vindo(a) ao nosso sistema!');
}
