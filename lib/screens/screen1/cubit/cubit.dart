import 'package:baqa_atera/models/classScreen1.dart';
import 'package:baqa_atera/screens/screen1/cubit/state.dart';
import 'package:baqa_atera/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterStateInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  void changeSubmit(mornning model, context) {
    if (model.count != 0) {
      model.count = model.count! - 1;
    }
    if (model.count == 0) {
      Future.delayed(const Duration(microseconds: 50), () {
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
    emit(CounterSubmitState());
  }
}
