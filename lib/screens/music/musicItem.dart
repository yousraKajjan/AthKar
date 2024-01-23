import 'package:baqa_atera/models/ClassMusic.dart';
import 'package:flutter/material.dart';

class MusicsItem extends StatelessWidget {
  MusicsItem({super.key, required this.mu});
  music mu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${mu.title.data}',
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(top: 10.0),
        //     child: Text(
        //       '${mu.title.data}',
        //     ),
        //   ),
        // ],
      ),
      body: SingleChildScrollView(child: Item(mu)),
    );
  }

  Widget Item(music mus) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          textAlign: TextAlign.center,
          '${mus.body.data}',
          style: const TextStyle(fontWeight: FontWeight.w300),
          textDirection: TextDirection.rtl,
          // style: TextStyle(spa),
        ),
      ),
    );
  }
}
