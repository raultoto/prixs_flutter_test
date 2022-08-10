import '../failures/failures.dart';
class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation='Se encontré un ValueFailure en un punto irrecuperable. Terminando';
    return Error.safeToString('$explanation Faiulure was : $valueFailure');
  }
}