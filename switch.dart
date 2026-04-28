import 'dart:io';

void main() {
  print("Digite uma marca de carro: ");
  String marcaCarro = stdin.readLineSync()!;

  switch (marcaCarro) {
    case "vw":
      print("O melhor é GOL");
    case "gm":
      print("O melhor modelo o opala");
    case "Honda":
      print("O melhor modelo é o Civic");
    case "Fiat":
      print("O melhor é o Uno");
    case "Ford":
      print('O melhor é éo Fiesta');
  }
}

 /* void main() {
  print('Digite o número que representa o Mês');
  String numeroMes = stdin.readLineSync()!;

  switch (numeroMes) {
    case "1":
      print("Janeiro");
    case "2":
      print('Fevereiro');
    case "3":
      print('Março');
    case "4":
      print("Abril");
    case '5':
      print('Maio');
    case '6':
      print('Junho');
    case '7':
      print('Julho');
    case '8':
      print('Agosto');
    case '9':
      print('Setembro');
    case '10':
      print('Outubro');
    case '11':
      print('Novembro');
    case '12':
      print('Dezembro');
    default:
      print('Este número não representa o mês');
  }
}



void main() {
  print('Digite o número que representa o Mês');
  String numeroMes = stdin.readLineSync()!;

  if (numeroMes == '1') print("janeiro");
  else if(numeroMes == '2') print('Fevereiro')
}

*/

// if else
// switch

/*
void main() {
  String cor = 'black';

  switch (cor) {
    case "blue":
      print('A cor é azul');
    case "green":
      print("A cor é verde");
    case "yellow":
      print("A cor é amarelo");
    default:
      print("Não temos essa cor na base");
  }

  /* if (cor == 'verde')
    print('A cor é verde.');
  else
    print('A cor recebida não é verde'); */
}*/
