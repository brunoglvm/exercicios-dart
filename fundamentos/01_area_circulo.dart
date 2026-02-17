import 'dart:io';

main() {
  stdout.write('Informe o raio: ');
  const PI = 3.1415;
  final raio = double.parse(stdin.readLineSync()!);

  final area = PI * raio * raio;
  print('O valor da área é: ${area.toString()}');
}
