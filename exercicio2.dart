import 'dart:io';

void main() {
  print('Digite a idade: ');
  int idade = int.parse(stdin.readLineSync()!);

  print('digite a altura: ');
  double altura = double.parse(stdin.readLineSync()!);

  if (idade >= 18 && altura >= 1.7) 
  print('Você pode se alistar');
  else
  print('Você não pode se alistar');
}
