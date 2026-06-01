import 'dart:io';

void main() {
  List<String> profissoes = [];
  String decisao = '';
  do {
    print('Digite uma profissão:');
    String profissao = stdin.readLineSync()!;
    profissoes.add(profissao);
    print('Deseja continuar a digitar uma profissão? (s/n)');
    decisao = stdin.readLineSync()!;
  } while (decisao.toLowerCase() == 's');

  print(profissoes);
}
