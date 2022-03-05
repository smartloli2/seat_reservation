import 'package:flutter/foundation.dart';
import 'package:seat_reservation/core/extensions/string_ext.dart';

enum MainTabs { home, history }

extension MainPageNameExt on MainTabs {
  String get name => describeEnum(this).capitalize();
}
