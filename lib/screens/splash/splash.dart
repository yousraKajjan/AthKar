import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String nextPage = "";
  @override
  void initState() {
    initNextPage();
    super.initState();
  }

  initNextPage() async {
    nextPage = '/home';

    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, nextPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ ',
                style: TextStyle(color: Colors.green, fontSize: 35),
              ),
              const SizedBox(
                height: 30,
              ),
              ClipOval(
                // radius: 100,
                child: Image.asset(
                  'assets/images/pngtree-flower-hand-bouquet-png-image_11397027.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
