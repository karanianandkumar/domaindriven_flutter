import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:domaindriven_flutter/domain/auth/auth_failure.dart';
import 'package:domaindriven_flutter/domain/auth/i_auth_facade.dart';
import 'package:domaindriven_flutter/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  IAuthFacade iAuthFacade;
  SignInFormBloc(this.iAuthFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}