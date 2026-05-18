import 'dart:io';

void main() {
  print('Digite o número para o fatorial;');
  int numeroFatorial = int.parse(stdin.readLineSync()!);

  int resultado = fatorial(numeroFatorial);
  print("Número Fatorial é: $resultado");
}

int fatorial(int numeroFatorial) {
  if (numeroFatorial <= 1) {
    return 1;
  }

  return numeroFatorial * fatorial(numeroFatorial - 1);
}
