import 'package:baqa_atera/models/classDiffrent/ClassDiffrent.dart';
import 'package:flutter/material.dart';

class DiffrentItemScreen extends StatelessWidget {
  DiffrentItemScreen({Key? key, required this.diffrent}) : super(key: key);

  Diffrent diffrent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${diffrent.title!.data}',
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(top: 10.0),
        //     child: Text(
        //       '${diffrent.title!.data}',
        //     ),
        //   ),
        // ],
      ),
      body: Item(diffrent),
      //  body: Column(
      //     children: [
      //       diffrent.s,
      //       Text(diffrent.s.text),
      //     ],
      //   )
    );
  }

  // Widget Item(Diffrent diffrent) {
  //   return SingleChildScrollView(
  //     child: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Text(
  //         '${diffrent.body!.data},',
  //         textDirection: TextDirection.rtl,
  //       ),
  //     ),
  //   );
  // }

  Widget Item(Diffrent diffrent) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text.rich(
          TextSpan(
            text: diffrent.title!.data,
            style: const TextStyle(
              // fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            children: [
              const TextSpan(
                text: '\n\n',
              ),
              TextSpan(
                text: '${diffrent.body!.data}',
                // style: const TextStyle(
                //   fontSize: 18,
                // ),
              ),
            ],
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
