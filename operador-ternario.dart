import 'dart:io';

void main() {
  print("Digite a sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  String mensagem =
      idade >= 18 ? 'Você é maior de idade' : "Você é menor de idade";

  print(mensagem);

  /* if (idade >= 18)
    mensagem = "Você é maior de idade";
  else
    mensagem = "Você é menor de idade";
    */
}
