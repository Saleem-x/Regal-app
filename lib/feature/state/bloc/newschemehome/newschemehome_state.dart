part of 'newschemehome_bloc.dart';

@freezed
class NewschemehomeState with _$NewschemehomeState {
  const factory NewschemehomeState.getallSchemesState({
    required List<SchemeListModel>? schemeslist,
    required List<SchemeTenureModel>? schemetenure,
  }) = GetallSchemesState;

  const factory NewschemehomeState.gettingschemefailed() = Gettingschemefailed;

  factory NewschemehomeState.initial() =>
      const NewschemehomeState.getallSchemesState(
          schemeslist: null, schemetenure: null);
}
