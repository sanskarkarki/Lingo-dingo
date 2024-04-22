import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/pages/lessons_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LessonsPage(),
              ),
            );
          },
          child: const Text("Lessons")),
    ));
  }
}
