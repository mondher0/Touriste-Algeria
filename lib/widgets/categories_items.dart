import 'package:flutter/material.dart';
import 'package:tourist_algeria/screens/Category_trips_screen.dart';

class CategoryItems extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;

  CategoryItems(this.id,this.title, this.imageUrl);
  void SelectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('category-trips',arguments: 
    {
      'id':id,
      'title':title


    }
    
    
    
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl!,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4),
            ),
            padding: EdgeInsets.all(10),
            child: Center(
                child: Text(
              title!,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
    );
  }
}
