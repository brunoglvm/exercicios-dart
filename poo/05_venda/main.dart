import 'cliente.dart';
import 'formatar_preco.dart';
import 'produto.dart';
import 'venda.dart';
import 'venda_item.dart';

main() {
  final p1 = Produto(
    codigo: 1,
    nome: "Camiseta",
    precoEmCentavos: 7900,
    desconto: 0.2,
  );

  final p2 = Produto(
    codigo: 2,
    nome: "Boné",
    precoEmCentavos: 4900,
    desconto: 0.1,
  );

  final v1 = Venda(
    cliente: Cliente(nome: "Bruno Galvão", cpf: "111.222.333-44"),
    itens: [
      VendaItem(
        produto: p1,
        quantidade: 2,
        precoEmCentavos: p1.precoComDesconto,
      ),
      VendaItem(
        produto: p2,
        quantidade: 1,
        precoEmCentavos: p2.precoComDesconto,
      ),
    ],
  );

  print(
    "${v1.itens[0].quantidade} ${v1.itens[0].quantidade > 1 ? p1.nome + 's' : p1.nome} com desconto: ${(p1.precoComDesconto * v1.itens[0].quantidade).emReais}",
  );
  print(
    "${v1.itens[1].quantidade} ${v1.itens[1].quantidade > 1 ? p2.nome + 's' : p2.nome} com desconto: ${(p2.precoComDesconto * v1.itens[1].quantidade).emReais}",
  );
  print("Valor total: ${v1.valorTotal.emReais}");
}
