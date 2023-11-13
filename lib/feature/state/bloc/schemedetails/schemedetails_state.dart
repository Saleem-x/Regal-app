part of 'schemedetails_bloc.dart';

@freezed
class SchemedetailsState with _$SchemedetailsState {
  const factory SchemedetailsState.schemedetails(
      {required SchemeDetailsModel? schemedetail,
      required CustomerSchemeModel? scheme}) = Schemedetailsstate;

  factory SchemedetailsState.initial() =>
      const SchemedetailsState.schemedetails(schemedetail: null, scheme: null);
}
