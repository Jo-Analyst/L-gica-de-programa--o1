import 'dart:io';

void main() {
  print('Digite uma cor: ');
  String cor = stdin.readLineSync()!;

  switch (cor.toLowerCase()) {
    case 'vermelho':
      print('red');
    case 'verde':
      print('green');
    case 'azul':
      print('blue');
    case 'amarelo':
      print('yellow');
    case 'branco':
      print('White');
    case 'preto':
      print('black');
    case 'Laranja':
      print('orange');
    case 'Marron':
      print('brown');
    case 'roxo':
      print('purple');
  }
}
