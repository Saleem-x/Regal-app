import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkbranchslection_state.dart';
part 'checkbranchslection_cubit.freezed.dart';

class CheckbranchslectionCubit extends Cubit<CheckbranchslectionState> {
  CheckbranchslectionCubit() : super(CheckbranchslectionState.initial());

  void checkisselected(String branchctrl) {
    emit(state.copyWith(selectedbranch: branchctrl));
  }

  void isdocumentAdhar(String document) {
    emit(
      state.copyWith(document: document),
    );
  }

  void isschemeselected(String scheme) {
    emit(
      state.copyWith(schemeselected: scheme),
    );
  }
}
