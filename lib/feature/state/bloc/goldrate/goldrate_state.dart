part of 'goldrate_bloc.dart';

@freezed
class GoldrateState with _$GoldrateState {
  const factory GoldrateState.goldratestate(
      {required GoldRateModel? goldrate}) = Goldratestate;
  const factory GoldrateState.failedState() = FailedState;

  factory GoldrateState.initial() =>
      const GoldrateState.goldratestate(goldrate: null);
}
