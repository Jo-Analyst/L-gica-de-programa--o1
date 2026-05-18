void main() {
  String mensagem = imprimirMensagem();
  print(mensagem);

  var resultado = multiplicart(10, 85);

  print('O resultado da multiplicação é $resultado');
}

int somar(int x, int y) {
  return x + y;
}

String imprimirMensagem() {
  return 'Texto vindo de uma função';
}

int multiplicart(int x, int y) {
  return x * y;
}
