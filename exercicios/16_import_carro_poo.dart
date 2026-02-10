import "./15_carro_poo.dart";

int acelerarCarro(Carro carro) {
  print("Acelerando...");
  while (!carro.estaNoLimite()) {
    carro.acelerar();
    print("A velocidade atual é: ${carro.velocidadeAtual} Km/h");
  }
  print("------------");
  return carro.velocidadeAtual;
}

int frearCarro(Carro carro) {
  print("Freando...");
  while (!carro.estaParado()) {
    carro.frear();
    print("A velocidade atual é: ${carro.velocidadeAtual} Km/h");
  }
  print("------------");
  return carro.velocidadeAtual;
}

main() {
  final c1 = new Carro(velocidadeMaxima: 200);

  c1.velocidadeAtual = 120;
  acelerarCarro(c1);
  frearCarro(c1);
}
