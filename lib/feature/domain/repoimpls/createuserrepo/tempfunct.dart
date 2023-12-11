import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/feature/domain/repoimpls/createuserrepo/temp.dart';

Future<String> uploadimage(String imagepath) async {
  final dio = Dio(); // You can configure Dio with additional options if needed
  final apiService = ApiService(dio);

  // Read the image file into bytes
  final imageFile = File(imagepath);
  final List<int> imageBytes = await imageFile.readAsBytes();

  // Call the uploadImage method
  try {
    String imageUrl =
        await apiService.uploadImage(datakey, '0', jsonEncode(imageBytes));
    logger.e('Image uploaded successfully. URL: $imageUrl');

    return imageUrl;
  } catch (e) {
    logger.e('Error uploading image: $e');
    return 'failed';
  }
}
