import 'package:flutter/material.dart';
import 'package:tourist_algeria/models/trip.dart';
import 'package:tourist_algeria/app_data.dart';

class TripDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TripId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedTrip =
        Trips_data.firstWhere((element) => element.id == TripId);

    return Scaffold(
      appBar: AppBar(title: Text('${selectedTrip.title!}')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedTrip.imageUrl!,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Activities',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              alignment: Alignment.topLeft,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: ListView.builder(
                  itemCount: selectedTrip.activities!.length,
                  itemBuilder: (ctx, index) => Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(selectedTrip.activities![index]),
                        ),
                      )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Daily Program',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              alignment: Alignment.topLeft,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: ListView.builder(
                  itemCount: selectedTrip.program!.length,
                  itemBuilder: (ctx, index) => Column(children: <Widget>[
                        Divider(),
                        ListTile(
                          leading: CircleAvatar(
                            child: Text('day${index + 1}'),
                            backgroundColor: Colors.amber,
                          ),
                          title: Text(selectedTrip.program![index]),
                        ),
                      ])),
            ),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
