import 'package:bloc/bloc.dart';
import 'package:seat_reservation/core/extensions/stack_trace_ext.dart';

import 'log/i_log.dart';

class CustomCubitObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    log.debug('${bloc.runtimeType} created');
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    final nextState = change.nextState;

    final String? from = _toString(change.currentState);
    final String? to = _toString(nextState);

    final String message = "${bloc.runtimeType}'s state changed\n"
        '  From:      $from\n'
        '  To:        $to';

    log.debug(message);
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log.error('${bloc.runtimeType} failed\n'
        '  error:  $error\n'
        '  ${stackTrace.toStringShort(indent: "  ")}');

    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    log.debug('${bloc.runtimeType} closed');
    super.onClose(bloc);
  }

  String? _toString<T>(T object) {
    if (object == null) return null;
    return RegExp('[a-zA-Z].*').firstMatch(object.runtimeType.toString())?[0];
  }
}
