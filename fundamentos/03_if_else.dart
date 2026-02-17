import "dart:math";

main() {
  final nota = Random().nextInt(11);

  print('Nota: $nota');
  if (nota >= 6)
    print("Aprovado!");
  else if (nota >= 4)
    print("Recuperação");
  else
    print("Reprovado! ");
}
