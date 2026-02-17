import 'dart:io';

main() {
  stdout.write('Está chovendo? (S/N) ');
  bool estaChovendo = stdin.readLineSync()!.toLowerCase() == "s";

  stdout.write('Está frio? (S/N) ');
  bool estaFrio = stdin.readLineSync()!.toLowerCase() == "s";

  print(
    '${estaChovendo ? "Leve guarda-chuva" : "Não precisa de guarda-chuva"} e ${estaFrio ? "use casaco" : "não precisa de casaco"}',
  );
}
