main() {
  List<Map<String, Object>> alunos = [
    {"nome": "Fernanda", "nota": 8.8},
    {"nome": "Luisa", "nota": 7.8},
    {"nome": "Daniel", "nota": 5.8},
    {"nome": "Bonieky", "nota": 6.2},
    {"nome": "Guanabara", "nota": 6.8},
    {"nome": "Vitor", "nota": 9.3},
  ];

  final notasFinais = alunos.map((aluno) => aluno["nota"] as double).toList();

  final total = notasFinais.reduce((acc, curr) => acc + curr);

  print('O valor da média é: ${total / alunos.length}');
}
