import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/core/theme/app_pallete.dart';
import 'package:flutter_lingodingo/pages/quiz/quiz_list_page.dart';
import 'package:flutter_lingodingo/pages/sections_page.dart';
import 'package:flutter_lingodingo/pages/profile_page.dart';
import 'package:flutter_lingodingo/widgets/language_avatar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  final tabs = [
    const QuizListPage(),
    const SectionsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppPallete.transparentColor,
        elevation: 0,
        title: Text("Lingo Dingo",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: AppPallete.gradient3,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            )),
        centerTitle: true,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.electric_bolt,
              color: AppPallete.gradient3,
            ),
            Text("10",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: AppPallete.gradient3,
                  ),
                )),
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
          selectedItemColor: AppPallete.gradient3,
          unselectedItemColor: AppPallete.greyColor,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb),
              label: "Quiz",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Sections",
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
