import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobilevalidator_state.dart';
part 'mobilevalidator_cubit.freezed.dart';

class MobilevalidatorCubit extends Cubit<MobilevalidatorState> {
  MobilevalidatorCubit() : super(MobilevalidatorState.initial());

  validatemob(String mob) {
    if (mob.isEmpty) {
      emit(const mobileinvalidState(message: 'Please enter mobile Number'));
    } else if (mob.length < 10) {
      emit(const mobileinvalidState(message: 'mobile Number should be 10'));
    } else if (mob.length == 10) {
      return emit(const mobilevallidState());
    }
  }
}
