part of 'contactus_bloc.dart';

@freezed
class ContactusState with _$ContactusState {
  const factory ContactusState.getcontactdetails(
      {required ContactUsModel? contactdetails}) = Getcontactdetails;

  const factory ContactusState.contactFailedState() = ContactFailedState;

  factory ContactusState.initial() =>
      const ContactusState.getcontactdetails(contactdetails: null);
}
