import 'video.dart';
import 'musica.dart';
import 'podcast.dart';

/* Conceitos de POO usados nesta atividade:
 - Abstração (classe abstrata Midia com métodos abstratos e método concreto compartilhado)
 - Herança (Musica, Podcast e Video estendem Midia)
 - Encapsulamento (atributos privados com _ + getters)
 - Polimorfismo por sobrescrita (@override em métodos abstratos)
*/

main() {
  final Video v1 = Video(duracao: 1280, resolucao: "2160p");

  v1.reproduzir();
  v1.pausar();
  print("Resolução: ${v1.resolucao}");
  v1.obterDuracao();

  print("--------");

  final Musica m1 = Musica(duracao: 208, artista: "BNO");
  m1.reproduzir();
  m1.pausar();
  print("Artista: ${m1.artista}");
  m1.obterDuracao();

  print("--------");

  final Podcast p1 = Podcast(duracao: 2478, apresentador: "Tuoto");
  p1.reproduzir();
  p1.pausar();
  print("Apresentador: ${p1.apresentador}");
  p1.obterDuracao();
}
