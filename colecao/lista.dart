void main() {
  List<int> numeros = [3, 10, 5, 8, 854];

  print(numeros);
  print('Quantidade de itens na lista é ${numeros.length}');
  // length retorna o tamanho da lista

  List<String> frutas = ['Maça', 'Pera', 'Uva', "jabuticaba", 'Jatobá'];

  print(frutas[0]);
  print(frutas[4]);

  frutas.add('Laranja');
  print(frutas);

  frutas.insert(1, 'limão');
  print(frutas);

  print(frutas.contains('Maça'));
  var teste = frutas
      .where((teste) => teste.toLowerCase().contains('jabuticaba'))
      .toList();
  print(teste);
}
