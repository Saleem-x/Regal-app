import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:regal_app/core/api/endpoints.dart';

part 'pickimage_state.dart';
part 'pickimage_cubit.freezed.dart';

class PickimageCubit extends Cubit<PickimageState> {
  PickimageCubit() : super(PickimageState.initial());

  void pickimagefromgallery() async {
    XFile? data = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    // logger.e('image names=${data == null ? 'no data' : data.path}');

    if (data != null) {
      // logger.e(message)
/* 
      Future<void> uploadImage(String token, String imagePath) async {
        try {
          Dio dio = Dio();
          FormData formData = FormData.fromMap({
            'datakey': datakey,
            'custID': '0',
            'file': await MultipartFile.fromFile(
              imagePath,
              filename: 'image.jpg',
              contentType:new MeadiaType
            ),
          });

          Response response = await dio.post(
            baseurl + uploadimageurl,
            data: formData,
            options: Options(
              headers: {'Authorization': 'Bearer $token'},
            ),
          );

          if (response.statusCode == 200) {
            // Check if the response contains the 'imageUrl' field
            if (response.data.containsKey('imageUrl')) {
              String imageUrl = response.data['imageUrl'];
              print('Image uploaded successfully. URL: $imageUrl');
            } else {
              print('Failed to get the image URL from the API response.');
            }
          } else {
            print(
                'Failed to upload image. Status code: ${response.statusCode}');
          }
        } catch (e) {
          print('Error uploading image: $e');
        }
      } */

      emit(state.copyWith(
        imageurls: data,
      ));
      data = null;
    }
  }

  void pickfromcamera() async {
    XFile? data = await ImagePicker().pickImage(source: ImageSource.camera);

    if (data != null) {
      emit(state.copyWith(imageurls: data));
    }
  }

  void clear() {
    emit(PickimageState.initial());
  }

  void pickdocumentfront() async {
    XFile? data = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    // logger.e('image names=${data!.name}');

    if (data != null) {
      emit(state.copyWith(docfrnt: data));
    }
  }

  void pickdocumentback() async {
    XFile? data = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    // logger.e('image names=${data!.name}');

    if (data != null) {
      emit(state.copyWith(docback: data));
    }
  }
}
