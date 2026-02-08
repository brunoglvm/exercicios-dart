List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];

  for (E el in lista) {
    if (fn(el)) {
      listaFiltrada.add(el);
    }
  }
  return listaFiltrada;
}

main() {
  List<double> notas = [6, 7.5, 3.2, 9.5, 8, 7.4, 8.2, 5.3];

  final notasBoasFn = (double n) => n >= 7;

  print(filtrar(notas, notasBoasFn));

  print("------");

  List<String> nomes = ["Fernanda", "Luisa", "Daniel", "Bonieky", "Guanabara"];

  print(filtrar(nomes, (String n) => n.length >= 6));
}
