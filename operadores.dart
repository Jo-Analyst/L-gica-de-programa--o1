// Objetivo: demonstrar operadores de comparação e lógicos em Dart.
// Conceitos: operadores (>=, &&), tipos (int/double/bool), expressão booleana.

// Operadores aritméticos

// + somar
// - subtrair
// * multiplicar
// / dividir
// % resto da divisão
// ++ incremento
// -- decremento
// ** potência

void main() {
  // Variável inteira.
  int idade = 18;

  // Variável decimal (double).
  double altura = 1.75;

  // Expressão com operadores de comparação (>=) e lógico (&&).
  // Só será true se idade >= 18 E altura >= 1.7 ao mesmo tempo.
  bool situacao = idade >= 18 && altura >= 1.7;

  // Mostra os valores no console.
  print('Idade: $idade');
  print('Altura: $altura');
  print('Situação: $situacao');
}

// operadores de comparação
/* 
 == igual
 != diferente
 > maior
 < menor
 >= maior ou igual
 <= menor ou igual
*/

// operadores lógicos

/* 
&& -> And (e)
|| -> Or (ou)
*/