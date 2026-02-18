import "./produto.dart";

class VendaItem {
  final Produto produto;
  final int quantidade;
  final int precoEmCentavos;

  VendaItem({
    required this.produto,
    required this.quantidade,
    required this.precoEmCentavos,
  });
}
