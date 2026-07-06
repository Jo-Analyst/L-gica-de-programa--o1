import 'dart:convert';
import 'dart:io';

import 'package:mensageiro/mensageiro_repository.dart';

void main() {
  mostrarCabecalho();
  bool continuar = true;

  while (continuar) {
    monstrarMenuPrincipal();
    stdout.write('\nDigite a sua opção: ');
    String escolha = stdin.readLineSync(encoding: utf8)!;
    MensageiroRepository mensageiroRepository = MensageiroRepository();
    switch (escolha) {
      case '1':
        listarMensagem(mensageiroRepository);
      case '4':
        continuar = false;
      default:
        print('Opção inválida');
    }

    if (continuar) {
      print('\nDigite o ENTER para continuar...');
      stdin.readLineSync();
    }
  }
}

void listarMensagem(MensageiroRepository mensagemRepository) {
  var mensagens = mensagemRepository.buscarTodasAsMensagens();
  if (mensagens.isEmpty) {
    print('Nenhuma mensagem cadastrada.');
  } else {
    mostrarCabecalho(mensagem: 'Mostrar Mensagem');
    for (var mensagem in mensagens) {
      print(
        "ID: ${mensagem.id} | NOME: ${mensagem.texto} | CONTATO: ${mensagem.contato} ",
      );
      print('*' * 108);
    }
  }
}

void mostrarCabecalho({String mensagem = 'Sistema de Mensagens'}) {
  print('\n${'*' * 45} ${mensagem.toUpperCase()} ${'*' * 45}\n');
}

void monstrarMenuPrincipal() {
  print('1 - Listar Mensagem');
  print('2 - Adicionar Mensagem');
  print('3 - Remover Mensagem');
  print('4 - Sair');
}
