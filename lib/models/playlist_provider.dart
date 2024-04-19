import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';

class PlaylistProvider extends ChangeNotifier{
  final  List<Song> _playlist = [
  // song 1
  Song(
    songName: "Pluto Projector", 
    artistName: "Rex Orange County", 
    albumArtImagePath: "assets/images/pluto projector.jpeg", 
    audioPath: "audio/assets/audio/Rex+Orange+County+-+Pluto+Projector+(Official+Audio).mp3"
    ),
  // song 2
  Song(
    songName: "This is What Autum Feels Like", 
    artistName: "JVKE", 
    albumArtImagePath: "assets/images/jvke.jpeg", 
    audioPath: "audio/assets/audio/assets/audio/JVKE+-+this+is+what+autumn+feels+like.mp3",
    ),
  // song 3
  Song(
    songName: "UNDESTAND", 
    artistName: "Keshi", 
    albumArtImagePath: "assets/images/keshi.jpeg", 
    audioPath: "audio/assets/audio/assets/audio/keshi+-+UNDERSTAND+(Official+Music+Video).mp3",
    ),
  // song 4
  Song(
    songName: "Winter's Glow", 
    artistName: "Kardi", 
    albumArtImagePath: "assets/images/kardi.jpg", 
    audioPath: "audio/assets/audio/assets/audio/Winter's+Glow.mp3",
    ),
  // song 5
  Song(
    songName: "Love Me", 
    artistName: "Realstk", 
    albumArtImagePath: "assets/images/realstk.jpeg", 
    audioPath: "audio/assets/audio/assets/audio/RealestK+-+Love+Me+(Official+Audio).mp3",
    ),
  ];

  int? _currentSongIndex;

  /*

  G E T T E R S

  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;


  /*

  s E T T E R S

  */

  set currentSongIndex(int? newIndex) {

    _currentSongIndex = newIndex;
    
    notifyListeners();
  }
}
