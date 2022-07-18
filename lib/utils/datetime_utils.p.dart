import 'package:intl/intl.dart';

class DatetimeUtils {
  DatetimeUtils._();
  static const _weekdayFormat = 'EE';
  static const _monthFormat = 'MMMM';
  static const _timeFormat = 'Hm';
  static const _dateTimeFormat = 'MMM dd,yyyy';
  static const _dateFormat = 'EEE d MMM';

  static String _format(DateTime d, {String? format}) {
    try {
      return DateFormat(format).format(d);
    } catch (e) {
      return '-';
    }
  }

  static String monthFormat(DateTime? d) {
    if (d == null) {
      return '-';
    }
    return _format(d, format: _monthFormat);
  }

  static String dateFormat(DateTime? d) {
    if (d == null) {
      return '-';
    }
    return _format(d, format: _dateFormat);
  }

  static String timeFormat(DateTime? d) {
    if (d == null) {
      return '-';
    }
    return _format(d, format: _timeFormat);
  }

  static String dateTimeFormat(DateTime? d) {
    if (d == null) {
      return '-';
    }
    return _format(d, format: _dateTimeFormat);
  }

  static String weekdayFormat(DateTime? d) {
    if (d == null) {
      return '-';
    }
    return _format(d, format: _weekdayFormat);
  }
}
