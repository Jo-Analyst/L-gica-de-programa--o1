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
        buscarMensagem(mensageiro);
      case '2':
        enviarMensagem(mensageiro);
    }
  }
}

void enviarMensagem(MensageiroRepository mensageiro) {
  mostrarCabecalho(mensagem: 'ENVIAR MENSAGENS');
  stdout.write('Digite sua mensagem: ');
  String texto = stdin.readLineSync()!;
  stdout.write('Digite o contato: ');
  String contato = stdin.readLineSync()!;

  mensageiro.enviarMensagem(texto: texto, contato: contato);
  print('\nMensagem enviado com sucesso\n');
}

void buscarMensagem(MensageiroRepository mensageiro) {
  mostrarCabecalho(mensagem: 'LISTA DE MENSAGENS');
  var mensagens = mensageiro.buscarTodasAsMensagens();
  for (var msg in mensagens) {
    print('ID: ${msg.id} | Texto: ${msg.texto} | contato: ${msg.contato}');
    print('*' * 125);
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
