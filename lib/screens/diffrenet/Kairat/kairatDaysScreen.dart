import 'package:baqa_atera/models/ClassKairatDays.dart';
import 'package:flutter/material.dart';

class KairatDScreen extends StatelessWidget {
  KairatDScreen({Key? key, required this.k}) : super(key: key);
  KairatDays k;
  // ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    // ScrollPosition scrollController = ScrollPosition(context: ScrollContext(),physics: ScrollPhysics(
    //   parent: AlwaysScrollableScrollPhysics()
    // ));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${k.text.data}',
          // maxLines: 2,
          style: const TextStyle(
            overflow: TextOverflow.visible,
          ),
        ),
      ),
      body: Scrollbar(
          interactive: true,
          thumbVisibility: true,
          thickness: 10,
          radius: const Radius.circular(20),
          scrollbarOrientation: ScrollbarOrientation.right,
          child: KairatData()),
    );
  }

  Widget KairatData() {
    return Scrollbar(
      thickness: 2,
      interactive: true,
      // controller: scrollController,
      radius: const Radius.circular(15),
      scrollbarOrientation: ScrollbarOrientation.right,
      thumbVisibility: true,
      // controller: scrollController,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(child: Text('${k.body.data}')),
            ),
          ],
        ),
      ),
    );
  }
}
