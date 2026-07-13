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
        buscarTodasAsMensagens(mensageiro);
      case '2':
        enviarMensagem(mensageiro);
      case '3':
        print('Remover mensangem');
      default:
        print('Opção inválida');
    }

    if (continuar) {
      stdout.write('\nPressione a tecla ENTER para continuar...');
      stdin.readLineSync();
    }
  }
}

void enviarMensagem(MensageiroRepository mensageiro) {
  stdout.write('Digite a sua mensagem: ');
  String texto = stdin.readLineSync()!;
  stdout.write('Digite o contato: ');
  String contato = stdin.readLineSync()!;
  mensageiro.enviarMensagem(texto: texto, contato: contato);
  print('Mensagem enviado com sucesso!');
}

void buscarTodasAsMensagens(MensageiroRepository mensageiro) {
  var mensagens = mensageiro.buscarTodasAsMensagens();

  if (mensagens.isEmpty) return;

  mostrarCabecalho(mensagem: 'LISTA DE MENSAGENS');
  for (var mensagem in mensagens) {
    print(
      'ID: ${mensagem.id} | Nome: ${mensagem.texto} | Contato: ${mensagem.contato}',
    );
  }
}

void mostrarMenu() {
  mostrarCabecalho(mensagem: 'MENU PRINCIPAL');
  print('1 - Mostrar Mensagem');
  print('2 - Enviar Mensagem');
  print('3 - remover mensagem');
  print('4 - Sair');

  stdout.write('Digite sua escolha: ');
}

void mostrarCabecalho({String mensagem = 'SISTEMA DE MENSAGENS'}) {
  print('${'*' * 60} $mensagem ${'*' * 60}');
}
