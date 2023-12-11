part of 'checkbox_cubit.dart';

@freezed
class CheckboxState with _$CheckboxState {
  const factory CheckboxState.isCheckBoxFilledState({required bool ischecked}) =
      IsCheckBoxFilledState;

  factory CheckboxState.initial() =>
      const CheckboxState.isCheckBoxFilledState(ischecked: false);
}
