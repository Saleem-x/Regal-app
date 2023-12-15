import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/new_scheme_home_in_model/new_scheme_home_in_model.dart';
import 'package:regal_app/feature/data/models/new_scheme_home_out_model/new_scheme_home_out_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'newschemcreatehome_event.dart';
part 'newschemcreatehome_state.dart';
part 'newschemcreatehome_bloc.freezed.dart';

@injectable
class NewschemcreatehomeBloc
    extends Bloc<NewschemcreatehomeEvent, NewschemcreatehomeState> {
  final INewSchemeHomeRepo newschemerepo;
  NewschemcreatehomeBloc(this.newschemerepo)
      : super(NewschemcreatehomeState.initial()) {
    on<CreateNewSchemeHomeEvent>((event, emit) async {
      Either<MainFailures, NewSchemeHomeOutModel> createnescheme =
          await newschemerepo.createnewscheme(event.newschemes);

      emit(
        createnescheme.fold(
          (l) => l.when(
              clientfailure: () => const NewSchemeHomeCreatfailedState(
                  response: 'Something Went Wrong'),
              serverfailure: () => const NewSchemeHomeCreatfailedState(
                  response: 'Something Went Wrong'),
              networkerror: (error) =>
                  NewSchemeHomeCreatfailedState(response: error)),
          (r) => NewSchemeHomeCreatSuccessState(newschemresp: r),
        ),
      );
    });

    on<NewschemeADDLoadingEvent>((event, emit) {
      emit(const Newschcmehomeloadingstate());
    });
  }
}
