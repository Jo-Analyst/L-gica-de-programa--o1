import 'dart:io';

void main() {
  print('Digite a sigla do estado: ');
  String estado = stdin.readLineSync()!;

  switch (estado.toUpperCase()) {
    case 'SP':
      print('O frete custa R\$ 10,00');
    case 'RJ' || 'MG':
      print('O frete custa R\$ 15,00');
    case 'ES':
      print('O frete custa R\$ 20,00');
    default:
      print('O frete custa R\$ 50,00');
      
  }
}
