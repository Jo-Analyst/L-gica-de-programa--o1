class Cliente {
  late String _nome;
  late String _dataNascimento;
  late int _idade;

  get nome => _nome.toLowerCase();
  set nome(String nome) {
    _nome = nome.toUpperCase();
  }

  set dataNascimento(String data) {
    var div = data.split('/');
    String month = div[1];
    switch (month) {
      case '01':
        month = 'Janeiro';
      case '02':
        month = 'Fevereiro';
      case '03':
        month = 'Março';
      case '04':
        month = 'Abril';
      case '05':
        month = 'Maio';
      case '06':
        month = 'Junho';
      case '07':
        month = 'Julho';
      case '08':
        month = 'Agosto';
      case '09':
        month = 'Setembro';
      case '10':
        month = 'Outubro';
      case '11':
        month = 'Novembro';
      case '12':
        month = 'Dezembro';
    }

    _dataNascimento = '${div[0]} de $month de ${div[2]}';
  }

  void mostrarIdade() {
    _mostrarIdade();
  }

  void _mostrarIdade() {
    this._idade = 30;
    print('O(A) cliente ${this._nome} nasceu no dia $_dataNascimento e tem ${this._idade} anos');
    print(nome);
  }
}
