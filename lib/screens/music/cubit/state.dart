import 'package:baqa_atera/screens/music/music.dart';

abstract class MusicState {}

class MusicInitialState extends MusicState {}

class MusicCahngeFavouriteState extends MusicState {}

class MusicPlayerState extends MusicState {}

// class AudioPlayerState extends MusicState{
//   const AudioPlayerState(this.index);

//   final int index;

//   static const loading = AudioPlayerState._(0);
//   static const playing = AudioPlayerState._(1);
//   static const paused = AudioPlayerState._(2);
//   static const stopped = AudioPlayerState._(3);
//   static const error = AudioPlayerState._(4);
// }
// abstract class MusicState {}

// class MusicInitial extends MusicState {
//   @override
//   List<Object> get props => [];
// }

// class MusicPlaying extends MusicState {
//   final music musics;

//   MusicPlaying(this.musics);

//   @override
//   List<Object?> get props => [music];
// }

// class MusicStopped extends MusicState {
//   final music musics;

//   MusicStopped(this.musics);

//   @override
//   List<Object?> get props => [music];
// }

// class FavouritesUpdated extends MusicState {
//   final Map<String, bool> favourites;

//   FavouritesUpdated(this.favourites);

//   @override
//   List<Object?> get props => [favourites];
// }
