part of 'schemedetails_bloc.dart';

@freezed
class SchemedetailsEvent with _$SchemedetailsEvent {
  const factory SchemedetailsEvent.getschemedetails(
      {required String cusid,
      required String schmId,
      required String datakeys,
      required CustomerSchemeModel scheme}) = GetschemedetailsEvent;
}
