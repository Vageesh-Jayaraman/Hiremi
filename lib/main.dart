import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final Map<String, String> _imagePaths = {
    'home_unselected': 'assets/bottomNavigationBar/home_unselected.png',
    'home_selected': 'assets/bottomNavigationBar/home_selected.png',
    'applies_unselected': 'assets/bottomNavigationBar/applies_unselected.png',
    'applies_selected': 'assets/bottomNavigationBar/applies_selected.png',
    'hiremi': 'assets/bottomNavigationBar/hiremi.png',
    'queries_unselected': 'assets/bottomNavigationBar/queries_unselected.png',
    'queries_selected': 'assets/bottomNavigationBar/queries_selected.png',
    'profile_unselected': 'assets/bottomNavigationBar/profile_unselected.png',
    'profile_selected': 'assets/bottomNavigationBar/profile_selected.png',
  };

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Container(
        height: 200,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),

                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
                child: BottomAppBar(
                  color: Colors.white,
                  shape: CircularNotchedRectangle(),
                  notchMargin: 20.0,
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Image.asset(_selectedIndex == 0
                              ? _imagePaths['home_selected']!
                              : _imagePaths['home_unselected']!),
                          onPressed: () => _onItemTapped(0),
                        ),
                        IconButton(

                          icon: Image.asset(_selectedIndex == 1
                              ? _imagePaths['applies_selected']!
                              : _imagePaths['applies_unselected']!),
                          onPressed: () => _onItemTapped(1),
                        ),
                        SizedBox(width: 40),
                        IconButton(
                          icon: Image.asset(_selectedIndex == 2
                              ? _imagePaths['queries_unselected']!
                              : _imagePaths['queries_unselected']!),
                          onPressed: () => _onItemTapped(2),
                        ),
                        IconButton(

                          icon: Image.asset(_selectedIndex == 3
                              ? _imagePaths['profile_selected']!
                              : _imagePaths['profile_unselected']!),
                          onPressed: () => _onItemTapped(3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 110.0,
                height: 110.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                ),
                child: Image.asset(
                  _imagePaths['hiremi']!,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
