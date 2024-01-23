import 'package:baqa_atera/models/ClassAyat.dart';
import 'package:baqa_atera/screens/Ayat/cubit/state.dart';
import 'package:baqa_atera/screens/Ayat/finish_ayat.dart';
import 'package:baqa_atera/shared/components/components.dart';
import 'package:baqa_atera/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

class AyatCubit extends Cubit<AyatState> {
  AyatCubit() : super(InitialAyatState());
  static AyatCubit get(context) => BlocProvider.of(context);

  bool isLast = false;
  var pageController = PageController();
  int currentStep = 1;
  int cou = 0;
  void Toast(context) {
    showToast(String msg, {int? duration, int? position}) {
      FlutterToastr.show(msg, context, duration: duration, position: position);
    }
  }

  void changcurrentstep(int index) {
    currentStep = index + 1;
    if (index == aya.length - 1) {
      isLast = true;
    } else {
      isLast = false;
    }
    emit(currentStepAyatState());
  }

  void changCircleprogrsIndicator(Ayat model, context) {
    if (cou != model.count) {
      cou++;
    }
    if (cou == model.count) {
      const Icon(Icons.done);
      // FlutterToastr.show('msg', context,);
      FlutterToastr.show(
        'رائع 🎉أنجزت هذه المهمة انتقل للتالية',
        context,
        position: FlutterToastr.bottom,
        duration: FlutterToastr.lengthLong,
        backgroundColor: primaryColorForAplication,
        textStyle: const TextStyle(color: Colors.white),
      );
      cou = 0;
      pageController.nextPage(
          duration: const Duration(milliseconds: 1000), curve: Curves.linear);
      if (isLast == true) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.white60,
              elevation: 10,
              title: const Text(
                'تم إنجاز المهمة بنجاح',
                textDirection: TextDirection.rtl,
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);

                    pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.linear);
                    if (isLast == true) {
                      NavigateTo(
                        context,
                        const Directionality(
                            textDirection: TextDirection.rtl,
                            child: FinishAyat()),
                      );
                    }
                  },
                  child: const Center(
                    child: Text(
                      'شكرا',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            );
          },
        );
        // NavigateTo(
        //   context,
        //   const Directionality(
        //       textDirection: TextDirection.rtl,
        //       child: FinishAyat()),
        // );
      }

      // const Text('data');
    }
    emit(CircelPrograssAyatState());
  }

  Widget isCountequleOne() {
    emit(isCountequleOneState());
    return Text('');
  }
}
