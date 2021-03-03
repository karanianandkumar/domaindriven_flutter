
import 'package:dartz/dartz.dart';

import '../core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegeX =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegeX).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}


Either<ValueFailure<String>, String> validatePasword(String input) {
  
  if (input.length>6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}
