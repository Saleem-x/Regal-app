import 'package:dio/dio.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'temp.g.dart';

@RestApi(baseUrl: baseurl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(uploadimageurl)
  @FormUrlEncoded()
  Future<String> uploadImage(
    @Field('datakey') String dataKey,
    @Field('cusId') String customerId,
    @Body() String fileBytes,
  );
}
