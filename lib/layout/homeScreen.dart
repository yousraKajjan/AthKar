import 'package:baqa_atera/layout/cubit/cubit.dart';
import 'package:baqa_atera/layout/cubit/state.dart';
import 'package:baqa_atera/screens/Ayat/AyatScreen2.dart';
import 'package:baqa_atera/screens/diffrenet/Asil/AlAsil.dart';
import 'package:baqa_atera/screens/werd_shazouli/werd_shazouli.dart';
import 'package:baqa_atera/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaqaAteraHomeScreen extends StatelessWidget {
  const BaqaAteraHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BAqaAteraeHomeCubit(),
      child: BlocConsumer<BAqaAteraeHomeCubit, BaqaAteraHomeState>(
        listener: (context, state) {
          if (state is ChangeButtnPopState) {
            final selectedOption =
                BAqaAteraeHomeCubit.get(context).selectedOption;

            if (selectedOption == 'option1') {
              NavigateTo(
                  context,
                  Directionality(
                      textDirection: TextDirection.rtl, child: AyatScreen2()));
            } else if (selectedOption == 'option2') {
              NavigateTo(
                context,
                const Directionality(
                  textDirection: TextDirection.rtl,
                  child: WerdShazouli(),
                ),
              );
            } else if (selectedOption == 'option3') {
              NavigateTo(
                context,
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: AlAsislScreen(),
                ),
              );
            }
          }
        },
        builder: (context, state) {
          var cubit = BAqaAteraeHomeCubit.get(context);

          return Scaffold(
            extendBodyBehindAppBar: false,
            appBar: AppBar(
              actions: [MyButton(context)],
              title: Text(
                // '🌷طرةعطرة🌼🌺🌻💐باقة🌸',
                '🌼باقة عطرة 🌼',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.black),
              ),
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              // elevation: 100.0,
              currentIndex: cubit.currentIndex,
              onTap: (value) {
                cubit.changeBottomNavigation(value);
              },

              type: BottomNavigationBarType.shifting,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'أوراد الصباح \nوالمساء',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.type_specimen),
                  label: 'منوع',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.music_note_rounded),
                  label: 'أناشيد',
                ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.favorite_outline),
                //   label: 'مفضلتي',
                //   tooltip: ' هذه مفضلتي',
                // ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'من نحن؟',
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget MyButton(context) => PopupMenuButton<String>(
        color: Colors.green[100],
        // icon: Icon(MdiIcons.dotsVertical),
        icon: const Icon(Icons.more_vert),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'option1',
            child: Text('قراءة الأيات'),
          ),
          const PopupMenuItem<String>(
            value: 'option2',
            child: Text('الورد الشاذلي'),
          ),
          const PopupMenuItem<String>(
            value: 'option3',
            child: Text(' ورد الأصيل'),
          ),
        ],
        onSelected: (String value) {
          // NavigateTo(context, BAqaAteraeHomeCubit.get(context).changebuttonpop(value));
          BAqaAteraeHomeCubit.get(context).changebuttonpop(value);
          // قم بتنفيذ أي طرق الانتقال بين الشاشات المطلوبة هنا
        },
        // onSelected: (String value) {
        //   NavigateTo(context, BAqaAteraeHomeCubit.get(context).current);
        //   BAqaAteraeHomeCubit.get(context).changebuttonpop(value);
        // setState(() {
        //   selectedOption = value;
        // });

        // يمكنك هنا استدعاء شاشة معينة بناءً على الخيار المحدد
        // قم بتعريف طرق الانتقال بين الشاشات ومن ثم استخدمها هنا
        // },
      );
}
