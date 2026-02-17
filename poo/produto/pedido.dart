import "produto.dart";

class Pedido {
  final Produto _produto;
  int _quantidade;

  Pedido({required Produto produto, required int quantidade})
    : _produto = produto,
      _quantidade = quantidade;

  int get quantidade => _quantidade;

  int get valorTotal => _produto.precoEmCentavos * _quantidade;

  String get valorTotalFormatado =>
      "R\$ ${(valorTotal / 100).toStringAsFixed(2)}";

  set quantidade(int novaQuantidade) {
    if (novaQuantidade <= 0) {
      throw ArgumentError("A quantidade deve ser maior que zero.");
    }

    _quantidade = novaQuantidade;
  }
}
