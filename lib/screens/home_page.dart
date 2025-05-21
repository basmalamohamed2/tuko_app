import 'package:flutter/material.dart';
import 'package:tuko_app/components/category_item.dart';
import 'package:tuko_app/screens/colors_page.dart';
import 'package:tuko_app/screens/family_members_page.dart';
import 'package:tuko_app/screens/numbers_page.dart';
import 'package:tuko_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.deepPurple[500],
          title: const Center(
            child: Text(
              'Tuko',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }));
              },
              text: 'Numbers',
              color: Colors.deepPurple[400]),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }));
              },
              text: 'Family Members',
              color: Colors.deepPurple[300]),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ColorsPage();
                }));
              },
              text: 'Colors',
              color: Colors.deepPurple[200]),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              }, text: 'Phrases', color: Colors.deepPurple[100]),
        ],
      ),
    );
  }
}
