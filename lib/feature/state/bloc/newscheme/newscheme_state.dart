part of 'newscheme_bloc.dart';

@freezed
class NewschemeState with _$NewschemeState {
  const factory NewschemeState.createUserSuccess(
      {required CreateUserOutModel outuser}) = CreateUserSuccess;

  const factory NewschemeState.createUserFailed({required String error}) =
      CreateUserFailed;

  const factory NewschemeState.creatingUserLoading() = CreatingUserLoading;
  const factory NewschemeState.newSchemeInitial() = NewSchemeInitial;

  factory NewschemeState.initial() => const NewschemeState.newSchemeInitial();
}
