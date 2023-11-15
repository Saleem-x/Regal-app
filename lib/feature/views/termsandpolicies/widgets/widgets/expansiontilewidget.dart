import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'dart:math' as math;

class ExpandingInfoTile extends StatelessWidget {
  final List<String> datalist;
  const ExpandingInfoTile({super.key, required this.datalist});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: datalist.length,
      itemBuilder: (context, index) => Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionWidget(
          initiallyExpanded: false,
          titleBuilder:
              (double animationValue, _, bool isExpaned, toogleFunction) {
            return GestureDetector(
              onTap: () => toogleFunction(animated: true),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: math.pi * animationValue / 2,
                    alignment: Alignment.center,
                    child: Icon(Icons.play_arrow_rounded,
                        size: 30.sp, color: Colors.blueGrey),
                  ),
                  Expanded(
                    child: Text(
                      datalist[index].split('^')[0],
                      style: const TextStyle(
                          // fontFamily: kprimaryfont,
                          fontSize: 12,
                          color: kcolorblack),
                    ),
                  ),
                ],
              ),
            );
          },
          content: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              datalist[index].split('^')[1],
              style: TextStyle(
                // fontFamily: kprimaryfont,
                fontSize: 10.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> optc = [
  '''ONLINE PAYMENTS ^ This online payment system is provided by Regal Jewellers. Regal Jewellers may update these terms from time to time and any changes will be effective immediately on being set out here. Please ensure you are aware of the current terms. The country of domicile for Regal Jewellers is India.''',
  '''TERMS AND CONDITIONS ^ Please read these terms carefully before using the online payment facility. Using the online payment facility on this website indicates that you accept these terms. If you do not accept these terms do not use this facility.

All payments are subject to the following conditions:

The description of services of match making are specific to your need when you log in with your unique password. For payments, please refer to the scheme plan.

All Fees quoted are in Indian Rupees. Regal Jewellers reserves the right to change the fees at any time.

• Your payment will normally reach the Regal Jewellers account to which you are making a payment within two working days.

• We cannot accept liability for a payment not reaching the correct Regal Jewellers account due to you quoting an incorrect account number or incorrect personal details. Neither can we accept liability if payment is refused or declined by the credit/ debit card supplier for any reason.

• If the card supplier declines payment the Regal Jewellers is under no obligation to bring this fact to your attention. You should check with your bank/credit/debit card supplier that payment has been deducted from your account.

⚫ In no event will the Regal Jewellers be liable for any damages whatsoever arising out of the use, inability to use, or the results of use of this site, any websites linked to this site, or the materials or information contained at any or all such sites, whether based on warranty, contract, tort, or any other legal theory and whether or not advised of the possibility of such damages.''',
  '''REFUND POLICY ^ If the Customer leaves the Regal Jewellers App before they complete their service period, there shall be no entitlement to a refund of paid service fees.

• Refunds, if applicable, at the discretion of the Management, will only be made to the debit/credit card used for the original transaction. For the avoidance of doubt nothing in this Policy shall require the Regal Jewellers to refund the Fees (or part thereof) unless such Fees (or part thereof) have previously been paid.''',
  '''CHANGES TO OUR PRIVACY POLICY ^ MERCHANT reserves the entire right to modify/amend/remove this privacy statement anytime and without any reason. Nothing contained herein creates or is intended to create a contract/ agreement between Regal Jewellers and any user visiting the Regal Jewellers website or providing identifying information of any kind.''',
  '''DND POLICY ^ MERCHANT reserves the entire right to modify/amend/remove this privacy statement anytime and without any reason. Nothing contained herein creates or is intended to create a contract/ agreement between Regal Jewellers and any user visiting the Regal Jewellers website or providing identifying information of any kind.''',
  '''CONTACT DETAILS ^ Please visit Our Contact Us Section- http://regaljewellers.net/contact-us/''',
];
List<String> app = [
  '''INFORMATION COLLECTION AND USE ^ For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Name, Phone Number, Email ID. The information that we request will be retained by us and used as described in this privacy policy. The app does use third party services that may collect information used to identify you.''',
  '''LOG DATA ^ We want to inform you that whenever you use our Service, in the case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol ("IP") address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.''',
  '''COOKIES ^ Cookies are files with a small amount of data that is commonly used as an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your device internal memory.

This Service does not use these "cookies" explicitly. However, the app may use third party code and libraries that use "cookies" to collect information and to improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.''',
  '''SERVICE PROVIDERS ^ We may employ third-party companies and individuals due to the following reasons:

To facilitate our Service.

• To provide the Service on our behalf.

• To perform Service-related services; or

• To assist us in analyzing how our Service is used. We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.''',
  '''LINK TO OTHER SITES ^ This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.''',
  '''CHILDREN'S PRIVACY ^ These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.''',
  '''CHANGES TO THIS PRIVACY POLICY ^ We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.''',
  '''CONTACT US ^ If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us:Thrissur Branch: E-Mail: thrissur@regaljewellers.net Phone: +91 8891909090''',
];
List<String> tandc = [
  '''This scheme will be known as Akshaya Nidhi, and there will be a scheme known as a monthly collection under the above-mentioned Akshaya Nidhi scheme.''',
  '''People who wish to join under this scheme should fill in the relevant application form and submit it along with two passport size photos to the Regal Jewellery.''',
  '''The first instalment must be paid along with the application.''',
  '''The monthly instalment should be handed over either in the regal jewellery showroom, or to the collection agent at the correct dates, and the members should register the same on the passbook.''',
  '''The amount of gold that is paid in instalments is calculated according to the rate on the date which is deposited. At the time of completion/closing of the account, the quantity of gold is also given to the members along with the offers of the scheme.''',
  '''If the scheme member is purchasing more gold than the gold weight according to the scheme, the gold weight and labour charges of the day will be applicable.''',
  '''Any failure in the instalments from the members will result in the loss of the offers of the scheme.''',
  '''At the closure of the scheme, the purchase of gold coins is not allowed. Only jewellery can be purchased.''',
  '''At the time of completion/closure of the scheme, the proportionate bonus and discount will be availed to the members as a bonus''',
  '''The members can choose the monthly instalment amount of the Akshaya monthly collection scheme as Rs. 500 or its multiples''',
  '''After the duration of the monthly scheme, the money will not be given back''',
  '''If the member is a minor, the scheme should be operated/closed by their parents (father/ mother/ legal guardian).''',
  '''The members have all the right to choose their nominee. The nominee can continue being in the scheme and can purchase gold according to their choice, equal to the amount installed after the duration of the scheme.''',
  '''The members can choose the monthly instalment amount of the Akshaya monthly collection scheme as Rs. 500 or its multiples''',
  '''After the duration of the monthly scheme, the money will not be given back''',
  '''If the member is a minor, the scheme should be operated/closed by their parents (father/ mother/ legal guardian).''',
  '''The members have all the right to choose their nominee. The nominee can continue being in the scheme and can purchase gold according to their choice, equal to the amount installed after the duration of the scheme.s''',
  '''As alluded to in the application form, the mentioned nominee should submit their proof of identity. If the nominee is a minor, proof of relationship with the guardian should be submitted.''',
  '''If there happens any mistakes or inaccuracies in the passbook, it should be corrected immediately by contacting the management of the concerned regal showroom. No mistakes or inaccuracies are allowed at the time of completion/closure.''',
  '''The passbook should be maintained with care until the completion of the instalment.''',
  '''If the members lost their passbooks, they should immediately contact the concerned showrooms and take the appropriate actions''',
  '''If the scheme is closed before the duration, the first instalment will be considered fine.''',
  '''In terms of any legal issues, the border (power) will be the Thrissur district.''',
  '''The regal jewellery holds every right in anything that is not mentioned in this scheme.''',
];
