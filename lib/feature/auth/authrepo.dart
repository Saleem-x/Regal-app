import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/login_model/login_model.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';

class LoginRepo {
  Future<Either<MainFailures, UserBaseModel>> login(LoginModel user) async {
    try {
      final response = await http.post(
        Uri.parse(baseurl + loginurl),
        body: user.toJson(),
      );
      if (response.statusCode == 200) {
        logger.e(response.body);

        final Map<String, dynamic> json = jsonDecode(response.body);

        final user = UserBaseModel.fromJson(json['result'][0]);
        if (user.cusName == null) {
          Map<String, dynamic> responseMap = jsonDecode(response.body);

          String message =
              '${responseMap['result'][0]['Title']}^${responseMap['result'][0]['Descr']}';
          logger.e({responseMap['result'][0]['Title']});
          return left(MainFailures.networkerror(error: message));
        }
        logger.i(user);
        return right(user);
      } else {
        Map<String, dynamic> responseMap = jsonDecode(response.body);

        String message = responseMap['result'][0]['cus_Name'].toString();
        log(message);
        logger.e({responseMap['result'][0]['Title']});
        // log(response.body);
        log(response.statusCode.toString());
        return left(MainFailures.networkerror(
            error:
                message == 'null' ? 'User Not Found' : 'something went wrong'));
      }
    } catch (e) {
      logger.e('error-> $e');
      return left(const MainFailures.clientfailure());
    }
  }
}
