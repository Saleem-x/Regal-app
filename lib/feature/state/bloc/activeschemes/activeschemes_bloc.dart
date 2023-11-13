import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'activeschemes_event.dart';
part 'activeschemes_state.dart';
part 'activeschemes_bloc.freezed.dart';

@injectable
class ActiveschemesBloc extends Bloc<ActiveschemesEvent, ActiveschemesState> {
  final IUserSchemes userSchemes;
  ActiveschemesBloc(this.userSchemes) : super(ActiveschemesState.initial()) {
    on<GetActiveSchemes>((event, emit) async {
      Either<MainFailures, List<CustomerSchemeModel>> goldrate =
          await userSchemes.getactiveSchemes(event.datakey, event.cusid);

      emit(goldrate.fold(
          (l) => const Failedstate(), (r) => ActiiveAchemesState(schemes: r)));
    });
  }
}
