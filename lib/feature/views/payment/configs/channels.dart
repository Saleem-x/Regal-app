import 'package:flutter/services.dart';

class PaymentChannel {
  static const String _channelName = 'payment_channel';
  static const MethodChannel _channel = MethodChannel(_channelName);

  Future<void> payWithGPay(String uri1, String appPackage) async {
    try {
      await _channel.invokeMethod('payWithGPay', {
        'uri1': uri1,
        'appPackage': appPackage,
      });
    } on PlatformException catch (e) {
      print('Payment error: ${e.message}');
    }
  }
}
