import 'formatar_data.dart';
import 'notificavel.dart';

class SmsNotificacao implements Notificavel {
  @override
  void enviarMensagem(String mensagem) {
    final dataHoraAtual = DateTime.now();
    print('''
+------------------------------+
| NOTIFICAÇÃO POR SMS          |
+------------------------------+
| Data: ${dataHoraAtual.dataHoraFormatada}
| Mensagem: $mensagem
+------------------------------+
''');
  }
}
