import 'dart:math';

void somarDoisNumeros() => print(
  'Soma dos dois números: ${Random().nextInt(11) + Random().nextInt(11)}',
);

int soma(int n1, int n2) => n1 + n2;

int somarTresNumeros(int n1, int n2, int n3) {
  n1 = Random().nextInt(n1);
  n2 = Random().nextInt(n2);
  n3 = Random().nextInt(n3);

  print('Valores: $n1, $n2, $n3');
  return n1 + n2 + n3;
}

// parâmetros posicionais opcionais [] com valores padrão
void imprimirData([int dia = 1, int mes = 1, int ano = 1970]) {
  print('$dia/$mes/$ano');
}

// parâmetros nomeados obrigatórios {} usando required
void imprimirNomeCompleto({required String nome, required String sobrenome}) {
  print('Nome completo: $nome $sobrenome');
}

main() {
  somarDoisNumeros();

  print("------");

  int resultado = soma(30, 30);
  resultado *= 2;

  print('O dobro do resultado é: $resultado');

  print("------");

  print('Soma dos valores: ${somarTresNumeros(22, 44, 66)}');

  print("------");

  imprimirData();
  imprimirData(6, 8, 2001);

  print("------");

  imprimirNomeCompleto(sobrenome: "Galvão", nome: "Bruno");
}
