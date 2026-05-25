import 'dart:io';

void main() {
  print('Digite a base do retângulo');
  double b = double.parse(stdin.readLineSync()!);

  print('Digite a altura do retângulo');
  double a = double.parse(stdin.readLineSync()!);

  calcularArea(b, a);
}

void calcularArea(double b, double a) {
  print('A área do retângulo é: ${a * b}cm²');
}
