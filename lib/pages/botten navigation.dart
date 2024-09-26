// import 'package:flutter/material.dart';
// import 'package:untitled/pages/explore_page.dart';
// import 'package:untitled/pages/home_page.dart';
// import 'package:untitled/pages/notification_page.dart';
// import 'package:untitled/pages/profile_page.dart';
// import 'package:untitled/pages/settings_page.dart';
//
// class BottomNavigationBarExample extends StatefulWidget {
//   @override
//   _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();
// }
//
// class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
//   int _currentIndex = 0;
//
//   final List<Widget> _screens = [
//     HomePage(),
//     ExplorePage(),
//     NotificationPage(),
//     ProfilePage(),
//     SettingsPage(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _currentIndex,
//         onTap: _onItemTapped,
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.blueAccent,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         elevation: 10,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, size: 30),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore, size: 30),
//             label: 'Explore',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications, size: 30),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, size: 30),
//             label: 'Profile',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings, size: 30),
//             label: 'Settings',
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jobhunt/pages/explore%20page.dart';
import 'package:jobhunt/pages/home%20page.dart';
import 'package:jobhunt/pages/notification.dart';
import 'package:jobhunt/pages/profile.dart';
import 'package:jobhunt/pages/setting.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<Widget> list = [
    HomePage(),
    ExplorePage(),
    NotificationPage(),
    ProfilePage(
      username: '',
      email: '',
      contact: '',
    ),
    SettingsPage(),
  ];
  List<Icon> allItems = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.notifications),
    Icon(Icons.person),
    Icon(Icons.settings),
  ];
  int _currentIndex = 0;
  bool _showNavBar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is UserScrollNotification) {
            if (scrollNotification.direction == ScrollDirection.forward) {
              setState(() {
                _showNavBar = true;
              });
            } else if (scrollNotification.direction ==
                ScrollDirection.reverse) {
              setState(() {
                _showNavBar = false;
              });
            }
          }
          return true;
        },
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: list[_currentIndex],
          ),
        ),
      ),
      bottomNavigationBar: _showNavBar
          ? CurvedNavigationBar(
        index: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allItems,
      )
          : null,
    );
  }
}
