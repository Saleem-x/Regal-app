import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/instalment_hystory_model/instalment_hystory_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IinstalmentHystoryRepo)
class InstalmentHystoryRepo implements IinstalmentHystoryRepo {
  @override
  Future<Either<MainFailures, List<InstalmentHystoryModel>>>
      getinstalmenthystory(String joinID, String url) async {
    try {
      final response = await http.post(Uri.parse(baseurl + url),
          body: {"datakey": datakey, 'joinID': joinID});
      if (response.statusCode == 200) {
        List<InstalmentHystoryModel> insthystry = [];

        final Map<String, dynamic> json = jsonDecode(response.body);
        if (json.toString() == 'ArrayNoData') {
          return right(insthystry);
        }
        List<dynamic> resultList = json['result'];

        for (var element in resultList) {
          insthystry.add(InstalmentHystoryModel.fromJson(element));
        }
        // logger.e(insthystry);
        // log(response.statusCode.toString());

        return right(insthystry);
      } else {
        log(response.statusCode.toString());
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
