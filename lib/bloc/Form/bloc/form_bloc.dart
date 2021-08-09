import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'form_event.dart';
part 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  FormBloc() : super(FormInitial());

  @override
  Stream<FormState> mapEventToState(
    FormEvent event,
  ) async* {
    if (event is FormSubmitButtonPressed) {
      yield* _formSubmit(event);
    }
  }

  Stream<FormState> _formSubmit(FormSubmitButtonPressed event) async* {
    yield FormLoading();
    try {
      //api cal
      var res = await profileDao.createProfile(event.name, event.email);
      if (res['status'] == 'success') {
        yield FormSuccess();
      } else if (res['status'] == 'Fail') {
        yield FormFailure(messege: res['message']);
      } else {
        yield FormFailure(messege: "Something Went wroing");
      }
    } catch (e) {
      yield FormFailure(messege: "Something Went wroing");
    }
  }
}
