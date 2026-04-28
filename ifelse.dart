import 'dart:io';

void main() {
  print('Digite a sua idade: ');
  int idade = int.parse(stdin.readLineSync()!);

  if (idade >= 18)
    print("Você é adulto");
  else if (idade >= 12) 
    print("Você é adolescente");
  else 
  print("Você é criança");
}
