import 'package:flutter/material.dart';
import 'package:tourist_algeria/models/trip.dart';

class TripItem extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;
  final int? duration;
  final Season? season;
  final TripType? tripType;
  

  TripItem(
      {this.id,this.title, this.imageUrl, this.duration, this.season, this.tripType});
  String? get Seasontxt {
    if (season == Season.Winter) {
      return 'winter';
    }
    if (season == Season.Autumn) {
      return 'autumn';
    }
    if (season == Season.Spring) {
      return 'spring';
    }
    if (season == Season.Summer) {
      return 'summer';
    }
  }

  String? get triptype {
    if (tripType == TripType.Activities) {
      return 'activities';
    }
    if (tripType == TripType.Exploration) {
      return 'exploration';
    }
    if (tripType == TripType.Recovery) {
      return 'recovery';
    }
    if (tripType == TripType.Therapy) {
      return 'therapy';
    }
  }

  void SelectTrip(BuildContext context) {
    Navigator.of(context)
        .pushNamed('trips-detrails', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  imageUrl!,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  height: 250,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8)
                      ],
                          stops: [
                        0.6,
                        1
                      ])),
                  child: Text(title!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: 'Schyler',
                          overflow: TextOverflow.fade,
                          fontWeight: FontWeight.bold)))
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.today,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('$duration days')
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.sunny,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(Seasontxt!)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.family_restroom,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(triptype!)
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
