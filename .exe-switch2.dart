import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o primeiro valor para calcular ");
  double numero1 = double.parse(stdin.readLineSync()!);
  print("Digite o segundo valor para calcular ");
  double numero2 = double.parse(stdin.readLineSync()!);
  print("Digite:\n 1 para somar \n 2 para subtrair \n 3 para multiplicar \n 4 para dividir \n 5 para calcular o resto da divisão \n 6 para calcular a potência \n 0 para sair \n ");
  String operacao = stdin.readLineSync()!;
  switch (operacao) {
    case "1":
      print("O resultado da soma é: ${numero1 + numero2}");
    case "2":
      print("O resultado da subtração é: ${numero1 - numero2}");
    case "3":
      print("O resultado da multiplicação é: ${numero1 * numero2}");
    case "4":
      print("O resultado da divisão é: ${numero1 / numero2}");
    case "5":
      print("O resultado do resto da divisão é: ${numero1 % numero2}");
    case "6":
      print("O resultado da potência é: ${pow(numero1, numero2)}");
    case "7":
      print("Programa encerrado");
      break;
    default:
      print("Operação inválida");
  }
}