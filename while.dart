import 'dart:io';

void main() {
  int indice = 0;

  /*  while (indice <= 10) {
    print('Número $indice');
    indice++;
  } */
  String decisao = 'sim';

  while (decisao == 'sim') {
    print('Deseja repetir o bloco de repetição?');
    decisao = stdin.readLineSync()!;
  }
}
