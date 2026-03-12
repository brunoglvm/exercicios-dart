import 'carro.dart';
import 'moto.dart';

main() {
  final Carro c1 = Carro(marca: "Renault", ano: 1993, portas: 4);
  c1.abrirPortaMalas();
  c1.acelerar();
  final Moto m1 = Moto(marca: "Honda", ano: 2016, temPartidaEletrica: true);
  m1.inclinarEmCurva();
  m1.acelerar();
}
