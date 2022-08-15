import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Text(
            'Your Tourist Guid',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(
            Icons.card_travel,
            size: 30,
            color: Colors.blue,
          ),
          title: Text(
            'Trips',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('category-screens');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.filter_list,
            size: 30,
            color: Colors.blue,
          ),
          title: Text(
            'About Us',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('about-us');
          },
        ),
      ]),
    );
  }
}
