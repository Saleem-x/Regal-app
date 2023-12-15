part of 'newschemehome_bloc.dart';

@freezed
class NewschemehomeEvent with _$NewschemehomeEvent {
  const factory NewschemehomeEvent.getAllSchemesEvent() =
      GetAllSchemesfromHomesEvent;
  const factory NewschemehomeEvent.getSchemeTenureEvent({
    required List<SchemeListModel>? schemeslist,
  }) = GetSchemeTenureEvent;
}
