import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<SplashtohomeEvent>((event, emit) {
      log('$state');
      Future.delayed(const Duration(seconds: 3));
      emit(const Animatingstate());
    });
  }
}
