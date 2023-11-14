import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/instalment_hystory_model/instalment_hystory_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'instalmenthystory_event.dart';
part 'instalmenthystory_state.dart';
part 'instalmenthystory_bloc.freezed.dart';

@injectable
class InstalmenthystoryBloc
    extends Bloc<InstalmenthystoryEvent, InstalmenthystoryState> {
  final IinstalmentHystoryRepo instalmentHystoryRepo;
  InstalmenthystoryBloc(this.instalmentHystoryRepo)
      : super(InstalmenthystoryState.initial()) {
    on<GetInstHystory>(
      (event, emit) async {
        emit(const GetinstalmentHystoryState(insthystry: null));
        Either<MainFailures, List<InstalmentHystoryModel>> gethystry =
            await instalmentHystoryRepo.getinstalmenthystory(
                event.joinId,
                event.schemeNO.contains('AK')
                    ? akshayanidhihystory
                    : goldplushystory);

        emit(
          gethystry.fold(
            (l) => const InsthystryFailed(),
            (r) => GetinstalmentHystoryState(insthystry: r),
          ),
        );
      },
    );
    on<ResetDataEvent>((event, emit) {
      logger.e('in reset event');
      return emit(const HystoryLoadigState());
    });
  }
}
