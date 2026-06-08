void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var triplo = numeros.map((numero) => numero * 3).toList();
 /*  print(numeros);
  print(triplo); */

  List<String> adjetivos = ['bonito', 'inteligente', 'agressivo', 'sábio', 'pespicaz', 'criativo'];

  var palavrasMaiusculas = adjetivos.map((a) => a.toUpperCase()).toList();
  print(palavrasMaiusculas);

  
}
