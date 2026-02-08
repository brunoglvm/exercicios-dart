import 'dart:math';

int somaFn(int a, int b) {
  return a + b;
}

void parOuImpar({required Function fnPar, required Function fnImpar}) {
  final resultado = Random().nextInt(10);
  print('O resultado é: $resultado');
  resultado % 2 == 0 ? fnPar() : fnImpar();
}

int executarPor(int qntd, String Function(String) fn, String valor) {
  var tamanhoTexto = "";

  for (int i = 0; i < qntd; i++) {
    tamanhoTexto += fn(valor);
  }

  return tamanhoTexto.length;
}

main() {
  int Function(int, int) soma = somaFn;
  print(soma(3, 22));

  print("------");

  int Function(int, int) somaAnonima = (x, y) {
    return x + y;
  };
  print(somaAnonima(22, 3));

  print("------");

  final double Function(int, int) divisao = (x, y) => x / y;
  print(divisao(8, 2));

  print("------");

  final void Function() minhaFnPar = () => print("É par!!");
  final void Function() minhaFnImpar = () => print("É impar!!!");
  parOuImpar(fnImpar: minhaFnImpar, fnPar: minhaFnPar);

  print("------");

  final String Function(String) meuPrint = (val) {
    print(val);
    return val;
  };

  final tamanho = executarPor(10, meuPrint, "dart");
  print('A concatenação das linhas geradas possui $tamanho caracteres.');
}
