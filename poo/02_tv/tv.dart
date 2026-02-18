import 'dart:io';

class Televisao {
  static const String marcaPadrao = "LG";

  String marca;
  int volume;

  Televisao({this.marca = marcaPadrao, this.volume = 0});

  int aumentarVolume() {
    if (volume >= 10) return volume;
    volume++;
    return volume;
  }

  int diminuirVolume() {
    if (volume <= 0) return volume;
    volume--;
    return volume;
  }
}

main() {
  String marcaTv = stdin.readLineSync() ?? Televisao.marcaPadrao;

  Televisao t1 = new Televisao(marca: marcaTv);

  print('TV da marca: ${t1.marca}');

  while (t1.volume < 10) {
    print("Volume: ${t1.aumentarVolume()}");
  }

  print("-------");

  while (t1.volume > 0) {
    print('Volume: ${t1.diminuirVolume()}');
  }
}
