part of 'registration_bloc.dart';

@freezed
abstract class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.todo() = Todo;
}
