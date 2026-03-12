class Copo {
  int _capacidade;
  int _volumeAtual;

  Copo({required int capacidade, int volumeAtual = 0})
    : _capacidade = (capacidade <= 0)
          ? throw ArgumentError("A capacidade deve ser maior que zero.")
          : capacidade,
      _volumeAtual = (volumeAtual < 0 || volumeAtual > capacidade)
          ? throw ArgumentError("Volume inicial inválido.")
          : volumeAtual;

  int get capacidade => _capacidade;
  int get volumeAtual => _volumeAtual;

  int encherCopo(int ml) {
    if (ml <= 0) {
      throw ArgumentError("A quantidade deve ser maior que zero.");
    }

    if (_volumeAtual + ml > _capacidade) {
      throw ArgumentError("Este volume excede a capacidade do copo.");
    }

    _volumeAtual += ml;
    return _volumeAtual;
  }
}
