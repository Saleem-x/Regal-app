import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkbox_state.dart';
part 'checkbox_cubit.freezed.dart';

class CheckboxCubit extends Cubit<CheckboxState> {
  CheckboxCubit() : super(CheckboxState.initial());

  void tickCheckBox(bool ischecked) {
    emit(IsCheckBoxFilledState(ischecked: ischecked));
  }
}
