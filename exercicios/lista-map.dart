void main() {
  List<Map<String, String>> paises = [
    {'nome': 'Brasil', 'capital': 'Brasília'},
    {'nome': 'Estados Unidos', 'capital': 'Washington'},
    {'nome': 'Canadá', 'capital': 'Ottawa'},
    {'nome': 'Argentina', 'capital': 'Buenos Aires'},
  ];

  paises.forEach((pais) => print(pais['capital']));
}
