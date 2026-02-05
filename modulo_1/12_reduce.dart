main() {
  List<double> notas = [8.0, 3.5, 4.5, 7.8, 9.3, 10, 5.2];

  var soma = notas.reduce((acc, curr) => acc + curr);

  print(soma.toStringAsFixed(1));
}
