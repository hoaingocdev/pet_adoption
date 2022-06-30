import 'package:intl/intl.dart';

class DatetimeUtils {
  DatetimeUtils._();
  static const _dateTimeFormat = 'MMM dd,yyyy';

  static String _format(DateTime d, {String? format}) {
    try {
      return DateFormat(format).format(d);
    } catch (e) {
      return '-';
    }
  }

  static String dateTimeFormat(DateTime? d) {
    if (d == null) {
      return '-';
    }
    return _format(d, format: _dateTimeFormat);
  }
}
