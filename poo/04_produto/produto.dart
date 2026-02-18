class Produto {
  final String _nome;
  int _precoEmCentavos;

  Produto({required String nome, required int precoEmCentavos})
    : _nome = nome,
      _precoEmCentavos = precoEmCentavos;

  String get nome => _nome;

  int get precoEmCentavos => _precoEmCentavos;

  String get precoFormatado =>
      "R\$ ${(_precoEmCentavos / 100).toStringAsFixed(2)}";

  set precoEmCentavos(int novoPreco) {
    if (novoPreco <= 0) {
      throw ArgumentError("O preço deve ser maior que zero.");
    }

    _precoEmCentavos = novoPreco;
  }
}
