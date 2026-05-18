import 'dart:io';

void main() {
  print("Digite a base do retângulo para calcular a área");
  double base = double.parse(stdin.readLineSync()!);
  print("Digite a base do retângulo para calcular a área");
  double altura = double.parse(stdin.readLineSync()!);

  double area = calcularAreaRetangulo(base, altura);
  print('A área do retângulo é ${area}cm²');
}

double calcularAreaRetangulo(double base, double altura) {
  return base * altura;
}
