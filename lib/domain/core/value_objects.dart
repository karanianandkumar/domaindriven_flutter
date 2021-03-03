
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../core/failures.dart';


abstract class ValueObject<T> {
  

  const ValueObject();

  Either<ValueFailure<T>,T> get value;


  @override
  String toString() => 'Value($value)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

}

