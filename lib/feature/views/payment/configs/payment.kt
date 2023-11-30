class PaymentChannel : PlatformChannel() {

    @MethodChannel("payment_channel")
    override fun getChannel(): MethodChannel {
        return super.getChannel()
    }

    fun payWithGPay(uri1: String, appPackage: String) {
          if (isAppInstall(PaymentActivity.this, appPackage)) {
            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.setData(uri1);
            intent.setPackage(appPackage);
            Intent chooser = Intent.createChooser(intent, "Pay with");
            this.startActivityForResult(chooser, 121);
        } else {
            Toast.makeText(this, "App not installed", Toast.LENGTH_SHORT).show();
        }
    }

    fun payWithGPay(uri1: String, appPackage: String) {
    if (isAppInstall(context, appPackage)) {
        val intent = Intent(Intent.ACTION_VIEW)
        intent.data = Uri.parse(uri1)
        intent.setPackage(appPackage)

        val chooser = Intent.createChooser(intent, "Pay with")
        context.startActivityForResult(chooser, 121)
    } else {
        Toast.makeText(context, "App not installed", Toast.LENGTH_SHORT).show()
    }
}

}
