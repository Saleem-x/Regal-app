import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regal_app/feature/data/models/sales_man_model/sales_man_model.dart';

part 'salesmansearch_state.dart';
part 'salesmansearch_cubit.freezed.dart';

class SalesmansearchCubit extends Cubit<SalesmansearchState> {
  SalesmansearchCubit() : super(SalesmansearchState.initial());

  searchedlist(List<SalesManModel> salesmanlist, String query) {
    List<SalesManModel> searchedlist = salesmanlist;

    if (query.isNotEmpty) {
      searchedlist = salesmanlist
          .where((element) =>
              element.empName!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    emit(SearchedSalesmanList(
        salesmanlist: query.isEmpty ? salesmanlist : searchedlist,
        selectedsalesman: state.selectedsalesman));
  }

  void selectsalesman(String name) {
    emit(state.copyWith(selectedsalesman: name));
  }
}
