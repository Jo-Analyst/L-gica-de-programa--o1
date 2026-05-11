import 'dart:io';

void main() {
  String decisao;
  print('\n' + '=' * 30);
  print("Gerador de tabuada");
  print('\n' + '=' * 30);

  print('\n Até qual número você que ver a tabuada?');
  int valor = int.parse(stdin.readLineSync()!);

  do {
    for (int j = 1; j <= valor; j++) {
      print('\n Tabuada do $j \n');
      for (int i = 1; i <= 10; i++) {
        int result = i * j;
        print('$i x $j = $result');
      }
    }

    print('Deseja continuar a tabuada?');
    decisao = stdin.readLineSync()!;
  } while (decisao.toLowerCase() == 'sim');
}
