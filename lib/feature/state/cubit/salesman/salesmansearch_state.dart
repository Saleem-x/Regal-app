part of 'salesmansearch_cubit.dart';

@freezed
class SalesmansearchState with _$SalesmansearchState {
  const factory SalesmansearchState.searchedsalesmanlist(
      {required List<SalesManModel>? salesmanlist}) = SearchedSalesmanList;

  factory SalesmansearchState.initial() =>
      const SalesmansearchState.searchedsalesmanlist(salesmanlist: null);
}
