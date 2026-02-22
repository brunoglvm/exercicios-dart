import 'dart:io';
import 'abajur.dart';

main() {
  Abajur a1 = Abajur();

  String? input;

  do {
    stdout.write("Aperte [Enter] ou Digite \"Sair\": ");
    input = stdin.readLineSync()?.toLowerCase();

    if (input == null) break;

    if (input == "") {
      a1.acoes();
      a1.mostrarStatus();
    }
  } while (input != "sair");

  print("Programa encerrado.");
}
