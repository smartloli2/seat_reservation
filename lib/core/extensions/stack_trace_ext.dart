extension StackTraceX on StackTrace {
  String toStringShort({String? indent, int lineCount = 20}) =>
      toString().split("\n").take(lineCount).join("\n${indent ?? ''}");
}
