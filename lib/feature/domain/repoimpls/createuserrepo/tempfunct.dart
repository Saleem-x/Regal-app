import 'dart:io';

import 'package:dio/dio.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/feature/data/models/create_user_in_model/create_user_in_model.dart';
import 'package:regal_app/feature/data/models/create_user_out_model/create_user_out_model.dart';
import 'package:regal_app/feature/domain/repoimpls/createuserrepo/temp.dart';

Future<void> uploadImageAndCreateUser(String datakey, String imagePath,
    CreateUserInModel userRequest, String docfrnt, String docback) async {
  try {
    Dio dio = Dio();

    ApiService apiService = ApiService(dio);

    String imageUrl =
        await apiService.uploadImage(File(imagePath), datakey, '0');
    String docfrontUrl =
        await apiService.uploadImage(File(imagePath), datakey, '0');
    String docbackurl =
        await apiService.uploadImage(File(imagePath), datakey, '0');

    userRequest.customerImage = imageUrl;
    userRequest.docFrontImage = docfrontUrl;
    userRequest.docBackImage = docbackurl;
    CreateUserOutModel userResponse = await apiService.createUser(userRequest);

    logger.e(
        "User created successfully. UserID: ${userResponse.cusId}, Username: ${userResponse.title}");
  } catch (e) {
    logger.e('Error: $e');
  }
}
