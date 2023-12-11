part of 'newscheme_bloc.dart';

@freezed
class NewschemeEvent with _$NewschemeEvent {
  const factory NewschemeEvent.createNewUser(
      {required CreateUserInModel userInModel,
      required String dppath,
      required String docfrnt,
      required String? docback}) = CreateNewUserEvent;

  const factory NewschemeEvent.newSchemeLoadingEvent() = NewSchemeLoadingEvent;
}
