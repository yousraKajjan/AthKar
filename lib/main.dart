import 'package:baqa_atera/layout/cubit/bloc_observer.dart';
import 'package:baqa_atera/layout/homeScreen.dart';
import 'package:baqa_atera/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const Baqa_Atera());
}

class Baqa_Atera extends StatelessWidget {
  const Baqa_Atera({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baqa Atera 💘',
      theme: ThemeData(
        fontFamily: 'Hacen',
        primaryColor: const Color.fromARGB(255, 36, 208, 42),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 30, color: Colors.blue[500]),
          bodyMedium: const TextStyle(fontSize: 25),
          bodySmall: const TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 96, 96, 96)),
        ),
        canvasColor: Colors.green[100],
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 30, color: Colors.white),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.white54,
          ),
          backgroundColor: Color.fromARGB(255, 36, 208, 42),
        ),
        scrollbarTheme: ScrollbarThemeData(
          radius: const Radius.circular(40),
          thumbColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 49, 227, 55),
          ), // تعديل لون مؤشر التمرير
          trackColor: MaterialStateProperty.all<Color>(
              Colors.blue), // تعديل لون خلفية التمرير
          // mainAxisMargin: 16, // تعديل هامش المحور الرئيسي
          // crossAxisMargin: 16, // تعديل هامش المحور الجانبي
          thickness:
              MaterialStateProperty.all<double>(10), // تعديل سمك شريط التمرير
          // minThumbLength: 48, // تعديل الحد الأدنى لطول مؤشر التمرير
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Color.fromARGB(255, 36, 208, 42),
          selectedLabelStyle:
              TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
          // backgroundColor: Colors.blueGrey,
          // elevation: 10,
        ),
        cardTheme: CardTheme(
          color: Colors.green[300],
        ),
      ),
      routes: {
        '/home': (context) => const Directionality(
              textDirection: TextDirection.rtl,
              child: BaqaAteraHomeScreen(),
            ),
      },
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: SplashScreen(),
      ),
    );
  }
}
