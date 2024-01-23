import 'package:baqa_atera/models/ClassAyat.dart';
import 'package:flutter/material.dart';

class FadaelAlAyat extends StatelessWidget {
  // const FadaelAlAyat({super.key});
  Ayat m;

  FadaelAlAyat({super.key, required this.m});

  // FadaelAlAyat({super.key, required this.m});
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('🌼فضائل قراءة هذه الأية 🌼'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    '🌼🌼🌼🌼🌼',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black),
                  ),
                ),
                fadaelWidget(m),
                Center(
                  child: Text(
                    '🌼🌼🌼🌼🌼',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget fadaelWidget(Ayat m) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '${m.best!.data}',
        // textDirection: TextDirection.rtl,
        selectionColor: Colors.amber,
      ),
    ),
  );
}
