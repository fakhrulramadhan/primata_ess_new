part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

//event ambilnya dari request model
class DoLoginEvent extends LoginEvent {
  final LoginRequestModel model;
  DoLoginEvent({
    required this.model,
  });
}
