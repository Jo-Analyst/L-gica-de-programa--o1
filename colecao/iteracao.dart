void main() {
  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Lara', 'idade': 19, 'doc': 121212},
    {'nome': 'Alberth', 'idade': 70, 'doc': 5245},
    {'nome': 'Alexa', 'idade': 5, 'doc': 1442},
  ];

  for (var pessoa in pessoas) {
    print('Nome ${pessoa['nome']}');
  }
}
