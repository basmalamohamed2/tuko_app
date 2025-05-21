import 'package:flutter/material.dart';
import 'package:tuko_app/components/item_info.dart';
import 'package:tuko_app/models/items.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item});
  final ItemsModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.purple[100],
      child: Row(
        children: [
          Container(
            color: Colors.purple[50],
            child: Image.asset(item.image!),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemInfo(item: item),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




