class Abajur {
  bool _lampada;
  int _intensidade;

  Abajur({lampada = false, intensidade = 0})
    : this._lampada = lampada,
      this._intensidade = intensidade;

  bool _ligaDesligaLampada() {
    _lampada = _intensidade > 0;
    return _lampada;
  }

  int _controlaIntensidade() {
    _intensidade += 1;

    if (_intensidade == 4) _intensidade = 0;
    return _intensidade;
  }

  void mostrarStatus() {
    String descricaoIntensidade = "";

    switch (_intensidade) {
      case 1:
        descricaoIntensidade = "fraca";
        break;
      case 2:
        descricaoIntensidade = "média";
        break;
      case 3:
        descricaoIntensidade = "Forte";
        break;
    }

    print(
      "Lampada: ${_lampada ? "ligada" : "desligada"}\nIntensidade: ${_intensidade} ${descricaoIntensidade}",
    );
  }

  void acoes() {
    _controlaIntensidade();
    _ligaDesligaLampada();
  }
}
