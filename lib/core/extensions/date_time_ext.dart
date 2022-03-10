import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get kmm {
    final DateFormat dateFormat = DateFormat('k:mm');
    return dateFormat.format(this).toLowerCase();
  }

  String get ddmmyy {
    final DateFormat dateFormat = DateFormat('dd.MM.yy');
    return dateFormat.format(this);
  }

  bool get isToday {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    return DateTime(year, month, day) == today;
  }
}
