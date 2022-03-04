extension StringX on String? {
  static final RegExp whitespacePattern = RegExp(r'\s');

  String capitalize() => "${this![0].toUpperCase()}${this!.substring(1)}";

  bool get hasWhitespaces => whitespacePattern.hasMatch(this ?? '');

  /// Returns true if string is: null, empty or whitespace string.
  bool get isNullEmptyOrWhitespace =>
      this == null || this!.isEmpty || this!.trim().isEmpty;
}
