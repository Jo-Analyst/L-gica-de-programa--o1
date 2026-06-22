class Carro {
  String marca;
  String modelo;
  int anoFabricacao;
  int anoModelo;
  double preco;

  Carro({
    required this.marca,
    required this.modelo,
    this.anoFabricacao = 2019,
    this.anoModelo = 2020,
    required this.preco,
  });
}
