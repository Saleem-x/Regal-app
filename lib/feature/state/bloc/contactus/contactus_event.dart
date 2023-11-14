part of 'contactus_bloc.dart';

@freezed
class ContactusEvent with _$ContactusEvent {
  const factory ContactusEvent.getContactDetailsEvent(
      {required String datakey}) = GetContactDetailsEvent;
}
