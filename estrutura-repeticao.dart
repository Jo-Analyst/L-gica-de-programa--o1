// Objetivo: demonstrar um laço for com interrupção usando break.
// Conceitos: for, break, contador, condição.

void main() {
  // for: repete um bloco controlado por um contador.
  // i começa em 1; enquanto i < 50, o laço continua; a cada volta, i++.
  for (int i = 1; i < 50; i++) {
    // break: encerra o laço quando i passar de 25.
    if (i > 25) break;

    // Mostra o número atual.
    print('Número $i');
  }
}
