part of 'instalmenthystory_bloc.dart';

@freezed
class InstalmenthystoryEvent with _$InstalmenthystoryEvent {
  const factory InstalmenthystoryEvent.getInstHystory(
      {required String joinId, required String schemeNO}) = GetInstHystory;

  const factory InstalmenthystoryEvent.resetDataEvent() = ResetDataEvent;
}
