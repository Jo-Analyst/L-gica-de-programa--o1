class Cliente {
  late String nome;
  late String dataNascimento;
  late int _idade;

  void mostrarIdade() {
    _mostrarIdade();
  }

  void _mostrarIdade() {
    this._idade = 30;
    print('A idade do cliente ${this.nome} é ${this._idade}');
  }
}
