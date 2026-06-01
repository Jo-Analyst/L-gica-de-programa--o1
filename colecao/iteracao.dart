void main() {
  List<String> nomes = ['Alberto', 'Bruno', 'Carlos', 'Daniel', 'Eduardo'];

  /* for(var nome in nomes){
    print(nome);
  } */

  nomes.forEach((nome) {
    print(nome);
  });

  nomes.removeWhere((nome) => nome.toLowerCase().contains('a'));

  nomes.forEach((nome) {
    print(nome);
  });

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Alberto', 'idade': 20},
    {'nome': 'Bruno', 'idade': 21},
    {'nome': 'Carlos', 'idade': 22},
    {'nome': 'Daniel', 'idade': 23},
    {'nome': 'Eduardo', 'idade': 24},
  ];

  pessoas.removeWhere((pessoa) => pessoa['idade'] > 22);

  pessoas.forEach((pessoa) {
    print('${pessoa['nome']} tem ${pessoa['idade']} anos');
  });
}
