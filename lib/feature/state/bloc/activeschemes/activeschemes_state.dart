part of 'activeschemes_bloc.dart';

@freezed
class ActiveschemesState with _$ActiveschemesState {
  const factory ActiveschemesState.activeAchemesState(
      {required List<CustomerSchemeModel>? schemes}) = ActiiveAchemesState;
  const factory ActiveschemesState.failedstate() = Failedstate;

  factory ActiveschemesState.initial() =>
      const ActiveschemesState.activeAchemesState(schemes: null);
}
