import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part 'pickimage_state.dart';
part 'pickimage_cubit.freezed.dart';

class PickimageCubit extends Cubit<PickimageState> {
  PickimageCubit() : super(PickimageState.initial());

  void pickimagefromgallery() async {
    XFile? data = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (data != null) {
      emit(Imageurls(imageurls: data));
    }
  }

  void pickfromcamera() async {
    XFile? data = await ImagePicker().pickImage(source: ImageSource.camera);

    if (data != null) {
      emit(
        Imageurls(imageurls: data),
      );
    }
  }

  void clear() {
    emit(PickimageState.initial());
  }

  void pickdocumentfront() async {
    XFile? data = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (data != null) {
      emit(Imageurls(imageurls: data));
    }
  }
}
