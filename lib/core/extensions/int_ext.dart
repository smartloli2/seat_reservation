extension IntX on int {
  String get toZZZString {
    if (this < 10) {
      return '00${this}';
    }
    if (this < 100) {
      return '0${this}';
    }
    return toString();
  }
}
