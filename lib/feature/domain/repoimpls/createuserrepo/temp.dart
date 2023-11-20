import 'dart:io';

import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/feature/data/models/create_user_in_model/create_user_in_model.dart';
import 'package:regal_app/feature/data/models/create_user_out_model/create_user_out_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'temp.g.dart';

@RestApi(baseUrl: baseurl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(uploadimageurl)
  @MultiPart()
  Future<String> uploadImage(
    @Part(
      fileName: 'userprofileimage',
    )
    File file,
    @Field('datakey') String dataKey,
    @Field('custID') String cusId,
  );
  @POST(uploadimageurl)
  @MultiPart()
  Future<String> uploaddocfrontImage(
    @Part(
      fileName: 'docfrontimg',
    )
    File file,
    @Field('datakey') String dataKey,
    @Field('0') String cusId,
  );
  @POST(uploadimageurl)
  @MultiPart()
  Future<String> uploaddocbackImage(
    @Part(
      fileName: 'docbackimg',
    )
    File file,
    @Field('datakey') String dataKey,
    @Field('0') String cusId,
  );

  @POST(createnewuserurl)
  Future<CreateUserOutModel> createUser(@Body() CreateUserInModel request);
}
