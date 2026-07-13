import 'dart:io';

import 'mensageiro_repository.dart';

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
        removerMensagem(mensageiro);
      default:
        print('Opção inválida');
    }

    if (continuar) {
      stdout.write('\nPressione a tecla ENTER para continuar...');
      stdin.readLineSync();
    }
  }
}

void removerMensagem(MensageiroRepository mensageiro) {
  stdout.write('Digite o id para excluir a mensagem: ');
  String id = stdin.readLineSync()!;

  bool resultado = mensageiro.excluirMensagem(id: id);
  if (resultado) print('Mensagem excluido com sucesso.');
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
