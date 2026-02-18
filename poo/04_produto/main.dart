import "produto.dart";
import "pedido.dart";

main() {
  Produto produto1 = Produto(nome: "Mesa", precoEmCentavos: 58000);
  Pedido pedido1 = Pedido(produto: produto1, quantidade: 3);

  print(
    "Produto: ${produto1.nome}\n"
    "Preço unitário: ${produto1.precoFormatado}\n"
    "Quantidade: ${pedido1.quantidade}\n"
    "Valor total: ${pedido1.valorTotalFormatado}",
  );

  pedido1.quantidade = 6;

  print(
    "--------------\n"
    "Pedido Atualizado\n"
    "Quantidade: ${pedido1.quantidade}\n"
    "Valor total: ${pedido1.valorTotalFormatado}",
  );
}
