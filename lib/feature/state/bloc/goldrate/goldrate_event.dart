part of 'goldrate_bloc.dart';

@freezed
class GoldrateEvent with _$GoldrateEvent {
  const factory GoldrateEvent.getgoldRate({required String datakey}) =
      GetgoldRateEvent;
}
