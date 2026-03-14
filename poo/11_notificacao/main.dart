import 'email_notificacao.dart';
import 'sms_notificacao.dart';
import 'validador_mensagem.dart';

void main() {
  final msg = "Promoção disponível hoje!";
  final email = EmailNotificacao();
  final sms = SmsNotificacao();

  if (ValidadorMensagem.mensagemValida(msg)) {
    email.enviarMensagem(msg);
    sms.enviarMensagem(msg);
  } else {
    print("Mensagem inválida.");
  }
}
