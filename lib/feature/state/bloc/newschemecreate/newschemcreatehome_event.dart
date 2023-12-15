part of 'newschemcreatehome_bloc.dart';

@freezed
class NewschemcreatehomeEvent with _$NewschemcreatehomeEvent {
  const factory NewschemcreatehomeEvent.createNewSchemeEvent(
      {required NewSchemeHomeInModel newschemes}) = CreateNewSchemeHomeEvent;

  const factory NewschemcreatehomeEvent.newschemeADDLoading() =
      NewschemeADDLoadingEvent;
}
