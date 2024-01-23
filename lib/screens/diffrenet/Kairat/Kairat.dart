import 'package:baqa_atera/models/ClassKairatDays.dart';
import 'package:baqa_atera/screens/diffrenet/Kairat/kairatDaysScreen.dart';
import 'package:baqa_atera/shared/components/components.dart';
import 'package:baqa_atera/shared/style/colors.dart';
import 'package:flutter/material.dart';

class KairatScreen extends StatelessWidget {
  const KairatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🌼دلائل الخيرات🌼'),
      ),
      body: Scrollbar(
        thickness: 10,
        scrollbarOrientation: ScrollbarOrientation.right,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
              // physics: const BouncingScrollPhysics(),
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    NavigateTo(
                      context,
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: KairatDScreen(
                          k: day[index],
                        ),
                      ),
                    );
                  },
                  child: ItemKairat(day[index], context)),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: day.length),
        ),
      ),
    );
  }

  Widget ItemKairat(KairatDays mod, context) {
    return Container(
      height: 95,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: primaryColorForAplication,
          boxShadow: const [BoxShadow(color: Colors.grey)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${mod.text.data}'),
          const Icon((Icons.arrow_forward_ios))
        ],
      ),
    );
  }
}
