part of 'updatenewpin_bloc.dart';

@freezed
class UpdatenewpinEvent with _$UpdatenewpinEvent {
  const factory UpdatenewpinEvent.updateNewPinEvent(
      {required String pin, required String cusID}) = updateNewPinEvent;
}
