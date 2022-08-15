import 'package:flutter/material.dart';
import 'package:tourist_algeria/widgets/app_drawer.dart';

class AboutUs1 extends StatefulWidget {
  @override
  State<AboutUs1> createState() => _AboutUs1State();
}

class _AboutUs1State extends State<AboutUs1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Tourist_Algeria is an app that helps you travel in Algeria and introduces you to the best existing tourist places ',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
