import 'package:flutter/material.dart';
import 'package:travelnatureui/navpages/social_page.dart';

import '../screens/main_screen.dart';
import 'detail_page.dart';
import 'home_page.dart';
import 'my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    List pages = [
      HonePage(),
      SocialPage(),
      MainScreen(),
      DetailPage(),
      MyPage(),
    ];
    void onTab(int index){
      setState(() {
        currentIndex = index;
      });
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(label: "Home",icon:Icon(Icons.home)),
          BottomNavigationBarItem(label: "Sol",icon:Icon(Icons.favorite_border)),
          BottomNavigationBarItem(label: "Main",icon:Icon(Icons.add_circle_outline)),
          BottomNavigationBarItem(label: "Detail",icon:Icon(Icons.notifications_none)),
          BottomNavigationBarItem(label: "My",icon:Icon(Icons.perm_identity)),
        ],
      ),
    );
  }
}
