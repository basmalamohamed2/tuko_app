import 'package:flutter/material.dart';
import 'package:tuko_app/components/list_item.dart';
import 'package:tuko_app/models/items.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemsModel> item = const [
    ItemsModel(
      sound: 'sounds/colors/black.wav',
      jpName: 'Kuro',
      enName: 'Black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemsModel(
      sound: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'Brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemsModel(
      sound: 'sounds/colors/gray.wav',
      jpName: 'Haiiro',
      enName: 'Gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    ItemsModel(
      sound: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'Green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemsModel(
      sound: 'sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'Red',
      image: 'assets/images/colors/color_red.png',
    ),
    ItemsModel(
      sound: 'sounds/colors/yellow.wav',
      jpName: 'Kiiro',
      enName: 'Yellow',
      image: 'assets/images/colors/yellow.png',
    ),
    ItemsModel(
      sound: 'sounds/colors/dusty_yellow.wav',
      jpName: 'Kusunda Kiiro',
      enName: 'Dusty Yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemsModel(
      sound: 'sounds/colors/white.wav',
      jpName: 'Shiro',
      enName: 'White',
      image: 'assets/images/colors/color_white.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.deepPurple[200],
          title: const Text(
            'Colors',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return ListItem(item: item[index]);
        },
      ),
    );
  }
}
