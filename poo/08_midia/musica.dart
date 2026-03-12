import 'midia.dart';

class Musica extends Midia {
  final String _artista;

  Musica({required String artista, required int duracao})
    : _artista = artista,
      super(duracao);

  String get artista => _artista;

  @override
  void reproduzir() => print("Reproduzindo música...");

  @override
  void pausar() => print("Música pausada");
}
