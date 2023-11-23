part of 'checkbranchslection_cubit.dart';

@freezed
class CheckbranchslectionState with _$CheckbranchslectionState {
  const factory CheckbranchslectionState.selectedbrachState(
      {required String selectedbranch,
      required String document,
      required String schemeselected}) = SelectedbrachState;

  factory CheckbranchslectionState.initial() =>
      const CheckbranchslectionState.selectedbrachState(
          selectedbranch: '', document: '', schemeselected: '');
}
