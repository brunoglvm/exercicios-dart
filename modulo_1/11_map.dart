main() {
  List<Map<String, Object>> alunos = [
    {"nome": "Fernanda", "nota": 8.8},
    {"nome": "Luisa", "nota": 7.8},
    {"nome": "Daniel", "nota": 5.8},
    {"nome": "Bonieky", "nota": 6.2},
    {"nome": "Guanabara", "nota": 6.8},
    {"nome": "Vitor", "nota": 9.3},
  ];

  String Function(Map<String, Object>) pegarApenasNome = (n) =>
      n["nome"] as String;
  int Function(String) qtdeDeLetras = (n) => n.length;

  print(alunos.map(pegarApenasNome));
  print(alunos.map(pegarApenasNome).map(qtdeDeLetras));
}
