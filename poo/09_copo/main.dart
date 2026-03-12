import 'copo.dart';
import 'copo_com_canudo.dart';

main() {
  final Copo copo1 = Copo(capacidade: 250, volumeAtual: 50);
  copo1.encherCopo(120);
  copo1.encherCopo(50);

  print(
    "Copo\n"
    "Capacidade: ${copo1.capacidade}ml\n"
    "Volume atual: ${copo1.volumeAtual}ml\n"
    "----------",
  );

  final CopoComCanudo copoC1 = CopoComCanudo(
    corCanudo: "azul",
    capacidade: 500,
  );

  copoC1.encherCopo(50);

  print(
    "Copo com canudo ${copoC1.corCanudo}\n"
    "Capacidade: ${copoC1.capacidade}ml\n"
    "Volume atual: ${copoC1.volumeAtual}ml\n"
    "----------",
  );
}
