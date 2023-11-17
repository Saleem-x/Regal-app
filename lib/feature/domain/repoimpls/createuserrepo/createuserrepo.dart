import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/create_new_user_scheme_model/create_new_user_scheme_model.dart';
import 'package:regal_app/feature/data/models/create_user_out_model/create_user_out_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ICreateUserRepo)
class CreateNEwUserRepo implements ICreateUserRepo {
  @override
  Future<Either<MainFailures, CreateUserOutModel>> createNewUserScheme(
      CreateNewUserSchemeModel newuser) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse(uploadimageurl));

      request.files.add(
        await http.MultipartFile.fromPath(
          'file', // Field name for the file in the API
          newuser.customerImage!,
        ),
      );

      final response = await http.post(Uri.parse(baseurl + goldrateurl), body: {
        "CusName": "CusName",
        "Address1": "Address1",
        "Address2": "Address2",
        "NomineeName": "NomineeName",
        "MobileNo": "MobileNo",
        "InstAmt": "InstAmt",
        "EmpId": "EmpId",
        "BranchId": "BranchId",
        "CusAadharNo": "CusAadharNo",
        "CusPin": "CusPin",
        "SchemeGroupId": "SchemeGroupId",
        "Relationship": "Relationship",
        "Dob": "Dob",
        "CustomerImage": "CustomerImage",
        "DocTypeId": "DocTypeId",
        "DocFrontImage": "DocFrontImage",
        "DocBackImage": "DocBackImage",
        "datakey": datakey,
      });
      if (response.statusCode == 200) {
        // log(response.body);
        final Map<String, dynamic> json = jsonDecode(response.body);

        final customer = CreateUserOutModel.fromJson(json['result'][0]);

        // log(response.statusCode.toString());

        return right(customer);
      } else {
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
