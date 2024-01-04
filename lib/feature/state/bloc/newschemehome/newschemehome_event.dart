part of 'newschemehome_bloc.dart';

@freezed
class NewschemehomeEvent with _$NewschemehomeEvent {
  const factory NewschemehomeEvent.getAllSchemesEvent() =
      GetAllSchemesfromHomesEvent;
  const factory NewschemehomeEvent.getSchemeTenureEvent({
    required List<SchemeListModel>? schemeslist,
    required List<BranchModel>? branches,
    required List<SalesManModel>? salesmanmodel,
  }) = GetSchemeTenureEvent;

  const factory NewschemehomeEvent.getsalesmanEvent({
    required String branchid,
    required List<SchemeListModel>? schemeslist,
    required List<BranchModel>? branches,
    required List<SalesManModel>? salesmanmodel,
  }) = GetsalesmanHomeEvent;
}
