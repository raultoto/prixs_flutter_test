import 'package:dartz/dartz.dart';
import 'package:prixs_flutter_test/core/failures/failures.dart';
import 'package:prixs_flutter_test/core/value_objects/value_objects.dart';
import 'package:prixs_flutter_test/core/value_validators/value_validators.dart';


class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(this.value);
}

