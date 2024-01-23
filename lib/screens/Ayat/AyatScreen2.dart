import 'package:baqa_atera/models/ClassAyat.dart';
import 'package:baqa_atera/screens/Ayat/cubit/cubit.dart';
import 'package:baqa_atera/screens/Ayat/cubit/state.dart';
import 'package:baqa_atera/screens/Ayat/fadael/fadael_alayat.dart';
import 'package:baqa_atera/screens/Ayat/finish_ayat.dart';
import 'package:baqa_atera/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AyatScreen2 extends StatelessWidget {
  // const AyatScreen2({super.key});
  Ayat? Ay;

  AyatScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AyatCubit(),
      child: BlocConsumer<AyatCubit, AyatState>(
          listener: (context, state) {},
          builder: (context, state) {
            var AyaCubit = AyatCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: const Text('🌼الايات🌼'),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      // reverse: true,
                      onPageChanged: (int index) {
                        AyaCubit.changcurrentstep(index);
                      },

                      itemBuilder: (context, index) =>
                          ItemAyat(aya[index], context),
                      controller: AyaCubit.pageController,
                      itemCount: aya.length,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // if(aya.count !=0){}
                          if (AyaCubit.isLast == true) {
                            NavigateTo(
                              context,
                              const Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: FinishAyat()),
                            );
                          }
                          AyaCubit.pageController.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear);
                          // Do something when the button is pressed
                          AyaCubit.cou = 0;
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'التالي',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  Widget ItemAyat(
    Ayat model,
    context,
  ) {
    var AyaCubit = AyatCubit.get(context);
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('${aya.length} '
                      '/'
                      '${AyaCubit.currentStep}'),
                  Expanded(
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: StepProgressIndicator(
                          totalSteps: aya.length,
                          currentStep: AyaCubit.currentStep,
                          size: 10,
                          padding: 0,
                          selectedColor: Colors.blue,
                          unselectedColor: Colors.grey,
                          roundedEdges: const Radius.circular(2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                model.title?.data ?? '🌼🌼🌼🌼🌼',
                textDirection: TextDirection.rtl,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                '${model.body!.data}',
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            TextButton(
              onPressed: model.best != null
                  ? () {
                      NavigateTo(
                        context,
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: FadaelAlAyat(
                              m: model,
                            ),
                          ),
                        ),
                      );
                    }
                  : null,
              child: Text(
                model.best != null ? '🌼فضائل قراءة هذه الاية🌼' : '',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.blue),
              ),
            ),
            Text('عدد المرات:' '${model.count}'),
            Center(
              child: Text(
                '🌼🌼🌼🌼🌼',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                // splashColor: Colors.amber,
                onTap: () {
                  AyaCubit.changCircleprogrsIndicator(model, context);

                  // if (model.count != 1) {
                  //   AyaCubit.changCircleprogrsIndicator(model, context);
                  // } else {
                  //   AyatCubit.get(context).isCountequleOne();
                  //   // child.
                  //   // CircularStepProgressIndicator().Visibility();
                  //   // Visibility(child: CircularStepProgressIndicator()).;
                  // }
                },
                child: model.count != 1
                    ? CircularStepProgressIndicator(
                        circularDirection: CircularDirection.clockwise,
                        // startingAngle: 5,
                        totalSteps: model.count!.toInt(),
                        currentStep: AyaCubit.cou,
                        stepSize: 10,
                        selectedColor: Colors.greenAccent,
                        unselectedColor: Colors.grey[200],
                        padding: 0,
                        width: 125,
                        height: 125,
                        selectedStepSize: 15,
                        roundedCap: (_, __) => true,
                        child: Center(
                          child: Text(
                            '${AyaCubit.cou}' '/' '${model.count}',
                            style: TextStyle(
                                fontSize: 30, color: Colors.pink[300]!),
                          ),
                        ),
                      )
                    : const Text(''),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
