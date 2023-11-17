part of 'checkbranchslection_cubit.dart';

@freezed
class CheckbranchslectionState with _$CheckbranchslectionState {
  const factory CheckbranchslectionState.selectedbrachState(
      {required String selectedbranch}) = SelectedbrachState;

  factory CheckbranchslectionState.initial() =>
      const CheckbranchslectionState.selectedbrachState(selectedbranch: '');
}
