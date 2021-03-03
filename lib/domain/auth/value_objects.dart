import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import 'value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}


@immutable
class Password extends ValueObject<String>{
  
  @override
  final Either<ValueFailure<String>, String>  value;

  factory Password(String input){
    assert(input!=null);
    return Password._(validatePasword(input));
  }
  const Password._(this.value);

}
