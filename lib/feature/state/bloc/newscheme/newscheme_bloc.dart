import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/create_user_in_model/create_user_in_model.dart';
import 'package:regal_app/feature/data/models/create_user_out_model/create_user_out_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:dartz/dartz.dart';
import 'package:regal_app/feature/domain/repoimpls/createuserrepo/tempfunct.dart';

part 'newscheme_event.dart';
part 'newscheme_state.dart';
part 'newscheme_bloc.freezed.dart';

@injectable
class NewschemeBloc extends Bloc<NewschemeEvent, NewschemeState> {
  final ICreateUserRepo newschemerepo;
  NewschemeBloc(this.newschemerepo) : super(NewschemeState.initial()) {
    on<CreateNewUserEvent>((event, emit) async {
      // String dpimage = await ImageUploadRepo().uploadimages(File(event.dppath));
      String dpimage = await uploadimage(event.dppath);
      String docfrnt = await uploadimage(event.docfrnt);
      // await ImageUploadRepo().uploadimages(File(event.docfrnt));
      String? docback;
      if (event.docback != null) {
        docback = await uploadimage(event.docback!);
      }
      Either<MainFailures, CreateUserOutModel> createduser = await newschemerepo
          .createNewUserScheme(event.userInModel, dpimage, docfrnt, docback);

      emit(
        createduser.fold(
          (l) => const CreateUserFailed(error: 'something Went Wrong'),
          (r) => CreateUserSuccess(outuser: r),
        ),
      );
    });

    on<NewSchemeLoadingEvent>((event, emit) {
      emit(const CreatingUserLoading());
    });
  }
}
