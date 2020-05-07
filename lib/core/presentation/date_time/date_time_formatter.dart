import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@lazySingleton
class DateTimeFormatter {
  String format(String date, String pattern) {
    final parsedDate = DateTime.parse(date).toLocal();
    return DateFormat(pattern).format(parsedDate);
  }
}
