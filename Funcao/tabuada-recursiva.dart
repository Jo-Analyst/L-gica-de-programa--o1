import 'dart:io';

void tabuada(int valor, {int limiteNumero = 1}) {
  if (limiteNumero <= 10) {
    print('$valor * $limiteNumero = ${valor * limiteNumero}');
    tabuada(valor, limiteNumero: limiteNumero + 1);
  }
}

void main() {
  print('Digite o número para a tabuada');
  int numero = int.parse(stdin.readLineSync()!);

  tabuada(numero);
}
