import 'package:intl/intl.dart';

extension FormatarData on DateTime {
  String get dataHoraFormatada {
    return DateFormat('dd/MM/yyyy HH:mm').format(this);
  }
}
