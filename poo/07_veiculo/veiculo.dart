import 'dart:io';

class Veiculo {
  final String _marca;
  final int _ano;

  Veiculo({required String marca, required int ano})
    : _marca = (marca.trim().isEmpty)
          ? throw ArgumentError("Adicione uma marca.")
          : marca.trim(),
      _ano = (ano >= 1886)
          ? ano
          : throw ArgumentError("Adicione uma data valida.");

  String get marca => _marca;
  int get ano => _ano;

  void acelerar() => stdout.write("Acelerando ");
}
