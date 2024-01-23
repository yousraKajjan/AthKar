import 'package:baqa_atera/screens/diffrenet/Asil/AlAsil.dart';
import 'package:baqa_atera/screens/diffrenet/Kairat/Kairat.dart';
import 'package:baqa_atera/models/classDiffrent/ClassDiffrent.dart';
import 'package:baqa_atera/screens/diffrenet/diffrentItem.dart';
import 'package:baqa_atera/shared/components/components.dart';
import 'package:flutter/material.dart';

class DiffrenetScreen extends StatelessWidget {
  Diffrent? g;

  DiffrenetScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        // physics: ScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: List.generate(
          Grid.length,
          (index) => InkWell(
            onTap: () {
              if (index == 0) {
                NavigateTo(
                  context,
                  const Directionality(
                    textDirection: TextDirection.rtl,
                    child: KairatScreen(),
                  ),
                );
              }
              if (index == 3) {
                NavigateTo(
                  context,
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: AlAsislScreen(),
                  ),
                );
              } else if (index != 0 && index != 3) {
                NavigateTo(
                  context,
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: DiffrentItemScreen(
                      diffrent: Grid[index],
                    ),
                  ),
                );
              }
              // Navigator.of(context).pushNamed(
              //   DiffrentItemScreen.ScreenRoute,
              //   arguments: Grid[index].title,
              // );

              print('object');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[500],
                border: Border.all(color: Colors.green[400]!, width: 2),
                borderRadius: BorderRadius.circular(0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  '${Grid[index].title!.data}',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
