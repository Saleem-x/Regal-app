// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheme_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchemeDetailsModel _$SchemeDetailsModelFromJson(Map<String, dynamic> json) =>
    SchemeDetailsModel(
      schemeNo: json['SchemeNo'] as String?,
      goldWeight: json['GoldWeight'] as String?,
      goldRate: json['goldRate'] as String?,
      totAmount: json['TotAmount'] as String?,
      onepay: json['Onepay'] as String?,
      dueDate: json['DueDate'] as String?,
      noofInst: json['noofInst'] as String?,
      issueDate: json['IssueDate'] as String?,
      closingDate: json['ClosingDate'] as String?,
      joinId: json['joinID'] as String?,
      schemeName: json['schemeName'] as String?,
      paidInst: json['paidInst'] as String?,
      schemeAmount: json['schemeAmount'] as String?,
      custName: json['CustName'] as String?,
      billingAddress: json['billing_address'] as String?,
      billingCity: json['billing_city'] as String?,
      billingCountry: json['billing_country'] as String?,
      billingEmail: json['billing_email'] as String?,
      billingState: json['billing_state'] as String?,
      billingZip: json['billing_zip'] as String?,
    );

Map<String, dynamic> _$SchemeDetailsModelToJson(SchemeDetailsModel instance) =>
    <String, dynamic>{
      'SchemeNo': instance.schemeNo,
      'GoldWeight': instance.goldWeight,
      'goldRate': instance.goldRate,
      'TotAmount': instance.totAmount,
      'Onepay': instance.onepay,
      'DueDate': instance.dueDate,
      'noofInst': instance.noofInst,
      'IssueDate': instance.issueDate,
      'ClosingDate': instance.closingDate,
      'joinID': instance.joinId,
      'schemeName': instance.schemeName,
      'paidInst': instance.paidInst,
      'schemeAmount': instance.schemeAmount,
      'CustName': instance.custName,
      'billing_address': instance.billingAddress,
      'billing_city': instance.billingCity,
      'billing_country': instance.billingCountry,
      'billing_email': instance.billingEmail,
      'billing_state': instance.billingState,
      'billing_zip': instance.billingZip,
    };
