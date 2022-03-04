import 'package:dartz/dartz.dart';

extension DartzEitherX<L, R> on Either<L, R> {
  L get asLeft => (this as Left<L, R>).value;

  R get asRight => (this as Right<L, R>).value;
}

extension DartzOptionX<A> on Option<A> {
  A get asSome => (this as Some<A>).value;
}
