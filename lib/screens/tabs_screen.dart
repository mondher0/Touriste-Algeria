import 'package:flutter/material.dart';
import 'package:tourist_algeria/screens/About_us.dart';
import 'package:tourist_algeria/screens/Categorie_Screens.dart';
import 'package:tourist_algeria/widgets/app_drawer.dart';

class TabScreen extends StatefulWidget {
  

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  void selectScreen(int index) {
    setState(() {
      selectedscreen = index;
    });
  }

  int selectedscreen = 0;
  late List<Map<String, Object>>   screens = [
      {'screen': CategorieScreen(), 'title': 'Tourist Guid'},
      {
        'screen': AboutUs(),
        'title': 'About Us'
      }
    ];
  @override
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          screens[selectedscreen]['title'] as String,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: AppDrawer(),
      body: screens[selectedscreen]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectScreen,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        currentIndex: selectedscreen,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'About Us'),
        ],
      ),
    );
  }
}
