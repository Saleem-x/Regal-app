part of 'newschemcreatehome_bloc.dart';

@freezed
class NewschemcreatehomeState with _$NewschemcreatehomeState {
  const factory NewschemcreatehomeState.newSchemeHomeCreatSuccessState(
          {required NewSchemeHomeOutModel newschemresp}) =
      NewSchemeHomeCreatSuccessState;
  const factory NewschemcreatehomeState.newSchemeHomeCreatfailedState(
      {required String response}) = NewSchemeHomeCreatfailedState;
  const factory NewschemcreatehomeState.newschcmehomeloadingstate() =
      Newschcmehomeloadingstate;

  const factory NewschemcreatehomeState.newSchemInitial() = _newSchemInitial;

  factory NewschemcreatehomeState.initial() =>
      const NewschemcreatehomeState.newSchemInitial();
}
