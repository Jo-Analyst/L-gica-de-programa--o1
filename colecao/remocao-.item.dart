void main() {
  List<String> modeloCarro = [
    'Gol',
    'Uno',
    'Celta',
    'Toro',
    'RAM',
    'Tesla',
    'Saveiro',
  ];

  print(modeloCarro);
  modeloCarro.remove('Celta');
  print(modeloCarro);

  modeloCarro.removeAt(5);
  print(modeloCarro);

  var contemModelo = modeloCarro.contains('Saveiro');
  print(contemModelo);
}
