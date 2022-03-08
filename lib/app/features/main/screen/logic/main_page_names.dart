import 'package:flutter/foundation.dart';
import 'package:seat_reservation/core/extensions/string_ext.dart';

enum MainPages { home, history }

extension MainPageNameExt on MainPages {
  String get name => describeEnum(this).capitalize();
}
