import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/branch_model/branch_model.dart';
import 'package:regal_app/feature/data/models/sales_man_model/sales_man_model.dart';
import 'package:regal_app/feature/data/models/scheme_list_model/scheme_list_model.dart';
import 'package:regal_app/feature/data/models/scheme_tenure_model/scheme_tenure_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'newschemehome_event.dart';
part 'newschemehome_state.dart';
part 'newschemehome_bloc.freezed.dart';

@injectable
class NewschemehomeBloc extends Bloc<NewschemehomeEvent, NewschemehomeState> {
  final IDropdownRepo dropdownRepo;
  NewschemehomeBloc(this.dropdownRepo) : super(NewschemehomeState.initial()) {
    on<GetAllSchemesfromHomesEvent>(
      (event, emit) async {
        Either<MainFailures, List<SchemeListModel>> scheme =
            await dropdownRepo.getbranchScheme();
        Either<MainFailures, List<BranchModel>> branches =
            await dropdownRepo.getAllbranches();
        Either<MainFailures, List<SalesManModel>> salesman =
            await dropdownRepo.getsalesman(
                branches.fold((l) => '', (r) => r[0].branchId.toString()));

        emit(
          scheme.fold(
            (l) => const Gettingschemefailed(),
            (r) => GetallSchemesState(
                schemeslist: r,
                schemetenure: null,
                branches: branches.fold((l) => null, (r) => r),
                salesmanmodel: salesman.fold((l) => null, (r) => r)),
          ),
        );
      },
    );

    on<GetSchemeTenureEvent>((event, emit) async {
      Either<MainFailures, List<SchemeTenureModel>> schmtenrs =
          await dropdownRepo.getschemetenure();

      emit(
        schmtenrs.fold(
          (l) => const Gettingschemefailed(),
          (r) => GetallSchemesState(
            schemeslist: event.schemeslist,
            schemetenure: r,
            branches: event.branches,
            salesmanmodel: event.salesmanmodel,
          ),
        ),
      );
    });
    on<GetsalesmanHomeEvent>((event, emit) async {
      Either<MainFailures, List<SalesManModel>> salesman =
          await dropdownRepo.getsalesman(event.branchid);

      emit(
        salesman.fold(
          (l) => const Gettingschemefailed(),
          (r) => GetallSchemesState(
              schemeslist: event.schemeslist,
              schemetenure: null,
              branches: event.branches,
              salesmanmodel: r),
        ),
      );
    });
  }
}
