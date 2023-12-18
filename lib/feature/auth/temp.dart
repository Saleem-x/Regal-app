/* import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:regal_app/core/api/endpoints.dart';

void login() async {
  var response = await http.post(
    Uri.parse(baseurl + loginurl),
    body: {
      'datakey': datakey,
      'mob': "0987654321",
      'pin': "1234",
    },
  );

  if (response.statusCode == 200) {
    logger.e(response.body);

    Map<String, dynamic> json = jsonDecode(response.body);

    final cusname = json["result"][0]["Title"];

    logger.e(cusname);
  } else {
    // response.body
    logger.e(response.body);
  }
}
 */
