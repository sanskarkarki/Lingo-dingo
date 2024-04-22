import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/core/theme/app_pallete.dart';
import 'package:flutter_lingodingo/models/lessons_model.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({super.key});

  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  List<LessonsModel> lessons = [];

  void _getLessons() {
    lessons = LessonsModel.getLessons();
  }

  @override
  Widget build(BuildContext context) {
    _getLessons();
    return Scaffold(
      appBar: AppBar(title: const Text("Lessons"), elevation: 0),
      body: ListView.builder(
          padding: const EdgeInsets.all(10),
          physics: const BouncingScrollPhysics(),
          itemCount: lessons.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {},
                  radius: 10,
                  child: Ink(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppPallete.gradient1,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lesson ${lessons[index].lessonNumber}",
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            lessons[index].lessonName,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          }),
    );
  }
}
