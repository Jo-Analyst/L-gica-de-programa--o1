// Objetivo: mini calculadora no terminal com menu de operações.
// Conceitos: leitura (stdin), parse double, switch, operações e pow (dart:math).

import 'dart:io';
import 'dart:math';

void main() {
  // Lê o primeiro número para a calculadora.
  print("Digite o primeiro valor para calcular ");
  double numero1 = double.parse(stdin.readLineSync()!);

  // Lê o segundo número para a calculadora.
  print("Digite o segundo valor para calcular ");
  double numero2 = double.parse(stdin.readLineSync()!);

  // Mostra o menu de operações.
  print("Digite:\n 1 para somar \n 2 para subtrair \n 3 para multiplicar \n 4 para dividir \n 5 para calcular o resto da divisão \n 6 para calcular a potência \n 0 para sair \n ");

  // Lê a opção escolhida como texto.
  String operacao = stdin.readLineSync()!;

  // switch: escolhe o cálculo com base na operação escolhida.
  switch (operacao) {
    case "1":
      // Soma
      print("O resultado da soma é: ${numero1 + numero2}");
    case "2":
      // Subtração
      print("O resultado da subtração é: ${numero1 - numero2}");
    case "3":
      // Multiplicação
      print("O resultado da multiplicação é: ${numero1 * numero2}");
    case "4":
      // Divisão
      print("O resultado da divisão é: ${numero1 / numero2}");
    case "5":
      // Resto da divisão (módulo)
      print("O resultado do resto da divisão é: ${numero1 % numero2}");
    case "6":
      // Potência (usa pow do dart:math)
      print("O resultado da potência é: ${pow(numero1, numero2)}");
    case "7":
    case "0":
      // Encerramento (observação: o menu menciona "0 para sair", mas aqui está "7").
      print("Programa encerrado");
      break;
    default:
      // Qualquer opção diferente das previstas.
      print("Operação inválida");
  }
}