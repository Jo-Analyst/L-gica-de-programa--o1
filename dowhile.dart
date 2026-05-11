// Objetivo: demonstrar um do-while contando de 0 até 4.
// Conceitos: do-while, contador, incremento.

void main() {
  // Contador para controlar as repetições.
  int indice = 0;

  // do-while: executa o bloco ao menos uma vez antes de testar a condição.
  do {
    // Exibe o valor atual do contador.
    print('Número $indice');

    // Soma 1 ao contador.
    indice++;
  } while (indice < 5);
}
