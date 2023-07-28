import 'package:intl/intl.dart';

abstract class AppDate {
  static String dateNow(String locale) {
    if (locale == 'ru' || locale == 'en') {
      return DateFormat.yMMMMd(locale).format(DateTime.now());
    } else {
      return 'no locale found';
    }
  }
}
