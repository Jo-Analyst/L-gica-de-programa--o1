import 'dart:io';

import 'package:mensageiro/mensageiro_repository.dart';

void main() {
  mostrarCabecalho();
  MensageiroRepository mensageiro = MensageiroRepository();
  bool continuar = true;

  while (continuar) {
    mostrarMenu();
    String escolha = stdin.readLineSync()!;
    switch (escolha) {
      case '4':
        continuar = false;
      case '1':
        print('Busca mensagem');
    }
  }
}

void mostrarMenu() {
  print('1 - Mostrar Mensagem');
  print('2 - Enviar Mensagem');
  print('3 - remover mensagem');
  print('4 - Sair');

  stdout.write('Digite sua escolha: ');
}

void mostrarCabecalho({String mensagem = 'SISTEMA DE MENSAGENS'}) {
  print('${'*' * 60} $mensagem ${'*' * 60}');
}
