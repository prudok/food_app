import 'package:intl/intl.dart';

abstract class AppDate {
  static String dateNow(String locale) {
    return DateFormat.yMMMMd(locale == 'ru' ? 'ru' : 'en').format(
      DateTime.now(),
    );
  }
}
