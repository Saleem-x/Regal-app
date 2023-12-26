import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'getgoldweight_state.dart';
part 'getgoldweight_cubit.freezed.dart';

class GetgoldweightCubit extends Cubit<GetgoldweightState> {
  GetgoldweightCubit() : super(GetgoldweightState.initial());

  void getgoldweight(double amount, String goldrate) {
    double goldRateValue = double.parse(goldrate);

    if (goldRateValue > 0) {
      double cumulativeWeight = amount / goldRateValue;
      emit(GetGOldWeightfromAmount(
          weight: (cumulativeWeight * 100 / 100).toStringAsFixed(2)));
    } else {
      emit(const GetGOldWeightfromAmount(weight: '0.00'));
    }
  }
}
