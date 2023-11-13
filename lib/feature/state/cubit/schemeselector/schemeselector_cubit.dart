import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schemeselector_state.dart';
part 'schemeselector_cubit.freezed.dart';

class SchemeselectorCubit extends Cubit<SchemeselectorState> {
  SchemeselectorCubit() : super(SchemeselectorState.initial());

  void selectscheme(int idx) {
    emit(SelectSchemeState(idx: idx));
  }
}
