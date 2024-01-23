import 'package:audioplayers/audioplayers.dart';
import 'package:baqa_atera/models/ClassMusic.dart';
import 'package:baqa_atera/screens/music/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MusicCubit extends Cubit<MusicState> {
  MusicCubit() : super(MusicInitialState());
  static MusicCubit get(context) => BlocProvider.of(context);

  AudioPlayer player = AudioPlayer();

  void dispose() {
    player.dispose(); // تحرير مورد الصوت
    // super.dispose();
  }

  Map<String, bool> favourites = {}; // قاموس يُخزن قوائم المفضلة
  // bool isfavourite = false;
  void changeFavourite(music m) {
    bool isFavourite =
        favourites.containsKey(m.path) && favourites[m.path] == true;
    isFavourite = !isFavourite;
    if (isFavourite) {
      // إضافة العنصر إلى قائمة المفضلة
      favourites[m.path] = true;
    } else {
      // إزالة العنصر من قائمة المفضلة
      favourites.remove(m.path);
    }

    emit(MusicCahngeFavouriteState());
  }

  void playmusic(music m) {
    m.isPlaying = !m.isPlaying; // تغيير حالة التشغيل للعنصر
    if (m.isPlaying) {
      // تشغيل الموسيقى فقط للعنصر الحالي
      player.play(
        AssetSource(m.path),
      );
    } else {
      player.pause();
    }
    emit(MusicPlayerState());
  }
}

// class MusicCubit extends Cubit<MusicState> {
//   AudioPlayer player = AudioPlayer();
//   Map<String, bool> favourites = {};
//   bool isfavourite = false;

//   MusicCubit() : super(MusicInitial());
//   void playMusic(music m) async {
//     if (state is MusicPlaying &&
//         (state as MusicPlaying).musics.path == m.path) {
//       // If the same music is already playing, stop the player and reset the state.
//       player.stop();
//       emit(MusicStopped(m));
//     } else {
//       // Otherwise, play the selected music and update the state accordingly.
//       final result = await player.play(AssetSource(m.path));
//       // if (result == 1) {
//       emit(MusicPlaying(m));
//       // }
//     }
//   }

//   void toggleFavourite(music m) {
//     bool isFavourite =
//         favourites.containsKey(m.path) && favourites[m.path] == true;
//     isFavourite = !isFavourite;
//     if (isFavourite) {
//       favourites[m.path] = true;
//     } else {
//       favourites.remove(m.path);
//     }
//     emit(FavouritesUpdated(favourites));
//   }

//   @override
//   Future<void> close() {
//     player.dispose();
//     return super.close();
//   }
// }
