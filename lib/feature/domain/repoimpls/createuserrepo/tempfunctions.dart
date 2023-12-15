import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:path/path.dart';
import 'package:regal_app/core/api/endpoints.dart';

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
