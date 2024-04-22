import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/core/theme/app_pallete.dart';
import 'package:flutter_lingodingo/pages/home_page.dart';
import 'package:flutter_lingodingo/pages/notifications_page.dart';
import 'package:flutter_lingodingo/pages/profile_page.dart';
import 'package:flutter_lingodingo/widgets/language_avatar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 1;
  final tabs = [
    const NotificationsPage(),
    HomePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Lingo Dingo",
          style: TextStyle(
            color: AppPallete.gradient1,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.electric_bolt,
              color: AppPallete.gradient3,
            ),
            Text(
              "10",
              style: TextStyle(
                color: AppPallete.gradient3,
              ),
            ),
          ],
        ),
        actions: const [
          LanguageAvatar(),
        ],
      ),
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: AppPallete.backgroundColor,
          selectedItemColor: AppPallete.gradient1,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
