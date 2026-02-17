import 'dart:io';

main() {
  var entrada = "";

  while (entrada != "sair") {
    stdout.write("Digite sair: ");
    entrada = stdin.readLineSync()!.toLowerCase();
  }

  print("Fim!");
}
