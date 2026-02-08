class Data {
  int dia = 0;
  int mes = 0;
  int ano = 0;

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  String obterFormatada() {
    return '${dia}/${mes}/${ano}';
  }

  String toString() {
    return obterFormatada();
  }
}

main() {
  Data d1 = new Data();
  d1.dia = 6;
  d1.mes = 8;
  d1.ano = 2001;

  Data d2 = Data();
  d2.dia = 13;
  d2.mes = 6;
  d2.ano = 1993;

  Data d3 = new Data();

  Data d4 = new Data(8, 12, 1999);

  print('${d1}, ${d2}, ${d3} e ${d4}');
}
