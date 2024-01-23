import 'package:baqa_atera/models/class_werd.dart';
import 'package:baqa_atera/screens/werd_shazouli/cubit/cubit.dart';
import 'package:baqa_atera/screens/werd_shazouli/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WerdShazouli extends StatelessWidget {
  const WerdShazouli({super.key});

  // bool iscountzero = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WerdCubit(),
      child: BlocConsumer<WerdCubit, WerdState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('🌼الورد الشاذلي🌼'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'الورد العام'
                        'للطريقة الشاذلية القادرية🌼',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          //  Text('data'),
                          Cardwerd(modelwerd[index], context),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 5,
                          ),
                      itemCount: modelwerd.length),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget Cardwerd(
    werd model,
    context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        color: Colors.green[200],
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  '${model.body!.data}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyanAccent,
                  // color: iscountzero ? Colors.red : Colors.cyanAccent,
                  // gradient: LinearGradient(

                  //   // colors: iscountzero
                  //   //     ? [Colors.red, Colors.white]
                  //   //     : [Colors.purple, Colors.pink]
                  //   // colors: iscountzero
                  //   //     ? [Colors.red, Colors.white, Colors.red]
                  //   //     : [
                  //   //         const Color.fromARGB(255, 66, 245, 87),
                  //   //         Colors.blue[200]!,
                  //   //       ],
                  // ),
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
                    WerdCubit.get(context).ChangeCount(model, context);
                    // setState(() {
                    // if (model.count != 0) {
                    //   model.count = model.count! - 1;
                    //   // iscountzero = false;
                    // }
                    // if (model.count == 0) {
                    //   // if (modelwerd.length.isFinite == true) {
                    //   //   Future.delayed(const Duration(milliseconds: 500), () {
                    //   //     FlutterToastr.show(
                    //   //       'رائع 🎉أنجزت  مهامك أنت بطل',
                    //   //       context,
                    //   //       position: FlutterToastr.bottom,
                    //   //       duration: FlutterToastr.lengthLong,
                    //   //       backgroundColor: primaryColorForAplication,
                    //   //       textStyle: const TextStyle(color: Colors.white),
                    //   //     );
                    //   //   });
                    //   // }
                    //   // else {
                    //   Future.delayed(const Duration(milliseconds: 500), () {
                    //     FlutterToastr.show(
                    //       'رائع 🎉أنجزت هذه المهمة انتقل للتالية',
                    //       context,
                    //       position: FlutterToastr.bottom,
                    //       duration: FlutterToastr.lengthLong,
                    //       backgroundColor: primaryColorForAplication,
                    //       textStyle: const TextStyle(color: Colors.white),
                    //     );
                    //   });
                    // }

                    // // iscountzero = true;
                    // // const Text('data');
                    // // showDialog(
                    // //   context: context,
                    // //   builder: (context) {
                    // //     return AlertDialog(
                    // //       backgroundColor: Colors.white60,
                    // //       elevation: 10,
                    // //       title: const Text(
                    // //         'تم إنجاز المهمة بنجاح',
                    // //         textDirection: TextDirection.rtl,
                    // //       ),
                    // //       actions: <Widget>[
                    // //         TextButton(
                    // //           onPressed: () {
                    // //             Navigator.pop(context);
                    // //           },
                    // //           child: const Center(
                    // //             child: Text(
                    // //               'شكرا',
                    // //               style: TextStyle(color: Colors.black),
                    // //             ),
                    // //           ),
                    // //         )
                    // //       ],
                    // //     );
                    // //   },
                    // // );
                    // // }
                    // });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${model.count}',
                    style: TextStyle(fontSize: 30, color: Colors.blue[900]!),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
