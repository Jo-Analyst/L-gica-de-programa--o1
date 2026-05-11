// Objetivo: calcular o IMC e exibir uma classificação simples.
// Conceitos: try/catch, leitura (stdin), parse double, cálculo, switch por faixas.

import 'dart:io';

void main() {
  // try/catch: serve para tratar erros de conversão (parse) e entradas inválidas.
  try {
    // Solicita o peso.
    print("Digite seu peso: ");

    // Lê o texto e troca vírgula por ponto para permitir "70,5" ou "70.5".
    double peso =
        double.parse(stdin.readLineSync()!.toString().replaceAll(',', "."));

    // Solicita a altura.
    print("Digite sua altura: ");

    // Mesma ideia: aceita vírgula ou ponto.
    double altura =
        double.parse(stdin.readLineSync()!.toString().replaceAll(',', "."));

    // Calcula o IMC: peso / (altura * altura).
    double imc = peso / (altura * altura);

    // Mostra o IMC com 2 casas decimais (e troca ponto por vírgula ao exibir).
    print("Seu IMC é: ${imc.toStringAsFixed(2).replaceAll('.', ",")}");

    // switch com faixas (comparações) para classificar o IMC.
    switch (imc) {
      case < 18.5:
        print("Você está abaixo do peso");
      case <= 24.9:
        print("Você está com peso normal");
      case <= 29.9:
        print("Você está com sobrepeso");
    }
  } catch (e) {
    // Se ocorrer algum erro, imprime uma mensagem mais amigável.
    print("Erro: ${e.toString().split(":")[1].trim()}");
  }
}
