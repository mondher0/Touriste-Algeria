import 'package:flutter/material.dart';
import 'package:tourist_algeria/widgets/app_drawer.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'Tourist_Algeria is an app that helps you travel in Algeria and introduces you to the best existing tourist places ',
          style: TextStyle(fontSize: 24),
        ),
      )),
      drawer: AppDrawer(),
    );
  }
}
