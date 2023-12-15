import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/contact_us_model/contact_us_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IContactDetails)
class ContactDetailsRepo implements IContactDetails {
  @override
  Future<Either<MainFailures, ContactUsModel>> getContactDetails(
      String schmid) async {
    try {
      final response =
          await http.post(Uri.parse(baseurl + contactusurl), body: {
        "datakey": datakey,
      });
      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final contactdetails = ContactUsModel.fromJson(json['result'][0]);
        return right(contactdetails);
      } else {
        logger.e(response.statusCode.toString());
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      logger.e(e);
      return left(const MainFailures.serverfailure());
    }
  }
}
