class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro({required this.velocidadeMaxima});

  int get velocidadeAtual {
    return _velocidadeAtual;
  }

  set velocidadeAtual(int valor) {
    if (valor < 0) {
      _velocidadeAtual = 0;
    } else if (valor > velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual = valor;
    }
  }

  int acelerar() {
    if (_velocidadeAtual + 5 >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      _velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  }

  int frear() {
    if (_velocidadeAtual - 5 <= 0) {
      _velocidadeAtual = 0;
    } else {
      _velocidadeAtual -= 5;
    }
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }

  bool estaParado() {
    return velocidadeAtual == 0;
  }
}
