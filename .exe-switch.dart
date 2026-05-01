import 'dart:io';

void main() {
  print("Digite seu peso: ");
  double peso = double.parse(stdin.readLineSync()!);
  print("Digite sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  double imc = peso / (altura * altura);
  print("Seu IMC é: $imc");
  switch (imc) {
    case < 18.5:
      print("Você está abaixo do peso");
    case  >= 18.5 && <= 24.9:
      print("Você está com peso normal");
    case  >= 25 && <= 29.9:
      print("Você está com sobrepeso");
  }
}
