import 'formatar_data.dart';
import 'notificavel.dart';

class EmailNotificacao implements Notificavel {
  @override
  void enviarMensagem(String mensagem) {
    final dataHoraAtual = DateTime.now();
    print('''
+------------------------------+
| NOTIFICAÇÃO POR E-MAIL       |
+------------------------------+
| Data: ${dataHoraAtual.dataHoraFormatada}
| Mensagem: $mensagem
+------------------------------+
''');
  }
}
