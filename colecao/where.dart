void main() {
  List<String> nomes = ['Alberto', 'Bruno', 'Carlos', 'Daniel', 'Eduardo'];

  var nomeFiltrado = nomes.where((nome) => nome == 'Bruno').toList();
  print(nomeFiltrado);

  List<String> frutas = [
    'Laranja',
    'Jabuticaba',
    'Pera',
    'Limão',
    'Jatobá',
    'Tomate',
    "Amendoin",
  ];

  print(frutas.where((f) => f.contains('o')).toList());

  List<int> numeros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  var numerosPares = numeros.where((n) => n % 2 == 0).toList();

  print(numerosPares);
}
