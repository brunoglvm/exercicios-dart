import 'dart:io';
import 'veiculo.dart';

class Carro extends Veiculo {
  final int _portas;

  Carro({required String marca, required int ano, required int portas})
    : _portas = (portas <= 0)
          ? throw ArgumentError("Portas deve ser maior que 0")
          : portas,
      super(marca: marca, ano: ano);

  int get portas => _portas;

  Future<void> abrirPortaMalas() async {
    print("Abrindo porta malas...");
    await Future.delayed(Duration(seconds: 3));
    print("Porta malas aberto.");
  }

  @override
  void acelerar() {
    super.acelerar();
    stdout.write("carro...\n");
  }
}
