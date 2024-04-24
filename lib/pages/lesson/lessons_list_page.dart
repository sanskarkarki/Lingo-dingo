import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/core/theme/app_pallete.dart';
import 'package:flutter_lingodingo/pages/lesson/lesson_detail_page.dart';
import 'package:flutter_lingodingo/pages/quiz/quiz_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class LessonsListPage extends StatefulWidget {
  final String sectionName;
  final String sectionDescription;
  final List lessonNumber;
  final List lessonName;
  final List lessonDescription;
  const LessonsListPage({
    super.key,
    required this.sectionName,
    required this.sectionDescription,
    required this.lessonNumber,
    required this.lessonName,
    required this.lessonDescription,
  });

  @override
  State<LessonsListPage> createState() => _LessonsListPageState();
}

class _LessonsListPageState extends State<LessonsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.sectionName,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.sectionDescription,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: AppPallete.gradient3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.lessonName.length,
              itemBuilder: (BuildContext context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              child: LessonDetailPage(
                                lessonNumber: widget.lessonNumber[index],
                                lessonName: widget.lessonName[index],
                                lessonDetails: widget.lessonDescription[index],
                              ),
                              type: PageTransitionType.bottomToTop,
                            ));
                      },
                      radius: 10,
                      child: Ink(
                        height: 500,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppPallete.borderColor,
                              width: 3,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.lessonNumber[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.lessonName[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppPallete.gradient3,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.lessonDescription[index],
                                textAlign: TextAlign.justify,
                                maxLines: 19,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
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
              },
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: const QuizPage(),
                        type: PageTransitionType.bottomToTop),
                  );
                },
                child: Text(
                  "Go to Quiz",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    color: AppPallete.gradient3,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
