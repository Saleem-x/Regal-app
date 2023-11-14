part of 'instalmenthystory_bloc.dart';

@freezed
class InstalmenthystoryState with _$InstalmenthystoryState {
  const factory InstalmenthystoryState.getinstalmentHystoryState({
    required List<InstalmentHystoryModel>? insthystry,
  }) = GetinstalmentHystoryState;
  const factory InstalmenthystoryState.insthystryFailed() = InsthystryFailed;

  const factory InstalmenthystoryState.hystoryLoadigState() =
      HystoryLoadigState;

  factory InstalmenthystoryState.initial() =>
      const InstalmenthystoryState.hystoryLoadigState();
}
