part of 'getgoldweight_cubit.dart';

@freezed
class GetgoldweightState with _$GetgoldweightState {
  const factory GetgoldweightState.getGOldWeightfromAmount(
      {required String? weight}) = GetGOldWeightfromAmount;

  factory GetgoldweightState.initial() =>
      const GetgoldweightState.getGOldWeightfromAmount(weight: null);
}
