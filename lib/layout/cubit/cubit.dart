import 'package:baqa_atera/layout/cubit/state.dart';
import 'package:baqa_atera/screens/Ayat/AyatScreen2.dart';
import 'package:baqa_atera/screens/diffrenet/diffrenet.dart';
import 'package:baqa_atera/screens/music/music.dart';
import 'package:baqa_atera/screens/mypage/mypage.dart';
import 'package:baqa_atera/screens/screen1/screen1.dart';
import 'package:baqa_atera/screens/werd_shazouli/werd_shazouli.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BAqaAteraeHomeCubit extends Cubit<BaqaAteraHomeState> {
  BAqaAteraeHomeCubit() : super(BAqaAteraInitialState());
  static BAqaAteraeHomeCubit get(context) => BlocProvider.of(context);

  bool isFavoriteSelected = true;

  int currentIndex = 0;

  List<Widget> screens = [
    const BaqaAteraScreen1(),
    DiffrenetScreen(),
    const MusicScreen(),
    const MyPage()
  ];

  void changeBottomNavigation(int value) {
    currentIndex = value;
    emit(ChangeBottomNavItemState());
  }

  int current = 0;

  String selectedOption = '';
  List<Widget> screens2 = [
    AyatScreen2(),
    const WerdShazouli(),
  ];

  void changebuttonpop(String value) {
    selectedOption = value;

    emit(ChangeButtnPopState());
  }

  List<String> listOption = [
    'قراءة الأيات',
    'الورد الشاذلي',
    ' ورد الأصيل',
  ];

  // void option() {
  //   emit(state);
  // }
}
