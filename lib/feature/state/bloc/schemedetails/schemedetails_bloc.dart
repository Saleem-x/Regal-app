import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'schemedetails_event.dart';
part 'schemedetails_state.dart';
part 'schemedetails_bloc.freezed.dart';

@injectable
class SchemedetailsBloc extends Bloc<SchemedetailsEvent, SchemedetailsState> {
  final ISchemeDetails schemeDetails;
  SchemedetailsBloc(this.schemeDetails) : super(SchemedetailsState.initial()) {
    on<GetschemedetailsEvent>((event, emit) async {
      emit(
        const Schemedetailsstate(schemedetail: null, scheme: null),
      );
      // Future.delayed(const Duration(milliseconds: 3000));
      Either<MainFailures, SchemeDetailsModel> goldrate = await schemeDetails
          .getSchemeDetails(event.datakeys, event.cusid, event.schmId);

      emit(goldrate.fold((l) => SchemedetailsState.initial(),
          (r) => Schemedetailsstate(schemedetail: r, scheme: event.scheme)));
    });
  }
}
