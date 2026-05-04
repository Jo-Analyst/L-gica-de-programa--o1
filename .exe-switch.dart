import 'dart:io';

void main() {
  try {
    print("Digite seu peso: ");
    double peso =
        double.parse(stdin.readLineSync()!.toString().replaceAll(',', "."));
    print("Digite sua altura: ");
    double altura =
        double.parse(stdin.readLineSync()!.toString().replaceAll(',', "."));
    double imc = peso / (altura * altura);
    print("Seu IMC é: ${imc.toStringAsFixed(2).replaceAll('.', ",")}");
    switch (imc) {
      case < 18.5:
        print("Você está abaixo do peso");
      case <= 24.9:
        print("Você está com peso normal");
      case <= 29.9:
        print("Você está com sobrepeso");
    }
  } catch (e) {
    print("Erro: ${e.toString().split(":")[1].trim()}");
  }
}
