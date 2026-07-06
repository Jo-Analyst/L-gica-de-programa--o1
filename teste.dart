void main() {
  try {
    String a = '1';

    int numero = int.parse(a);

    print(numero);
  } catch (e) {
    print('Erro na conversão $e');
  }
}
