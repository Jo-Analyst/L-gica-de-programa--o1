import 'carro.dart';
import 'produto.dart';

void main() {
  /*  Produto p1 = Produto('Notebook', 'Notebook Samsung Core i5', 15, 3999.99);
  print(p1.nome);
  print(p1.descricao);
  print(p1.preco);
  print(p1.quantidade);
  print('=' * 30);
  Produto p2 = Produto('Mouse', 'Mouse sem fio', 3, 39.90);
  print('Produto: ${p2.nome}');
  print('Descrição: ${p2.descricao}');
  print('Preço: R\$ ${p2.preco}');
  print('Quantidade: ${p2.quantidade}'); */

  Carro car1 = Carro(modelo: 'City', marca: 'Honda', preco: 78900.00);
  print('Marca: ${car1.marca}');
  print('Modelo: ${car1.modelo}');
  print('Ano de Fabricação: ${car1.anoFabricacao}');
  print('Ano Modelo: ${car1.anoModelo}');
  print('Preço: R\$ ${car1.preco}');
}
