import 'midia.dart';

class Podcast extends Midia {
  final String _apresentador;

  Podcast({required String apresentador, required int duracao})
    : _apresentador = apresentador,
      super(duracao);

  String get apresentador => _apresentador;

  @override
  void reproduzir() => print("Reproduzindo podcast...");

  @override
  void pausar() => print("Podcast pausado");
}
