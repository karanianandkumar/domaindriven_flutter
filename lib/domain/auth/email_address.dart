
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../core/failures.dart';

@immutable
class EmailAddress {
  final Either<ValueFailure<String>,String> value;

  factory EmailAddress(String input){
    assert(input!=null);
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(
    this.value,
  );


  @override
  String toString() => 'EmailAddress(value: $value)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is EmailAddress &&
      o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

Either<ValueFailure<String>,String> validateEmailAddress(String input){

  const emailRegeX= r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if(RegExp(emailRegeX).hasMatch(input)){
    return right(input);
  }else{
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}
