import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regal_app/feature/data/models/scheme_list_model/scheme_list_model.dart';

part 'newschemehomeselector_state.dart';
part 'newschemehomeselector_cubit.freezed.dart';

class NewschemehomeselectorCubit extends Cubit<NewschemehomeselectorState> {
  NewschemehomeselectorCubit() : super(NewschemehomeselectorState.initial());

  void selectscheme(SchemeListModel scheme) {
    emit(SchemeSelectedState(scheme: scheme));
  }
}
