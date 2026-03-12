import 'midia.dart';

class Video extends Midia {
  final String _resolucao;

  Video({required int duracao, String resolucao = "1080p"})
    : _resolucao = resolucao,
      super(duracao);

  String get resolucao => _resolucao;

  @override
  void reproduzir() => print("Reproduzindo vídeo...");

  @override
  void pausar() => print("Vídeo pausado");
}
