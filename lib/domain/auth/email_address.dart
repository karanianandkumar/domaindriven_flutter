
import 'package:meta/meta.dart';

@immutable
class EmailAddress {
  final String value;

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

String validateEmailAddress(String input){

  const emailRegeX= r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if(RegExp(emailRegeX).hasMatch(input)){
    return input;
  }else{
    throw InvalidEmailException(failedValue: input);
  }
}

class InvalidEmailException implements Exception{
  final String failedValue;
  const InvalidEmailException({@required this.failedValue});
}
