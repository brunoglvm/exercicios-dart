abstract class Midia {
  final int _duracao;

  Midia(this._duracao);

  int get duracao => _duracao;
  int get minutos => _duracao ~/ 60;
  int get segundos => _duracao % 60;

  void reproduzir();
  void pausar();

  void obterDuracao() =>
      print("Duração: $minutos:${segundos.toString().padLeft(2, "0")}");
}
