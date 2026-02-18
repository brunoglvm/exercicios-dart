class Produto {
  final int codigo;
  final String nome;
  int _precoEmCentavos;
  double _desconto;

  Produto({
    required this.codigo,
    required this.nome,
    required int precoEmCentavos,
    double desconto = 0,
  }) : _precoEmCentavos = 0,
       _desconto = 0 {
    this.precoEmCentavos = precoEmCentavos;
    this.desconto = desconto;
  }

  int get precoEmCentavos => _precoEmCentavos;
  set precoEmCentavos(int value) {
    if (value < 0) {
      throw ArgumentError.value("o preço não pode ser negativo: $value");
    }

    _precoEmCentavos = value;
  }

  double get desconto => _desconto;
  set desconto(double value) {
    if (value < 0 || value > 1) {
      throw ArgumentError.value("o desconto deve estar entre 0 e 1: $value");
    }

    _desconto = value;
  }

  int get precoComDesconto => ((1 - _desconto) * _precoEmCentavos).round();
}
