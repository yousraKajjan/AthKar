import 'package:baqa_atera/screens/Ayat/AyatScreen2.dart';
import 'package:baqa_atera/screens/favourite/cubit/cubit.dart';
import 'package:baqa_atera/models/classScreen1.dart';
import 'package:baqa_atera/screens/screen1/cubit/cubit.dart';
import 'package:baqa_atera/screens/screen1/cubit/state.dart';
import 'package:baqa_atera/screens/screen1/fadael/fadael_aldouaa.dart';
import 'package:baqa_atera/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaqaAteraScreen1 extends StatelessWidget {
  const BaqaAteraScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => FavoriteCubit(),
        )
      ],
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {},
        builder: (context, state) {
          var CountCubit = CounterCubit.get(context);

          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'مما يسن قراءته صباحاً ومساءاً',
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
                          CardMornning(model[index], context),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 0,
                          ),
                      itemCount: model.length),
                  // OutlinedButton(
                  //   style: ,
                  //   onPressed: () {},
                  //   child: const Text(
                  //     ' قراءة الأيات',
                  //     style: TextStyle(fontSize: 30, color: Colors.white),
                  //   ),
                  // )
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 66, 245, 87),
                          Colors.blue[400]!,
                          const Color.fromARGB(255, 66, 245, 87),
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
                      onPressed: () {
                        NavigateTo(
                          context,
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: AyatScreen2(),
                          ),
                        );
                      },
                      child: const Text(
                        ' قراءة الأيات',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget CardMornning(
    mornning model,
    context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      model.title ?? '',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     //   FavoriteCubit.get(context).addToFavorites(model);
                  //     FavoriteCubit.get(context).changeFavourite(model);
                  //   },
                  //   icon: FavoriteCubit.get(context).isfav
                  //       ? const Icon(Icons.favorite)
                  //       : const Icon(Icons.favorite_border),
                  // )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  '${model.body}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              TextButton(
                onPressed: model.best != null
                    ? () {
                        NavigateTo(
                          context,
                          AlFadaelScreen(
                            m: model,
                          ),
                        );
                      }
                    : null,
                child: Text(
                  model.best != null ? 'فضائل الدعاء' : '',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 66, 245, 87),
                      Colors.blue[200]!,
                      const Color.fromARGB(255, 66, 245, 87),
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
                    CounterCubit.get(context).changeSubmit(model, context);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${model.count}',
                    style: const TextStyle(fontSize: 30, color: Colors.white),
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
