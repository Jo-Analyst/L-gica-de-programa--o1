import 'dart:io';

void main(){
  print("Digite o número para a tabuada: ");
  int numero = int.parse(stdin.readLineSync()!);

  int i = 1;
  for(i; i <= 10; i++){
    int result = numero  * i;
    print('$numero x  $i = $result');
  }
}