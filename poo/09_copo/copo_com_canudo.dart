import 'copo.dart';

class CopoComCanudo extends Copo {
  final String _corCanudo;

  CopoComCanudo({
    required String corCanudo,
    required super.capacidade,
    super.volumeAtual,
  }) : _corCanudo = corCanudo;

  get corCanudo => _corCanudo;
}
