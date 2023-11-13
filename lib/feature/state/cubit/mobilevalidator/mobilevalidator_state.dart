part of 'mobilevalidator_cubit.dart';

@freezed
class MobilevalidatorState with _$MobilevalidatorState {
  const factory MobilevalidatorState.mobilevallidState() = mobilevallidState;
  const factory MobilevalidatorState.mobileinvalidState(
      {required String message}) = mobileinvalidState;

  factory MobilevalidatorState.initial() => const mobilevallidState();
}
