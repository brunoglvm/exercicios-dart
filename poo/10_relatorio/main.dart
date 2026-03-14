import 'gerar_relatorio.dart';
import 'salvar_arquivo.dart';
import 'enviar_email.dart';

/* Princípio da Responsabilidade Única (SRP):
 Cada classe deve ter apenas um único motivo para mudar.
 Nesta atividade, as responsabilidades foram separadas em três classes:
 uma para gerar o relatório, outra para salvar em arquivo e outra para enviar por e-mail.
*/

void main() {
  final gerador = GerarRelatorio();
  final arquivo = SalvarArquivo();
  final email = EnviarEmail();

  final relatorio = gerador.gerar("atv_01.pdf");

  arquivo.salvar(relatorio);
  email.enviar(relatorio);
}
