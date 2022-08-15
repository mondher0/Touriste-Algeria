import 'package:flutter/material.dart';
import 'package:tourist_algeria/app_data.dart';
import 'package:tourist_algeria/widgets/app_drawer.dart';
import 'package:tourist_algeria/widgets/categories_items.dart';

class CategorieScreen extends StatelessWidget {
  const CategorieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: Categories_data.map(
              (e) => CategoryItems(e.id, e.title, e.imageUrl)).toList()),
    );
  }
}
