class LessonsModel {
  final String lessonNumber;
  final String lessonName;

  LessonsModel({
    required this.lessonNumber,
    required this.lessonName,
  });

  static List<LessonsModel> getLessons() {
    List<LessonsModel> lessons = [];

    lessons.add(
      LessonsModel(
        lessonName: "Lessson One",
        lessonNumber: "1",
      ),
    );
    lessons.add(
      LessonsModel(
        lessonName: "Lessson Two",
        lessonNumber: "2",
      ),
    );
    lessons.add(
      LessonsModel(
        lessonName: "Lessson Three",
        lessonNumber: "3",
      ),
    );
    lessons.add(
      LessonsModel(
        lessonName: "Lessson Four",
        lessonNumber: "4",
      ),
    );
    lessons.add(
      LessonsModel(
        lessonName: "Lessson Five",
        lessonNumber: "5",
      ),
    );
    lessons.add(
      LessonsModel(
        lessonName: "Lessson Six",
        lessonNumber: "6",
      ),
    );
    lessons.add(
      LessonsModel(
        lessonName: "Lessson Seven",
        lessonNumber: "7",
      ),
    );

    return lessons;
  }
}
