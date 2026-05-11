// Objetivo: mapear um número (1 a 7) para o dia da semana usando switch.
// Conceitos: String, switch/case/default, comparação por valor.

void main() {
  // Valor (como texto) que representa o dia da semana.
  // 1=Domingo, 2=Segunda, ..., 7=Sábado.
  String diaDaSemana = '1';

  // switch: escolhe um bloco com base no valor de "diaDaSemana".
  switch (diaDaSemana) {
    case '1':
      print('Domingo');
    case '2':
      print('Segunda-Feira');
    case '3':
      print('Terça-Feira');
    case '4':
      print('Quarta-Feira');
    case '5':
      print("Quinta-Feira");
    case '6':
      print('Sexta Feira');
    case '7':
      print('Sábado');
    default:
      // Executa se nenhum case acima corresponder.
      print('Este número não corresponde ao dia da semana.');
  }
}
