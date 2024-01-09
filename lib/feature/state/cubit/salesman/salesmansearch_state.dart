part of 'salesmansearch_cubit.dart';

@freezed
class SalesmansearchState with _$SalesmansearchState {
  const factory SalesmansearchState.searchedsalesmanlist(
      {required List<SalesManModel>? salesmanlist,
      required String? selectedsalesman}) = SearchedSalesmanList;

  factory SalesmansearchState.initial() =>
      const SalesmansearchState.searchedsalesmanlist(
          salesmanlist: null, selectedsalesman: null);
}
