import 'package:flutter/material.dart';
import 'package:tourist_algeria/app_data.dart';
import 'package:tourist_algeria/widgets/trip_item.dart';
class CategoryTrips extends StatelessWidget {
  // final String CategoryId;
  // final String CategoryTitle;

  // CategoryTrips(this.CategoryId, this.CategoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map ;
    final categoryId =routeArgument ['id'];
    final CategoryTitle =routeArgument ['title'];
    final filtredTrips =Trips_data.where((element){
      return element.categories!.contains(categoryId);


    }).toList();
    return Scaffold(
      appBar: AppBar(title:Text(CategoryTitle.toString())),
      body: ListView.builder(
        itemCount: filtredTrips.length, 
        itemBuilder: (context, index) {
        return TripItem(
          id: filtredTrips[index].id,
          title: filtredTrips[index].title,
          imageUrl: filtredTrips[index].imageUrl,
          duration: filtredTrips[index].duration,
          tripType: filtredTrips[index].tripType,
          season:filtredTrips[index].season



        ) ;
      },
      )
      );
    
  }
}
