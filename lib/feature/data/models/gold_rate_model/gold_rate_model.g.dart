// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gold_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoldRateModel _$GoldRateModelFromJson(Map<String, dynamic> json) =>
    GoldRateModel(
      boardRate: json['BoardRate'] as String?,
      weight: json['weight'] as String?,
      entryDate: json['EntryDate'] as String?,
      entryTime: json['EntryTime'] as String?,
      totalPrice: json['TotalPrice'] as String?,
      branchId: json['Branch_id'] as int?,
      branchName: json['BranchName'] as String?,
      branchCode: json['BranchCode'] as String?,
    );

Map<String, dynamic> _$GoldRateModelToJson(GoldRateModel instance) =>
    <String, dynamic>{
      'BoardRate': instance.boardRate,
      'weight': instance.weight,
      'EntryDate': instance.entryDate,
      'EntryTime': instance.entryTime,
      'TotalPrice': instance.totalPrice,
      'Branch_id': instance.branchId,
      'BranchName': instance.branchName,
      'BranchCode': instance.branchCode,
    };
