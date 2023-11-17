part of 'pickimage_cubit.dart';

@freezed
class PickimageState with _$PickimageState {
  const factory PickimageState.imageurls(
      {required XFile? imageurls,
      required XFile? docfrnt,
      required XFile? docback}) = Imageurls;

  factory PickimageState.initial() => const PickimageState.imageurls(
      imageurls: null, docfrnt: null, docback: null);
}
