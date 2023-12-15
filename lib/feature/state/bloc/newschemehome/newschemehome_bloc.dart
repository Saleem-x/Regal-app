import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
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

        emit(
          scheme.fold(
            (l) => const Gettingschemefailed(),
            (r) => GetallSchemesState(
              schemeslist: r,
              schemetenure: null,
            ),
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
          ),
        ),
      );
    });
  }
}
