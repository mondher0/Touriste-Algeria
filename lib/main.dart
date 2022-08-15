import 'package:flutter/material.dart';
import 'screens/Category_trips_screen.dart';
import 'screens/trip_details_screen.dart';
import 'package:tourist_algeria/screens/tabs_screen.dart';
import 'package:tourist_algeria/screens/About_us1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourist Algeria',
      theme: ThemeData(
       primarySwatch: Colors.blue,
       accentColor: Colors.amber,
       fontFamily: 'Schyler'
      ),
      home:TabScreen(),
      routes: {
        'category-screens':(context) => TabScreen(),
        'category-trips':(context) => CategoryTrips(),
        'trips-detrails':(context)=>TripDetailsScreen(),
        'about-us':(context) => AboutUs1()
        


      },
      
    

      
    );
  }
}
