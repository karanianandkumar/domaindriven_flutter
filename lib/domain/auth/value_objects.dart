import 'package:domaindriven_flutter/domain/auth/value_validators.dart';
import 'package:domaindriven_flutter/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:domaindriven_flutter/domain/core/value_objects.dart';
import 'package:flutter/material.dart';

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
