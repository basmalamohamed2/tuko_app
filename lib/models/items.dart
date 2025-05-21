import 'package:audioplayers/audioplayers.dart';

class ItemsModel {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;
  const ItemsModel(
      {required this.sound,
       this.image,
      required this.jpName,
      required this.enName});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
