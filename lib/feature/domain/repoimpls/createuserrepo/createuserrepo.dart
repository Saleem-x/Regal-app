import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/create_user_in_model/create_user_in_model.dart';
import 'package:regal_app/feature/data/models/create_user_out_model/create_user_out_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ICreateUserRepo)
class CreateNEwUserRepo implements ICreateUserRepo {
  @override
  Future<Either<MainFailures, CreateUserOutModel>> createNewUserScheme(
      CreateUserInModel newuser,
      String dpimageurl,
      String docfrnt,
      String? docback) async {
    try {
      var response =
          await http.post(Uri.parse(baseurl + createnewuserurl), body: {
        "CusName": newuser.cusName,
        "Address1": newuser.address1,
        "Address2": newuser.address2,
        "NomineeName": newuser.nomineeName,
        "MobileNo": newuser.mobileNo,
        "InstAmt": newuser.instAmt,
        "EmpId": newuser.empId,
        "BranchId": newuser.branchId,
        "CusAadharNo": newuser.cusAadharNo,
        "CusPin": newuser.cusPin,
        "SchemeGroupId": newuser.schemeGroupId,
        "Relationship": newuser.relationship,
        "Dob": newuser.dob,
        "CustomerImage": json.encode(dpimageurl),
        "DocTypeId": newuser.docTypeId,
        "DocFrontImage": json.encode(docfrnt),
        "DocBackImage": json.encode(docback),
        "datakey": datakey,
      });
      if (response.statusCode == 200) {
        logger.e(response.body);
        final Map<String, dynamic> json = jsonDecode(response.body);

        final customer = CreateUserOutModel.fromJson(
          json['result'][0],
        );

        logger.e(response.statusCode.toString());

        return right(customer);
      } else {
        logger.e(response.statusCode.toString());
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      logger.e('error aan $e');
      return left(const MainFailures.serverfailure());
    }
  }
}

class ImageUploadRepo {
  Future<String> uploadimages(File imageFile) async {
    String url = '';
    var stream = http.ByteStream(Stream.castFrom(imageFile.openRead()));
    // get file length
    var length = await imageFile.length();

    // string to uri
    var uri = Uri.parse(baseurl + uploadimageurl);

    // create multipart request
    var request = http.MultipartRequest("POST", uri);

    // multipart that takes file
    var multipartFile = http.MultipartFile('file', stream, length,
        filename: basename(imageFile.path));

    // add file to multipart
    request.files.add(multipartFile);

    // send
    var response = await request.send();
    logger.e(response.statusCode);

    // listen for response
    response.stream.transform(utf8.decoder).listen((value) {
      logger.e(value);
      url = value;
    });
    return url;
  }
}
