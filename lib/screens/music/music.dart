//Music Without Cubit
import 'package:audioplayers/audioplayers.dart';
import 'package:baqa_atera/models/ClassMusic.dart';
import 'package:baqa_atera/screens/music/musicItem.dart';
import 'package:baqa_atera/shared/components/components.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
// import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dar';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  AudioPlayer player = AudioPlayer();
  Map<String, bool> favourites = {}; // قاموس يُخزن قوائم المفضلة

  @override
  void dispose() {
    player.dispose(); // تحرير مورد الصوت
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BlocBuilder(
            //   builder: (context, state) {
            //     if (state is Musicloading) ;
            //   },
            // ),
            Center(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      MusicItem(musics[index], context),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: musics.length),
            ),
          ],
        ),
      ),
    );
  }

  Widget MusicItem(music m, context) {
    // bool isFavourite = MusicCubit.get(context).favourites.containsKey(m.path) &&
    //   MusicCubit.get(context).favourites[m.path] == true;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${m.title.data}'),
                      IconButton(
                          onPressed: () {
                            NavigateTo(
                                context,
                                Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: MusicsItem(mu: m)));
                          },
                          icon: const Icon(Icons.arrow_back_ios_new))

                      // IconButton(
                      //   onPressed: () {
                      //     // MusicCubit.get(context).changeFavourite(m);
                      //   },
                      //   icon: isFavourite
                      //       ? const Icon(Icons.favorite)
                      //       : const Icon(Icons.favorite_border_outlined),
                      // ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        iconSize: 30,
                        tooltip: 'تشغيل',
                        onPressed: () async {
                          //MusicCubit.get(context).playmusic(m);

                          setState(() {
                            m.isPlaying =
                                !m.isPlaying; // تغيير حالة التشغيل للعنصر
                            if (m.isPlaying) {
                              // تشغيل الموسيقى فقط للعنصر الحالي
                              player.play(
                                AssetSource(m.path),
                              );
                            } else {
                              player.pause();
                            }
                          });
                        },
                        icon: m.isPlaying
                            ? const Icon(Icons.stop)
                            : const Icon(Icons.play_circle),
                      ),
                      StreamBuilder<Duration>(
                        stream:
                            // MusicCubit.get(context).player.onDurationChanged,
                            player.onDurationChanged,
                        builder: (context, snapshot) {
                          final duration = snapshot.data ?? Duration.zero;
                          return StreamBuilder<Duration>(
                            // stream: MusicCubit.get(context)
                            stream: player.onPositionChanged,
                            builder: (context, snapshot) {
                              final position = snapshot.data ?? Duration.zero;
                              if (m.isPlaying) {
                                return Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          // '${position.inSeconds}:${duration.inSeconds}',
                                          '${position.inHours}:${position.inMinutes}:${position.inSeconds}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          // '${position.inSeconds}:${duration.inSeconds}',
                                          '${duration.inHours}:${duration.inMinutes}:${duration.inSeconds}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    Slider(
                                      value: position.inSeconds.toDouble(),
                                      onChanged: (value) {
                                        // MusicCubit.get(context).player.seek(
                                        player.seek(
                                          Duration(seconds: value.toInt()),
                                        );
                                      },
                                      min: 0,
                                      max: duration.inSeconds.toDouble(),
                                    ),
                                  ],
                                );
                              } else {
                                return const Text('اضغط للبدأ');
                              }
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}




//Music With Cubit 
// import 'package:baqa_atera/screens/music/ClassMusic.dart';
// import 'package:baqa_atera/screens/music/cubit/cubit.dart';
// import 'package:baqa_atera/screens/music/cubit/state.dart';
// import 'package:baqa_atera/screens/music/musicItem.dart';
// import 'package:baqa_atera/shared/components/components.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:audioplayers/audio_cache.dart';
// // import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dar';

// class MusicScreen extends StatelessWidget {
//   const MusicScreen({super.key});

//   @override
//   void dispose(context) {
//     MusicCubit.get(context).player.dispose(); // تحرير مورد الصوت
//     // super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => MusicCubit(),
//       child: BlocConsumer<MusicCubit, MusicState>(
//         listener: (context, state) {
//           if (state is MusicPlayerState == false) {
//             if (MusicCubit.get(context).player ==
//                 MusicCubit.get(context).player.mode) {
//               MusicCubit.get(context).player.stop();
//             }
//           }
//         },
//         builder: (context, state) {
//           return Scaffold(
//             body: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   // BlocBuilder(
//                   //   builder: (context, state) {
//                   //     if (state is Musicloading) ;
//                   //   },
//                   // ),
//                   Center(
//                     child: ListView.separated(
//                         shrinkWrap: true,
//                         itemBuilder: (context, index) =>
//                             MusicItem(musics[index], context),
//                         separatorBuilder: (context, index) => const SizedBox(
//                               height: 10,
//                             ),
//                         itemCount: musics.length),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget MusicItem(music m, context) {
//     bool isFavourite = MusicCubit.get(context).favourites.containsKey(m.path) &&
//         MusicCubit.get(context).favourites[m.path] == true;
//     return Column(
//       children: [
//         SizedBox(
//           width: double.infinity,
//           child: InkWell(
//             onTap: () {
//               NavigateTo(
//                   context,
//                   Directionality(
//                       textDirection: TextDirection.rtl,
//                       child: MusicsItem(mu: m)));
//             },
//             child: Card(
//               margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//               elevation: 10,
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text('${m.title.data}'),
//                         IconButton(
//                           onPressed: () {
//                             MusicCubit.get(context).changeFavourite(m);
//                           },
//                           icon: isFavourite
//                               ? const Icon(Icons.favorite)
//                               : const Icon(Icons.favorite_border_outlined),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         IconButton(
//                           iconSize: 30,
//                           tooltip: 'تشغيل',
//                           onPressed: () async {
//                             MusicCubit.get(context).playmusic(m);
//                           },
//                           icon: m.isPlaying
//                               ? const Icon(Icons.stop)
//                               : const Icon(Icons.play_circle),
//                         ),
//                         StreamBuilder<Duration>(
//                           stream:
//                               MusicCubit.get(context).player.onDurationChanged,
//                           builder: (context, snapshot) {
//                             final duration = snapshot.data ?? Duration.zero;
//                             return StreamBuilder<Duration>(
//                               stream: MusicCubit.get(context)
//                                   .player
//                                   .onPositionChanged,
//                               builder: (context, snapshot) {
//                                 final position = snapshot.data ?? Duration.zero;
//                                 if (m.isPlaying) {
//                                   return Row(
//                                     children: [
//                                       Column(
//                                         children: [
//                                           Text(
//                                             // '${position.inSeconds}:${duration.inSeconds}',
//                                             '${position.inHours}:${position.inMinutes}:${position.inSeconds}',
//                                             style:
//                                                 const TextStyle(fontSize: 20),
//                                           ),
//                                           Text(
//                                             // '${position.inSeconds}:${duration.inSeconds}',
//                                             '${duration.inHours}:${duration.inMinutes}:${duration.inSeconds}',
//                                             style:
//                                                 const TextStyle(fontSize: 20),
//                                           ),
//                                         ],
//                                       ),
//                                       Slider(
//                                         value: position.inSeconds.toDouble(),
//                                         onChanged: (value) {
//                                           MusicCubit.get(context).player.seek(
//                                                 Duration(
//                                                     seconds: value.toInt()),
//                                               );
//                                         },
//                                         min: 0,
//                                         max: duration.inSeconds.toDouble(),
//                                       ),
//                                     ],
//                                   );
//                                 } else {
//                                   return const Text('اضغط للبدأ');
//                                 }
//                               },
//                             );
//                           },
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
