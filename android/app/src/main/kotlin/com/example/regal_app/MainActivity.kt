package com.example.regal_app

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Intent
import android.net.Uri
import android.widget.Toast
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val CHANNEL = "com.example.your_flutter_app/googlePay"



    @SuppressLint("SuspiciousIndentation")
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val platformChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        )

            platformChannel.setMethodCallHandler { call, result ->
                when (call.method) {
                    "makeGooglePayTransaction" -> {
                        val arguments = call.arguments as Map<String, Any>?
                        if (arguments != null) {
                            val merchantVpa = arguments["merchantVpa"] as String
                            val merchantName = arguments["merchantName"] as String
                            val merchantCode = arguments["merchantCode"] as String
                            val transactionRefId = arguments["transactionRefId"] as String
                            val transactionNote = arguments["transactionNote"] as String
                            val orderAmount = arguments["orderAmount"] as String

                            makeGooglePayTransaction(
                                merchantVpa,
                                merchantName,
                                merchantCode,
                                transactionRefId,
                                transactionNote,
                                orderAmount
                            )

                            result.success("Transaction started")
                        } else {
                            result.error("MISSING_ARGUMENTS", "Arguments are missing", null)
                        }
                    }
                    "returnResult"-> {
                        val arguments = call.arguments as Map<String, Any>?
                        if (arguments != null) {
                            val res = arguments["trxt"] as String
                            // Toast.makeText(context, "in return resp $res", Toast.LENGTH_SHORT).show()
                            result.success(res);
                        } else {
                            
                            Toast.makeText(context, "in return resp res null", Toast.LENGTH_SHORT).show()
                            result.error("MISSING_ARGUMENTS", "Arguments are missing", null)
                        }
                    }
                    else -> result.notImplemented()

                }


            }

    }

    private fun makeGooglePayTransaction(
        merchantVpa: String,
        merchantName: String,
        merchantCode: String,
        transactionRefId: String,
        transactionNote: String,
        orderAmount: String
    ) {
        val GOOGLE_PAY_PACKAGE_NAME = "com.google.android.apps.nbu.paisa.user"
        val GOOGLE_PAY_REQUEST_CODE = 123

        val uri = Uri.Builder()
            .scheme("upi")
            .authority("pay")
            .appendQueryParameter("pa", merchantVpa)
            .appendQueryParameter("pn", merchantName)
            .appendQueryParameter("mc", merchantCode)
            .appendQueryParameter("tr", transactionRefId)
            .appendQueryParameter("tn", transactionNote)
            .appendQueryParameter("am", orderAmount)
            .appendQueryParameter("cu", "INR")
            .build()

        val intent = Intent(Intent.ACTION_VIEW)
        intent.data = uri
        intent.`package` = GOOGLE_PAY_PACKAGE_NAME

        startActivityForResult(intent, GOOGLE_PAY_REQUEST_CODE)

    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?){
    super.onActivityResult(requestCode, resultCode, data)
    if (requestCode == 123) {
        if (resultCode == Activity.RESULT_OK ) {
            data?.let {
               /*  val f: String? = it.dataString
                val w: String? = it.extras?.toString()
                val r: String? = it.scheme */

                val platformChannel = MethodChannel(
                    flutterEngine!!.dartExecutor.binaryMessenger,
                    CHANNEL
                )
                val trxt: String? = it.getStringExtra("response")
                if (trxt != null) {
                    Toast.makeText(context, trxt, Toast.LENGTH_SHORT).show()
                    platformChannel.invokeMethod("returnResult",mapOf("trxt" to trxt))

                } else {
                    Toast.makeText(context, "text is null", Toast.LENGTH_SHORT).show()
                    platformChannel.invokeMethod("returnResult",mapOf("trxt" to trxt))
                }
                val dataList = ArrayList<String>()
                trxt?.let { response ->
                    dataList.add(response)
                }
//                upiPaymentDataOperation(dataList)

            } ?: run {
                val dataList = ArrayList<String>()
                dataList.add("nothing")
//                upiPaymentDataOperation(dataList)
            }

        } else {
            val dataList = ArrayList<String>()
            dataList.add("nothing")
//            upiPaymentDataOperation(dataList)

            // Toast.makeText(context, "trxt  vvvv", Toast.LENGTH_SHORT).show()


        }



    }
}


}
