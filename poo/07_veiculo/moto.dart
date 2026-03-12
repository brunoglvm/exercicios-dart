import 'dart:io';
import 'veiculo.dart';

class Moto extends Veiculo {
  final bool _temPartidaEletrica;

  Moto({
    required String marca,
    required int ano,
    required bool temPartidaEletrica,
  }) : _temPartidaEletrica = temPartidaEletrica,
       super(ano: ano, marca: marca);

  bool get temPartidaEletrica => _temPartidaEletrica;

  Future<void> inclinarEmCurva() async {
    print("Inclinando em curva...");
    await Future.delayed(Duration(seconds: 3));
    print("Moto inclinada.");
  }

  @override
  void acelerar() {
    super.acelerar();
    stdout.write("Moto...\n");
  }
}
