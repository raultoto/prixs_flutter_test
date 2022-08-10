import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../errors/errors.dart';
import '../failures/failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject && o.value == value;
  }

  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'Value($value)';

  @override
  int get hashCode => value.hashCode;
}
