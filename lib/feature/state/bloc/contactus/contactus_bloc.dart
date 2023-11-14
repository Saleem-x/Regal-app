import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/contact_us_model/contact_us_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'contactus_event.dart';
part 'contactus_state.dart';
part 'contactus_bloc.freezed.dart';

@injectable
class ContactusBloc extends Bloc<ContactusEvent, ContactusState> {
  final IContactDetails contactDetails;
  ContactusBloc(this.contactDetails) : super(ContactusState.initial()) {
    on<ContactusEvent>((event, emit) async {
      Either<MainFailures, ContactUsModel> contact =
          await contactDetails.getContactDetails(event.datakey);
      emit(
        contact.fold(
          (l) => const ContactFailedState(),
          (r) => Getcontactdetails(contactdetails: r),
        ),
      );
    });
  }
}
