import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/new_scheme_home_in_model/new_scheme_home_in_model.dart';
import 'package:regal_app/feature/data/models/new_scheme_home_out_model/new_scheme_home_out_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: INewSchemeHomeRepo)
class NewSchemeHomeRepo implements INewSchemeHomeRepo {
  @override
  Future<Either<MainFailures, NewSchemeHomeOutModel>> createnewscheme(
      NewSchemeHomeInModel newscheme) async {
    try {
      final response =
          await http.post(Uri.parse(baseurl + userschemehomeurl), body: {
        "MobileNo": newscheme.mobileNo.toString(),
        "SchemeGroupId": newscheme.schemeGroupId.toString(),
        "InstAmt": newscheme.instAmt.toString(),
        "BranchId": newscheme.branchId.toString(),
        "datakey": datakey
      });
      if (response.statusCode == 200) {
        logger.e(response.body);
        final Map<String, dynamic> json = jsonDecode(response.body);
        final newscheme = NewSchemeHomeOutModel.fromJson(json['result'][0]);
        return right(newscheme);
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
