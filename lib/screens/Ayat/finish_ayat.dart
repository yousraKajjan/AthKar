import 'package:baqa_atera/screens/werd_shazouli/werd_shazouli.dart';
import 'package:baqa_atera/shared/components/components.dart';
import 'package:flutter/material.dart';

class FinishAyat extends StatefulWidget {
  const FinishAyat({super.key});

  @override
  State<FinishAyat> createState() => _FinishAyatState();
}

class _FinishAyatState extends State<FinishAyat> {
  double _avatarSize = 50;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 5), () {
      setState(() {
        _avatarSize = 170;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🌼لقد انتهيت🌼'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              minRadius: 80,
              backgroundColor: const Color.fromARGB(255, 102, 255, 7),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: _avatarSize,
                  height: _avatarSize,
                  child: Icon(
                    Icons.download_done_sharp,
                    size: 100,
                    color: Colors.green[500]!,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
                child: Text('راا ئع🎉 لقد أنهيت قراءة الأوراد🌼'
                    '\n'
                    '\n'
                    'هل تريد قراءة الورد الشاذلي ؟')),
          ),
          Container(
            // width: doub,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Colors.green[200]!,
                  const Color.fromARGB(255, 66, 245, 87),
                  const Color.fromARGB(255, 66, 245, 87),
                  Colors.green[200]!,
                  // const Color.fromARGB(255, 202, 242, 5),
                  // Colors.blue[200]!,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue[400]!.withOpacity(0.8),
                  blurRadius: 7,
                  spreadRadius: 2,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: MaterialButton(
              elevation: 10,
              onPressed: () {
                NavigateTo(
                  context,
                  const Directionality(
                    textDirection: TextDirection.rtl,
                    child: WerdShazouli(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                ' قراءة الورد الشاذلي',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
