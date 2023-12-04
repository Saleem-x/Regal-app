/* import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

Future<void> makePhonePeUPIIntentPayment() async {
  String merchantId = "<merchantId>";
  String saltKey = "<saltKey>";
  int saltIndex = 1; // Adjust as needed
  String env = "UAT";
  bool shouldPublishEvents = true;

  int amount = 100;
  String merchantTransactionId = Uuid().v4().substring(0, 34);
  String redirecturl = "https://merchant.com/redirectUrl";
  String callbackurl = "https://www.merchant.com/callback";
  String merchantUserId = "merchantUserId";
  String deviceOS = "ANDROID";
  String targetApp = "com.phonepe.app";

  // Build the UPI Intent Pay Request
  Map<String, dynamic> pgPayRequest = {
    "amount": amount,
    "merchantId": merchantId,
    "merchantTransactionId": merchantTransactionId,
    "callbackUrl": callbackurl,
    "redirectUrl": redirecturl,
    "merchantUserId": merchantUserId,
    "deviceOS": deviceOS,
    "targetApp": targetApp,
  };

  // Make the HTTP request
  final response = await http.post(
    Uri.parse("https://api.phonepe.com/v3/payout"),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(pgPayRequest),
  );

  if (response.statusCode == 200) {
    // Parse the response
    Map<String, dynamic> responseData = jsonDecode(response.body);
    
    // Extract the intent URL
    String intentUrl = responseData['data']['instrumentResponse']['intentUrl'];
    
    // Perform further actions with the intent URL
    print("UPI Intent URL: $intentUrl");
  } else {
    // Handle error
    print("Error during UPI Intent payment: ${response.statusCode}");
  }
}
 */