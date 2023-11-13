import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/auth/authrepo.dart';
import 'package:regal_app/feature/data/models/login_model/login_model.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<UserLoginEvent>(
      (event, emit) async {
        Either<MainFailures, UserBaseModel> login =
            await LoginRepo().login(event.logindata);

        emit(const LoginState.loginLoadingState());

        emit(
          login.fold(
            (l) => l.when(
              clientfailure: () =>
                  const _loginFailedState(issue: 'Something went Wrong'),
              serverfailure: () =>
                  const _loginFailedState(issue: 'Something went Wrong'),
              networkerror: (error) => _loginFailedState(issue: error),
            ),
            (r) => LoginSuccessState(user: r),
          ),
        );
      },
    );

    on<LoginresetEvent>((event, emit) {
      emit(LoginState.initial());
    });
  }
}
