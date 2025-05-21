import 'package:flutter/material.dart';
import 'package:tuko_app/components/phrase_item.dart';
import 'package:tuko_app/models/items.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemsModel> phrasesList = const [
    ItemsModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka?',
      enName: 'Are You Coming?',
    ),
    ItemsModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, kimasu.',
      enName: "Yes, I'm coming.",
    ),
    ItemsModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Anime ga daisuki desu.',
      enName: 'I Love Anime.',
    ),
    ItemsModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Genki desu ka?',
      enName: 'How are you feeling?',
    ),
    ItemsModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Puroguramingu ga daisuki desu.',
      enName: 'I Love Programming.',
    ),
    ItemsModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantan desu!',
      enName: 'Programming is easy!',
    ),
    ItemsModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'O-namae wa nan desu ka?',
      enName: 'What is your name?',
    ),
    ItemsModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni ikimasu ka?',
      enName: 'Where are you going?',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.deepPurple[100],
          title: const Text(
            'Phrases',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(item: phrasesList[index]);
        },
      ),
    );
  }
}
