class Cachorro {
  late String nome;
  late String _raca;
  late int idade;

  set racaSet(String raca) {
    _raca = raca;
  }

  String get raca => this._raca.toUpperCase();

  void latir() {
    print('au au');
    print(this.raca);
  }
}
