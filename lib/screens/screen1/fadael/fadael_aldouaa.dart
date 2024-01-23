import 'package:baqa_atera/models/classScreen1.dart';
import 'package:flutter/material.dart';

class AlFadaelScreen extends StatelessWidget {
  // const AlFadaelScreen({super.key});
  mornning? m;

  AlFadaelScreen({super.key, required this.m});
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(actions: const [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'فضائل هذا الدعاء',
            style: TextStyle(letterSpacing: 1, wordSpacing: 2),
          ),
        ),
      ]),
      body: fadaelWidget(m!),
    );
  }
}

Widget fadaelWidget(mornning m) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(50), right: Radius.circular(50)),
      ),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          '${m.best}',
          textDirection: TextDirection.rtl,
          selectionColor: Colors.amber,
        ),
      ),
    ),
  );
}
