import 'package:baqa_atera/models/class_werd.dart';
import 'package:baqa_atera/screens/werd_shazouli/cubit/state.dart';
import 'package:baqa_atera/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

class WerdCubit extends Cubit<WerdState> {
  WerdCubit() : super(WerdInitialState());
  static WerdCubit get(context) => BlocProvider.of(context);
  bool iscountzero = false;

  void ChangeCount(werd model, context) {
    if (model.count != 0) {
      model.count = model.count! - 1;
      // iscountzero = false;
    }
    if (model.count == 0) {
      Future.delayed(const Duration(milliseconds: 500), () {
        FlutterToastr.show(
          'رائع 🎉أنجزت هذه المهمة انتقل للتالية',
          context,
          position: FlutterToastr.bottom,
          duration: FlutterToastr.lengthLong,
          backgroundColor: primaryColorForAplication,
          textStyle: const TextStyle(color: Colors.white),
        );
      });
    }
    emit(WerdChangeCountState());
  }
}
