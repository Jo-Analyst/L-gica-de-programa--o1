void main() {
  Map<String, dynamic> produto = {
    'nome': 'Notebook',
    'preço': 2500.99,
    'quantidade': 15,
  };

  print(produto['nome']);

  Map<int, String> pessoa = {15: 'Mary Jane', 1: 'Peter Parker'};

  print(pessoa[1]);
}
