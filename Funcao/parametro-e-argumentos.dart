/// Exemplo de **parâmetros nomeados** e **valores padrão** em Dart.
///
/// - **Parâmetro**: variável declarada na assinatura da função (ex.: [mensagem]).
/// - **Argumento**: valor passado na chamada (ex.: `"Testando o parametro..."`).
///
/// Aqui as funções usam chaves `{ }` para parâmetros **nomeados** e opcionais,
/// com `=` para definir o valor **padrão** quando o chamador não informa o argumento.
library;

void main() {
  /* calcular(10, 15, "+");
  calcular(10, 15, "-");
  calcular(10, 15, "*");
  calcular(15, 10, "/"); */

  imprimir(mensagem: "Testando o parametro...");
  calcular(valor1: 60, operador: "*", valor2: 85);
}

/// Imprime [mensagem] no console.
///
/// Se nenhum argumento for passado, usa o texto padrão definido no parâmetro.
void imprimir({String mensagem = "Parametro Opcional"}) {
  print(mensagem);
}

/// Realiza uma operação aritmética simples entre [valor1] e [valor2], conforme [operador].
///
/// Suporta `+`, `-`, `*` e `/`. Qualquer outro valor cai em [operador] inválido.
///
/// Os três parâmetros são nomeados e possuem valores padrão, então a chamada pode
/// omitir qualquer um deles (neste arquivo, [main] passa apenas o que precisa).
void calcular({int valor1 = 15, int valor2 = 3, String operador = '+'}) {
  switch (operador) {
    case '+':
      print('$valor1 + $valor2 = ${valor1 + valor2}');
    case '-':
      print('$valor1 - $valor2 = ${valor1 - valor2}');
    case '*':
      print('$valor1 * $valor2 = ${valor1 * valor2}');
    case '/':
      print('${valor1 * valor2} / $valor1 = $valor2');
    default:
      print("Operador inválido!!!");
  }
}

/// Soma dois números fixos (10 e 15) e imprime o resultado.
///
/// Útil como exemplo mínimo de função sem parâmetros; não recebe argumentos externos.
void somarDoisNumeros() {
  int valor1 = 10;
  int valor2 = 15;

  print('$valor1 + $valor2 = ${valor1 + valor2}');
}
