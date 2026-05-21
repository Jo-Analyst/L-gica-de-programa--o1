import 'dart:io';

void main() {
  print('Digite o número para o fatorial');
  int numero = int.parse(stdin.readLineSync()!);

  int resultadoFatorial = fatorial(numero);

  print("O fatorial do $numero é $resultadoFatorial");
}

int fatorial(int numero) {
  if (numero == 0) return 1;

  return numero * fatorial(numero - 1);
}
