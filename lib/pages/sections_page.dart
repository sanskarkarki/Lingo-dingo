import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/core/theme/app_pallete.dart';
import 'package:flutter_lingodingo/models/sections_model.dart';
import 'package:flutter_lingodingo/pages/lesson/lessons_list_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SectionsPage extends StatefulWidget {
  const SectionsPage({super.key});

  @override
  State<SectionsPage> createState() => _SectionsPageState();
}

class _SectionsPageState extends State<SectionsPage> {
  List<SectionModel> sections = [];

  void _getSections() {
    sections = SectionModel.getSections();
  }

  @override
  Widget build(BuildContext context) {
    _getSections();
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(5),
          physics: const BouncingScrollPhysics(),
          itemCount: sections.length,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      child: LessonsListPage(
                        sectionName: sections[index].sectionName,
                        sectionDescription: sections[index].sectionDescription,
                        lessonNumber: sections[index].lessonNumber,
                        lessonName: sections[index].lessonName,
                        lessonDescription: sections[index].lessonDescription,
                      ),
                      type: PageTransitionType.bottomToTop,
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Card(
                  color: AppPallete.transparentColor,
                  // surfaceTintColor: AppPallete.transparentColor,
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: AppPallete.borderColor, width: 3),
                      borderRadius: BorderRadius.circular(20)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Image.asset(
                          sections[index].sectionImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                        child: Text(
                          sections[index].sectionName,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 20.0),
                        child: Text(
                          sections[index].sectionDescription,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: AppPallete.gradient3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
