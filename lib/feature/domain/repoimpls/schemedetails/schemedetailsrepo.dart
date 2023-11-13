import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:http/http.dart' as http;
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

@LazySingleton(as: ISchemeDetails)
class SchemedetailsRepo implements ISchemeDetails {
  @override
  Future<Either<MainFailures, SchemeDetailsModel>> getSchemeDetails(
      String datakey, String cusId, String schmid) async {
    try {
      final response = await http.post(Uri.parse(baseurl + schemedetailurl),
          body: {"datakey": datakey, "cusID": cusId, "schemeID": schmid});
      if (response.statusCode == 200) {
        // log(response.body);
        final Map<String, dynamic> json = jsonDecode(response.body);

        final schemedetail = SchemeDetailsModel.fromJson(json['result'][0]);

        // log(response.statusCode.toString());

        return right(schemedetail);
      } else {
        log(response.statusCode.toString());
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
