import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/branch_model/branch_model.dart';
import 'package:regal_app/feature/data/models/document_type_model/document_type_model.dart';
import 'package:regal_app/feature/data/models/relation_ship_model/relation_ship_model.dart';
import 'package:regal_app/feature/data/models/sales_man_model/sales_man_model.dart';
import 'package:regal_app/feature/data/models/scheme_list_model/scheme_list_model.dart';
import 'package:regal_app/feature/data/models/scheme_tenure_model/scheme_tenure_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'dropdownitems_event.dart';
part 'dropdownitems_state.dart';
part 'dropdownitems_bloc.freezed.dart';

@injectable
class DropdownitemsBloc extends Bloc<DropdownitemsEvent, DropdownitemsState> {
  final IDropdownRepo dropdownRepo;
  DropdownitemsBloc(this.dropdownRepo) : super(DropdownitemsState.initial()) {
    on<DropdownitemsEvent>((event, emit) async {
      Either<MainFailures, List<RelationShipModel>> relation =
          await dropdownRepo.getAllRelation();
      Either<MainFailures, List<DocumentTypeModel>> doctypes =
          await dropdownRepo.getAlldocumenttypes();
      Either<MainFailures, List<BranchModel>> branches =
          await dropdownRepo.getAllbranches();
      Either<MainFailures, List<SchemeListModel>> scheme =
          await dropdownRepo.getbranchScheme();
      Either<MainFailures, List<SchemeTenureModel>> schmtenrs =
          await dropdownRepo.getschemetenure();

      emit(
        GetAllDrpDwnDataState(
          relationshiplist: relation.fold((l) => null, (r) => r),
          documentlist: doctypes.fold((l) => null, (r) => r),
          branches: branches.fold((l) => null, (r) => r),
          schemeslist: scheme.fold((l) => null, (r) => r),
          schemetenures: schmtenrs.fold((l) => null, (r) => r),
          salesmanmodel: state.salesmanmodel,
        ),
      );
    });
    on<GetetsalesmansEvent>((event, emit) async {
      Either<MainFailures, List<SalesManModel>> salesmans =
          await dropdownRepo.getsalesman(event.branchid);

      emit(
        state.copyWith(
          salesmanmodel: salesmans.fold((l) => null, (r) => r),
        ),
      );
    });
  }
}
