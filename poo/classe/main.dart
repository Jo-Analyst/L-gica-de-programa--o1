import 'classe.dart';

void main() {
  Cachorro dog = Cachorro();
  dog.nome = "Fluke";
  dog.racaSet = "Pastor alemão";
  dog.idade = 3;

  print(dog.nome);
  dog.latir();
}

// import 'pessoa.dart';

// void main() {
//   Pessoa pessoa = Pessoa();
//   pessoa.nome = 'Joelmir Rogério';
//   pessoa.sobrenome = 'Carvalho';

//   pessoa.andar();
//   pessoa.falar();
// }
