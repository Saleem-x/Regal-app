part of 'activeschemes_bloc.dart';

@freezed
class ActiveschemesEvent with _$ActiveschemesEvent {
  const factory ActiveschemesEvent.getActiveSchemes(
      {required String datakey, required String cusid}) = GetActiveSchemes;
}
