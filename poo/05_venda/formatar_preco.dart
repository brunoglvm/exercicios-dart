extension FormatarPreco on num {
  String get emReais {
    final reais = this / 100;
    return 'R\$${reais.toStringAsFixed(2)}';
  }
}
