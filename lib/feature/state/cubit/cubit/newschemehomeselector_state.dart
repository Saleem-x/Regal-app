part of 'newschemehomeselector_cubit.dart';

@freezed
class NewschemehomeselectorState with _$NewschemehomeselectorState {
  const factory NewschemehomeselectorState.schemeSelectedState(
      {required SchemeListModel? scheme}) = SchemeSelectedState;

  factory NewschemehomeselectorState.initial() =>
      const NewschemehomeselectorState.schemeSelectedState(scheme: null);
}
