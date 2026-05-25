void main() {
  Set<int> numeros = {1, 2, 3, 2};
  print(numeros);

  Set<String> nomes = {'Joelmir', 'Thomás', 'Wenes', 'Eduardo', 'João'};

  print(nomes.toList()[2]);

  nomes.add('Maria');

  print(nomes);

  List<String> listaTemp = [];
  listaTemp = nomes.toList();

  listaTemp.insert(2, 'Valentina');

  nomes = listaTemp.toSet();

  print(nomes);
}
