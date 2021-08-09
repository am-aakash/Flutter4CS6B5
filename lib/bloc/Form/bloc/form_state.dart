part of 'form_bloc.dart';

abstract class FormState extends Equatable {
  const FormState();

  @override
  List<Object> get props => [];
}

class FormInitial extends FormState {}

class FormLoading extends FormState {}

class FormSuccess extends FormState {}

class FormFailure extends FormState {
  final String messege;

  FormFailure({required this.messege});

  @override
  List<Object> get props => [messege];
}
